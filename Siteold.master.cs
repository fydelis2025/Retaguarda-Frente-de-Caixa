using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.NetworkInformation;
using System.IO;
using System.Xml;
using System.Data;
public partial class SiteMaster : System.Web.UI.MasterPage
{
    public static bool aplMovel;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            LbNavegador.Text = Request.Browser.Browser;
            LbPlataforma.Text = Request.Browser.Platform;
            LbMobile.Text = Request.Browser.MobileDeviceModel;
            LbJava.Text = Request.Browser["JavaScriptVersion"];
            LbManuFacture.Text = Request.Browser.MobileDeviceManufacturer;


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
                            HttpCookie _cookie = new HttpCookie("RealsoftCRIPTO");

                            XmlNode xmlDados = null;
                            System.Xml.XmlDocument myXMLDoc = new System.Xml.XmlDocument();
                            myXMLDoc.PreserveWhitespace = true;

                            myXMLDoc.LoadXml(Realsoft_Parametro.ArquivoXml(Licenca[i]));
                            xmlDados = myXMLDoc.DocumentElement;

                            XmlNode _conexao = Realsoft_Parametro.Elemento(xmlDados, "conexao");
                            string retorno = _conexao.LastChild.Value.ToString();

                            Response.Cookies["CRIPTOGRAFIA"].Value = retorno;
                            Response.Cookies["CRIPTOGRAFIA"].Expires = DateTime.Now.AddDays(1);

                            _cookie.Value = DateTime.Now.ToString();
                            _cookie.Expires = DateTime.Now.AddDays(1);
                            _cookie.Path = "/Aplicacao";
                            Response.Cookies.Add(_cookie);

                            //server=10.2.7.196;user=realsoft;pwd=efeb1730fe92;database=Realsoft_Caixa;  
                            //server = dbsq0004.whservidor.com; database = realsoft1; User = realsoft1; Password = efeb1730fe92;
                            Realsoft_Parametro.parametroconexao = Realsoft_Criptografia.Decrypt(retorno, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);

                        }
                    }
                }

                if (Realsoft_Parametro.UsuarioLogado != null)
                {
                    MenuPrincipal.Visible = true;
                    LbUsuario.Text = Realsoft_Parametro.UsuarioLogado;
                    LbLogout.Enabled = true;
                }
                // LbLicencaLiberada.Text = Realsoft_Parametro.Valido.ToString();
            
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

     
    
    
