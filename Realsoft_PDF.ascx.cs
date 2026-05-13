using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
public partial class Realsoft_PDF : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    public class Realsoft_PF : IDisposable
    {
        private int iPGX = 595; //Largura da Página do padrão A4
        private int iPGY = 841; //Altura da Página do Padrão A4
        private string sAutor; // Autor do documento
        private string sTitulo;// Título do documento
        private string XREF = ""; //Armazena a criação da Tabela Cross-Reference
        private List<string> ConteudoPagina = new List<string>();//Armazenará o conteúdo de cada página do documento
        private List<byte[]> XObjetos = new List<byte[]>();//Onde serão armazenadas as imagens JPG.
        private StringBuilder sbAPDF = new StringBuilder();//Para gerar o documento

        public const byte FTimes = 1;
        public const byte FHelvetia = 5;
        public const byte FCourier = 9;
        public const byte FSymbol = 13;
        public const byte FZapfDingbats = 14;
        public const byte SNormal = 0;
        public const byte SNegrito = 1;
        public const byte SItalico = 2;
        public const byte SNegritoItalico = 3;
        public const byte BarcodeFont = 20;

        public int PGLargura
        { //Propriedade Largura da Página
            get { return iPGX; }
            set { iPGX = value; }
        }
        public int PGAltura
        { //Propriedade Altura da Página
            get { return iPGY; }
            set { iPGY = value; }
        }
        public String Autor
        { //Propriedade Autor do documento
            get { return sAutor; }
            set { sAutor = value; }
        }
        public String Titulo
        { //Propriedade Título do Documento
            get { return sTitulo; }
            set { sTitulo = value; }
        }

        private byte[] unirB(byte[] a, byte[] b)
        {//Faz a união de dois arrays do tipo byte
            byte[] resu = new byte[a.Length + b.Length];
            Array.Copy(a, resu, a.Length);
            Array.Copy(b, 0, resu, a.Length, b.Length);
            return resu;
        }
        private string SHex(string sTexto)
        { // Retorna uma string, com sTexto representada em forma Hexadecimal
            string resu = "";
            for (int i = 0; i <= sTexto.Length - 1; i++)
            {
                byte letra = (byte)Char.Parse(sTexto.Substring(i, 1));
                resu += String.Format("{0:X}", letra);
            }
            return resu;
        }
        private string converteCor(Color cCor)
        { //Converte uma cor para o formato de cor exigido pelo formato PDF
            string scor = "";
            double ncorR = cCor.R;
            double ncorG = cCor.G;
            double ncorB = cCor.B;
            ncorR = ncorR / 255;
            ncorG = ncorG / 255;
            ncorB = ncorB / 255;
            scor = ncorR.ToString("n").Substring(0, 3) + " " + ncorG.ToString("n").Substring(0, 3) + " " + ncorB.ToString("n").Substring(0, 3);
            scor = scor.Replace(",", ".");
            return scor;
        }
        private byte[] STB(string ST)
        { //Converte uma string em um array de byte
            byte[] resu = new byte[(ST.Length)];
            char[] ca = ST.ToCharArray();
            for (int x = 0; x < ca.Length; x++)
            {
                resu[x] = (byte)ca[x];
            }
            return resu;
        }
        private byte[] CarregarArquivo(string ArqNome)
        { //Retorna um Array de byte com o arquivo
            try
            {
                FileStream file = new FileStream(@ArqNome, FileMode.Open, FileAccess.Read);
                byte[] bDado = new byte[file.Length];
                file.Read(bDado, 0, bDado.Length);
                file.Close();
                return bDado;
            }
            catch (IOException ioEx)
            {
                throw new IOException("Impossível carregar o arquivo:" + ArqNome, ioEx);
            }
        }
        private void AdXREF(int pos)
        { //Arquiva o valor do parâmetro pos para formar a Tabela CROSS-Reference
            string STmp = "00000000000" + pos.ToString() + " 00000 n";
            XREF += STmp.Substring(STmp.Length - 18, 18) + "\n\r";
        }



        public int AdicionarPG()
        { // Adiciona uma página em Branco/Vazia ao Documento
            ConteudoPagina.Add("");
            return (TotalPaginas() - 1);
        }
        public int TotalPaginas()
        {// Retorna a quantidade total de páginas no Documento.
            return ConteudoPagina.Count;
        }
        public void DesenharLinha(byte nPagina, int iX, int iY, int fX, int fY, byte Espessura, string Plotagem, Color cCor)
        {
            if (Espessura < 1)
            {
                Espessura = 1;
            }
            if (Plotagem.Length < 1)
            {
                Plotagem = "[]";
            }
            ConteudoPagina[nPagina] = ConteudoPagina[nPagina].ToString() + Espessura.ToString() + " w\n" + Plotagem + " 0 d\n" + converteCor(cCor) + " RG\n" + iX.ToString() + " " + ((int)(PGAltura - iY)).ToString() + " m\n" + fX.ToString() + " " + ((int)(PGAltura - fY)).ToString() + " l\nS\n";
        }
        public void DesenharLinha(byte nPagina, int iX, int iY, int fX, int fY, byte Espessura)
        { //Desenha a linha com menos parâmetros
            DesenharLinha(nPagina, iX, iY, fX, fY, Espessura, "", Color.Black);
        }


        public void DesenharRetangulo(byte nPagina, int x, int y, int iLarg, int iAltura, byte Espessura, string Plotagem, Color corBorda, Color corPreen)
        {
            if (Espessura < 1)
            { Espessura = 1; }
            if (Plotagem.Length < 1)
            { Plotagem = "[]"; }
            ConteudoPagina[nPagina] = ConteudoPagina[nPagina].ToString() + Espessura.ToString() + " w\n" + Plotagem + " 0 d\n" + converteCor(corBorda) + " RG\n" + converteCor(corPreen) + " rg\n" + x.ToString() + " " + ((int)(PGAltura - y - iAltura)).ToString() + " " + iLarg.ToString() + " " + iAltura.ToString() + " re\nB\n";
        }
        public void DesenharTexto(byte nPagina, int x, int y, string sTxt, byte bTam, byte FFont, byte SEstilo, Color cCor)
        {
            int bfont = 0;
            if ((FFont == FSymbol) || (FFont == FZapfDingbats))
            {
                bfont = FFont;
            }
            else
            {
                bfont = FFont + SEstilo;
            }
            ConteudoPagina[nPagina] = ConteudoPagina[nPagina].ToString() + converteCor(cCor) + " rg\nBT /FT" + bfont.ToString() + " " + bTam.ToString() + " Tf\n" + x.ToString() + " " + ((int)(PGAltura - y - bTam)).ToString() + " TD\n <" + SHex(sTxt) + "> Tj\nET\n";
        }
        public void DesenharTexto(byte nPagina, int x, int y, string sTxt, byte bTam)
        {
            DesenharTexto(nPagina, x, y, sTxt, bTam, FHelvetia, SNormal, Color.Black);
        }


        public void InserirIMG(byte nPagina, string CaminhoIMG, int x, int y, int larguraIMG, int alturaIMG, int zoom)
        {
            try
            {
                byte[] dados;
                dados = CarregarArquivo(CaminhoIMG);
                string st = " 0 obj<< /Type/XObject/Subtype/Image/ColorSpace/DeviceRGB/BitsPerComponent 8/Width " + larguraIMG.ToString() + "/Height " + alturaIMG.ToString() + "/Filter/DCTDecode/Length " + dados.Length.ToString() + ">>\nstream\n";
                XObjetos.Add(unirB(unirB(STB(st), dados), STB("\nendstream\nendobj\n")));
                double tamExibL = (larguraIMG * (zoom / 100));
                double tamExibA = (alturaIMG * (zoom / 100));
                ConteudoPagina[nPagina] = ConteudoPagina[nPagina].ToString() + "q\n" + tamExibL.ToString() + " 0 0 " + tamExibA.ToString() + " " + x.ToString() + " " + ((int)(PGAltura - y)).ToString() + " cm\n/X" + XObjetos.Count.ToString() + " Do\nQ\n";
            }
            catch (Exception Exec)
            {
                DesenharTexto(nPagina, x, y, Exec.Message, 10);
            }
        }


        public void GerarArquivo(string sNArq)
        {
            DateTime dt = DateTime.Now; //Para registrar no documento a data corrente.
            sbAPDF.AppendLine("%PDF-1.4");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("1 0 obj<</Title <" + SHex(sTitulo) + ">/Author <" + SHex(sAutor) + ">/Producer <" + SHex("adielfontes@adielfontes.com.br/Realsoft") + ">/CreationDate (D:" + dt.ToString("yyyyMMddHHmmss") + ")>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("2 0 obj<</Type/Font/Subtype/Type1/BaseFont/Times-Roman/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("3 0 obj<</Type/Font/Subtype/Type1/BaseFont/Times-Bold/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("4 0 obj<</Type/Font/Subtype/Type1/BaseFont/Times-Italic/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("5 0 obj<</Type/Font/Subtype/Type1/BaseFont/Times-BoldItalic/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("6 0 obj<</Type/Font/Subtype/Type1/BaseFont/Helvetica/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("7 0 obj<</Type/Font/Subtype/Type1/BaseFont/Helvetica-Bold/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("8 0 obj<</Type/Font/Subtype/Type1/BaseFont/Helvetica-Oblique/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("9 0 obj<</Type/Font/Subtype/Type1/BaseFont/Helvetica-BoldOblique/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("10 0 obj<</Type/Font/Subtype/Type1/BaseFont/Courier/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("11 0 obj<</Type/Font/Subtype/Type1/BaseFont/Courier-Bold/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("12 0 obj<</Type/Font/Subtype/Type1/BaseFont/Courier-Oblique/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("13 0 obj<</Type/Font/Subtype/Type1/BaseFont/Courier-BoldOblique/Encoding/WinAnsiEncoding>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("14 0 obj<</Type/Font/Subtype/Type1/BaseFont/Symbol>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("15 0 obj<</Type/Font/Subtype/Type1/BaseFont/ZapfDingbats>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("16 0 obj<</Type/Outlines/Count 0>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("17 0 obj<</Type/Catalog/Pages 19 0 R>>endobj");//Objeto Root/inicial do Documento
            int nConteudo; // ID do Objeto Página (Page) 
            int conPG = 0;
            string pages = "";
            for (nConteudo = 20; nConteudo < (20 + (ConteudoPagina.Count * 2)); nConteudo += 2)
            {// Cria os Objetos de páginas (Page) e seus Objetos de conteúdo a partir de ConteudoPagina[]
                pages += nConteudo.ToString() + " 0 R\n";//Armazena os Ids das páginas para ser colocado no objeto pai Pages
                int npgs = nConteudo + 1;// ID para criar o objeto que terá o conteúdo da página
                AdXREF(sbAPDF.Length);
                sbAPDF.AppendLine(nConteudo.ToString() + " 0 obj<</Type/Page/Contents " + npgs.ToString() + " 0 R/Parent 19 0 R/Resources 18 0 R/MediaBox [0 0 " + PGLargura.ToString() + " " + PGAltura.ToString() + "]>>endobj");
                AdXREF(sbAPDF.Length);
                sbAPDF.AppendLine(npgs.ToString() + " 0 obj<</Length " + ConteudoPagina[conPG].ToString().Length.ToString() + ">>\nstream");
                sbAPDF.AppendLine(ConteudoPagina[conPG].ToString());//conteúdo da página
                sbAPDF.AppendLine("endstream\nendobj");
                conPG += 1;
            }
            AdXREF(sbAPDF.Length);
            //Cria o objeto Pages, vinculando a todos os objetos Page como filho
            sbAPDF.AppendLine("19 0 obj<</Type/Pages/Count " + ConteudoPagina.Count.ToString() + "/Kids [" + pages + "]>>endobj");
            AdXREF(sbAPDF.Length);
            sbAPDF.AppendLine("18 0 obj<</ProcSet [/PDF/Text/ImageC]/XObject <<");//Objeto de Recursos do Documento
            for (int y = 1; y <= XObjetos.Count; y++)
            {//Cria o nome ou alias para as imagens vinculando diretamente ao objeto de Imagem
                sbAPDF.AppendLine("/X" + y.ToString() + " " + ((int)(nConteudo + y - 1)).ToString() + " 0 R");
            }
            sbAPDF.AppendLine(">>/Font <</FT1 2 0 R");//Cria o nome ou alias para as fontes vinculando ao respectivo objeto
            sbAPDF.AppendLine("/FT2 3 0 R");
            sbAPDF.AppendLine("/FT3 4 0 R");
            sbAPDF.AppendLine("/FT4 5 0 R");
            sbAPDF.AppendLine("/FT5 6 0 R");
            sbAPDF.AppendLine("/FT6 7 0 R");
            sbAPDF.AppendLine("/FT7 8 0 R");
            sbAPDF.AppendLine("/FT8 9 0 R");
            sbAPDF.AppendLine("/FT9 10 0 R");
            sbAPDF.AppendLine("/FT10 11 0 R");
            sbAPDF.AppendLine("/FT11 12 0 R");
            sbAPDF.AppendLine("/FT12 13 0 R");
            sbAPDF.AppendLine("/FT13 14 0 R");
            sbAPDF.AppendLine("/FT14 15 0 R >>>>endobj");
            AdXREF(sbAPDF.Length);

            XREF = "xref 0 " + ((int)(nConteudo + XObjetos.Count - 1)).ToString() + "\n\r" + XREF;//Quantidade de Objetos no documento (Início da Tabela Cross-Reference)
            XREF += "trailer<</Size " + ((int)(nConteudo + XObjetos.Count - 1)).ToString() + "/Root 17 0 R/Info 1 0 R>>\n\r startxref ";

            byte[] gravador = STB(sbAPDF.ToString());
            conPG = gravador.Length; //Reutilizamos a variável para armazenar a quantidade de bytes do início do arquivo até a Tabela Cross-Reference
            try
            {
                FileStream arq = new FileStream(@sNArq, FileMode.Create, FileAccess.Write);
                arq.Write(gravador, 0, gravador.Length);//Inicia a gravação em arquivo
                for (int y = 0; y < XObjetos.Count; y++)
                {//Loop para gravar o objeto Imagem
                    byte[] b = STB(((int)(nConteudo + y)).ToString());//Gera o ID do objeto Imagem
                    arq.Write(b, 0, b.Length);//Grava o ID do objeto Imagem
                    arq.Write(XObjetos[y], 0, XObjetos[y].Length);//Grava o objeto Imagem
                    conPG += XObjetos[y].Length;
                    if (y < XObjetos.Count - 1)
                    {
                        AdXREF(sbAPDF.Length + XObjetos[y].Length + b.Length);
                    }
                }
                XREF += ((int)(conPG + XREF.Length)).ToString() + "\n\r%%EOF";// Fim de Arquivo
                arq.Write(STB(XREF.ToString()), 0, XREF.Length);
                arq.Flush();
                arq.Close();
            }
            catch (IOException IOEx)
            {
                throw new Exception("Realsoft_PDF não pode gerar o arquivo:" + sNArq + "\n" + IOEx.Message, IOEx);
            }
        }


        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                ConteudoPagina = null;
                XObjetos = null;
                sbAPDF = null;
                XREF = null;
            }
        }

    }
}