using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using System.Xml;


public partial class _Default : System.Web.UI.Page
{
    Realsoft_Login _Logon = new Realsoft_Login();
    HttpCookie _cookie = new HttpCookie("RealsoftWEB");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            
                HttpCookie _coo = Request.Cookies["USERNAME"];
                HttpCookie _cript = Request.Cookies["CRIPTOGRAFIA"];

                if (_coo == null)
                {
                    imgseguranca.ImageUrl = "Realsoft_Seguranca.aspx";
                }
                else
                {
                    if (_cript != null)
                    {
                        Realsoft_Parametro.parametroconexao = Realsoft_Criptografia.Decrypt(Server.HtmlEncode(_cript.Value), Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
                    }

                    Realsoft_Parametro.UsuarioLogado = Server.HtmlEncode(_coo.Value);

                    Label1.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = false;
                    TxLogin.Visible = false;
                    TxSenha.Visible = false;
                    TxCaptcha.Visible = false;
                    imgseguranca.Visible = false;
                    BtAcessar.Visible = false;
                    Label4.Visible = false;
                    ImgAcesso.Visible = false;
                    PHistorico.Visible = true;
                    LbFilial.Visible = true;
                    Panel1.Visible = true;


                    int total = Realsoft_Consultas.Consultar_TotalBoletoVencidos();

                    if (total != 0)
                    {
                        ImgAtencaoVencidos.Visible = true;
                        LbTotalVencimento.Visible = true;
                        LbTotalVencidos.Visible = true;
                        LbTotalVencidos.Text = total.ToString();
                        BtVerificarBoletos.Visible = true;
                    }
                    else
                    {
                        ImgAtencaoVencidos.Visible = false;
                        LbTotalVencimento.Visible = false;
                        LbTotalVencidos.Visible = false;
                        BtVerificarBoletos.Visible = false;
                        LbTotalVencidos.Text = total.ToString();
                    }

                    ContasPagar.ConnectionString = Realsoft_Parametro.parametroconexao;
                    ContasPagar.ProviderName = Realsoft_Parametro.tipoconexao;
                    ContasPagar.SelectCommand = Consultas.RSFx00;
                    LbPagar.Text = "NÃO EXISTEM PARCELAS EM ABERTO";


                }
            
        }
        catch (Exception ex)
        {
            string retorno = Realsoft_Criptografia.Encrypt(ex.Message, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            Session["ERROR"] = retorno;
            Response.Redirect("Realsoft_Error.aspx?ret=" + retorno);
        }
        
    }

    string retornoxml;
    protected void BtAcessar_Click(object sender, EventArgs e)
    {
        try
        {            
            if (TxLogin.Text.Equals(""))
            {
                LbStatus.Text = "Login ou senha incorreto!!!";
                return;
            }

            Realsoft_Parametro._descriptografado = Realsoft_Criptografia.Encrypt(TxSenha.Text, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);

            _Logon = Realsoft_Consultas.Consultar_Usuarios(TxLogin.Text, Realsoft_Parametro._descriptografado);
            
            Response.Cookies["USERNAME"].Value = TxLogin.Text;
            Response.Cookies["USERNAME"].Expires = DateTime.Now.AddDays(1);

            _cookie.Value = DateTime.Now.ToString();
            _cookie.Expires = DateTime.Now.AddDays(1);
            _cookie.Path = "/Aplicacao";
            Response.Cookies.Add(_cookie);

            if (_Logon == null)
            {
                LbStatus.Text = "Login ou senha incorreto, verifique!!!";
                return;
            }
            else
            {
                if (TxCaptcha.Text != this.Session["realsoft_seguranca"].ToString())
                {
                    LbStatus.Text = "Chave de segurança inválido, favor verifique!!!";
                    return;
                }
                else
                {
                    Realsoft_Parametro.UsuarioLogado = TxLogin.Text;
                    Label1.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = false;
                    TxLogin.Visible = false;
                    TxSenha.Visible = false;
                    TxCaptcha.Visible = false;
                    imgseguranca.Visible = false;
                    BtAcessar.Visible = false;
                    Label4.Visible = false;
                    ImgAcesso.Visible = false;
                    PHistorico.Visible = true;
                    Response.AppendHeader("Refresh", "1");

                    //.Visible = true;

                    try
                    {

                        if (File.Exists(Server.MapPath("~/Licenca.xml")))
                        {

                            string caminho = Server.MapPath("~/Licenca.xml");

                            String retornocaminho = caminho.Replace("Licenca.xml", "");

                            String[] Licenca = Directory.GetFiles(retornocaminho, "Licenca.xml");

                            DataTable xml = new DataTable();
                            for (int i = 0; i < Licenca.Length; i++)
                            {
                                if (Licenca[i].LastIndexOf(".xml") > -1)
                                {
                                    XmlNode xmlDados = null;
                                    System.Xml.XmlDocument myXMLDoc = new System.Xml.XmlDocument();
                                    myXMLDoc.PreserveWhitespace = true;

                                    myXMLDoc.LoadXml(Realsoft_Parametro.ArquivoXml(Licenca[i]));
                                    xmlDados = myXMLDoc.DocumentElement;

                                    XmlNode _conexao = Realsoft_Parametro.Elemento(xmlDados, "Razao");
                                    retornoxml = _conexao.LastChild.Value.ToString();

                                }
                            }
                        }

                        string retornofilial = Realsoft_Consultas.Consultar_Filial();

                        if (retornofilial == null)
                        {
                            LbFilial.Visible = true;
                            LbFilial.Text = "FILIAL NÃO ENCONTRADA, FAVOR CADASTRE SUA EMPRSA";
                        }

                        //Realsoft_UsuarioLogado _logado = new Realsoft_UsuarioLogado();

                        //_logado.Usuario = _Logon._ID;
                        ////_logado.IP = Realsoft_Parametro.pegarIpremoto();
                        //_logado.Maquina = Environment.MachineName;
                        //_logado.Ativo = true;
                        //_logado.EnderecoMac = Realsoft_Parametro.getMacAddress();

                        //Realsoft_Insere.Insere_NovoUsuarioLogado(_logado);

                    }
                    catch (Exception ex)
                    {
                        string retorno = Realsoft_Criptografia.Encrypt(ex.Message, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
                        Session["ERROR"] = retorno;
                        Response.Redirect("Realsoft_Error.aspx?ret=" + retorno);
                        return;
                    }
                }
            }

            TxCaptcha.Text = "";
        }
        catch (Exception ex)
        {
            string retorno = Realsoft_Criptografia.Encrypt(ex.Message, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            Session["ERROR"] = retorno;
            Response.Redirect("Realsoft_Error.aspx?ret=" + retorno);
        }
    }

    
}
