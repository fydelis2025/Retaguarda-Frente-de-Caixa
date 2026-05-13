using Microsoft.Win32.SafeHandles;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EZWeb;
using System.Drawing.Printing;
public partial class _Etiquetas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Realsoft_Parametro.UsuarioLogado == null)
            {
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Error", "alert('TENTATIVA DE ABERTURA DO SISTEMA VIOLADO')",true);
                string retorno = Realsoft_Criptografia.Encrypt("TENTATIVA VIOLADO", Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
                Session["ERROR"] = retorno;
                Response.Redirect("Realsoft_Error.aspx?ret=" + "");
            }
            else
            {
                  String pkInstalledPrinters = "";
                  for(int i = 0; i <= PrinterSettings.InstalledPrinters.Count - 1; i++)
                  {
                      pkInstalledPrinters = PrinterSettings.InstalledPrinters[i];
                      ListBox1.Items.Add(pkInstalledPrinters);
                  }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtImprimir_Click(object sender, EventArgs e)
    {
        try
        {
            if (RdLista.SelectedItem.Value == "ARGOX")
            {
                StreamWriter arquivo = new StreamWriter("Etiq.txt");

                arquivo.WriteLine('\u0002' + "L" + '\r');
                //arquivo.WriteLine("191300100550000" + TxMercadoria.Text + '\r');
                arquivo.WriteLine("191300100550000" + _mercadoria.Descricao + '\r');
                //arquivo.WriteLine("1F1102500200000" + TxCodigo.Text + '\r');
                arquivo.WriteLine("1F1102500200000" + _mercadoria.EAN + '\r');
                //arquivo.WriteLine("131200500010160R$ " + TxValor.Text + '\r');
                arquivo.WriteLine("131200500010160R$ " + _mercadoria.PrecoVenda.ToString() + '\r');
                arquivo.WriteLine("111100000010050Super Oferta" + '\r');
                arquivo.WriteLine('\u0002' + "E");

                arquivo.Close();

                
                //PrintDialog pd = new PrintDialog();

                //pd.PrinterSettings = new PrinterSettings();
                //pd.ShowDialog();

                //if (pd.PrinterSettings.IsValid)
                //{
                //    RawPrinterHelper.SendFileToPrinter(pd.PrinterSettings.PrinterName, "Etiq.txt");
                //}
            }
            else if (RdLista.SelectedItem.Value == "ZEBRA")
            {
                string command = "";

                command += "^XA";
                command += "^CF0,40";
                command += "^FO80,10";
                //command += "^FD" + TxMercadoria.Text + "^FS";
                command += "^FD" + _mercadoria.Descricao + "^FS";
                command += "^FO40,65";
                command += "^BY3";
                command += "^B2N,70,Y,N,N";
                //command += "^FD" + TxCodigo.Text + "^FS";
                command += "^FD" + _mercadoria.EAN + "^FS";
                command += "^CF0,110";
                command += "^FO450,70";
                //command += "^FD" + TxValor.Text + "^FS";
                command += "^FD" + _mercadoria.PrecoVenda.ToString() + "^FS";
                command += "^XZ";

                // Create a buffer with the command
                Byte[] buffer = new byte[command.Length];
                buffer = System.Text.Encoding.ASCII.GetBytes(command);
                // Use the CreateFile external func to connect to the LPT1 port
                SafeFileHandle printer = Realsoft_Gondola.CreateFile("PORTAPARALELA" + ":", FileAccess.ReadWrite, 0, IntPtr.Zero, FileMode.Open, 0, IntPtr.Zero);
                // Aqui verifico se a impressora é válida
                if (printer.IsInvalid == true)
                {
                    return;
                }

                // Open the filestream to the lpt1 port and send the command
                FileStream lpt1 = new FileStream(printer, FileAccess.ReadWrite);
                lpt1.Write(buffer, 0, buffer.Length);
                // Close the FileStream connection
                lpt1.Close();
            }
            else if (RdLista.SelectedItem.Value == "TLP 2844")
            {
                //PrintDialog pd = new PrintDialog();

                //pd.PrinterSettings = new PrinterSettings();
                //pd.ShowDialog();

                for (int i = 0; i < DgItem.Rows.Count; i++)
                {
                    StreamWriter arquivo = new StreamWriter("TLP2844.txt");

                    arquivo.WriteLine("" + "Q203,23" + "");
                    //arquivo.WriteLine("Q203,23");
                    //arquivo.WriteLine("q831");
                    arquivo.WriteLine("" + "rN" + "");
                    //arquivo.WriteLine("rN");
                    arquivo.WriteLine("" + "S4" + "");
                    //arquivo.WriteLine("S4");
                    arquivo.WriteLine("" + "D7" + "");
                    //arquivo.WriteLine("D7");
                    arquivo.WriteLine("" + "ZT" + "");
                    //arquivo.WriteLine("ZT");
                    arquivo.WriteLine("" + "JB" + "");
                    //arquivo.WriteLine("JB");
                    arquivo.WriteLine("" + "OD" + "");
                    //arquivo.WriteLine("OD");
                    //arquivo.WriteLine("R0,0");
                    arquivo.WriteLine("" + "N" + "");
                    //arquivo.WriteLine("N");
                    arquivo.WriteLine("" + "A220,70,2,5,1,1,N," + "\"" + _mercadoria.PrecoVenda.ToString() + "\""); //Preço
                    //arquivo.WriteLine("A220,70,2,5,1,1,N,\"" + DgLista.Rows[i].Cells[2].Value + "\""); //Preço
                    //arquivo.WriteLine("A320,70,2,4,1,1,N,\"R$\"");
                    arquivo.WriteLine("" + "A320,70,2,4,1,1,N," + "\"" + "R$\"");
                    //arquivo.WriteLine("A320,21,2,3,1,1,N,\"Mix Oliveira\"");

                    string Descricao = _mercadoria.Descricao;
                    if (Descricao.Trim().Length > 22)
                        Descricao = Descricao.Substring(0, 21);

                    arquivo.WriteLine("" + "A830,150,2,5,1,1,N," + "\"" + Descricao + "\"");
                    //arquivo.WriteLine("A830,150,2,5,1,1,N,\"" + Descricao + "\""); //Descrição
                    arquivo.WriteLine("" + "A680,93,2,2,1,1,N," + "\"" + _mercadoria.codigo + "\""); //Codigo
                    //arquivo.WriteLine("A680,93,2,2,1,1,N,\"" + DgLista.Rows[i].Cells[0].Value + "\""); //Codigo
                    arquivo.WriteLine("" + "B360,5,0,3,2,5,72,N," + "\"" + _mercadoria.EAN + "\"");//CODIGOBARRA 
                    //arquivo.WriteLine("B360,5,0,3,2,5,72,N,\"" + DgLista.Rows[i].Cells[0].Value + "\"");//CODIGOBARRA 
                    arquivo.WriteLine("" + "P1" + "");
                    //arquivo.WriteLine("P1");

                    arquivo.Close();

                   //Realsoft_Gondola.SendFileToPrinter(pd.PrinterSettings.PrinterName, "TLP2844.txt");
                }
            }
            else if (RdLista.SelectedItem.Value == "COMUM")
            {

            }
            else if (RdLista.SelectedItem.Value == "GODEX")
            {
                String porta = Realsoft_Consultas.Consultar_PortaComunicacaoGondola();

                if (!String.IsNullOrEmpty(porta))
                {
                    EZWeb.GodexPrinter pr = new GodexPrinter();
                    pr.openport(porta);

                    pr.beginjob(int.Parse(_mercadoria.Descricao), int.Parse(_mercadoria.EAN), int.Parse(_mercadoria._PrecoVenda.ToString()), 2, 3, 3);

                    pr.sendcommand("^L");
                    pr.sendcommand("E");
                    pr.endjob();
                    pr.closeport();
                }
                else
                {
                    throw new HttpException("FAVOR INFORMAR A PORTA DE COMUNICAÇÃO");
                }
                
            }
            else
            {
                throw new HttpException("IMPRESSORA NÃO CADASTRADA FAVOR INFORME AO SUPORTE");
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        } 
    }

    private Realsoft_Mercadorias _mercadoria = new Realsoft_Mercadorias();
    protected void BtBuscar_Click(object sender, EventArgs e)
    {
        try
        {
            _mercadoria = Realsoft_Consultas.Consultar_MercadoriasEtiquetas(TxCodigoBarras.Text);

            if (!String.IsNullOrEmpty(TxCodigoBarras.Text))
            {
                if (_mercadoria != null)
                {
                    TxCodigoBarras0.Text = _mercadoria.Descricao;

                    Realsoft_Insere.Insere_EtiquetaGondola(_mercadoria);

                    System.Threading.Thread.Sleep(2000);

                    ETIQUETAS.ConnectionString = Realsoft_Parametro.parametroconexao;
                    ETIQUETAS.ProviderName = Realsoft_Parametro.tipoconexao;
                    ETIQUETAS.SelectCommand = "SELECT CODIGO, DESCRICAO , QUANTIDADE, PRECO FROM REALSOFT_ETIQUETASGONDOLA";

                }
                else
                {
                    throw new HttpException("MERCADORIA NÃO ENCONTRADA");
                }
                
            }
            else
            {
                TxCodigoBarras.BorderColor = Color.Yellow;
                TxCodigoBarras.Focus();
                throw new HttpException("POR FAVOR INFORME O CODIGO DE BARRAS");
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}