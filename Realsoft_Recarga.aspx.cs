using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class _Recarga : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
            try
            {
                Realsoft_Class.Principal prin = new Realsoft_Class.Principal();

                if (prin.isConnectedDLL())
                {
                    String Result = Realsoft_Recarga.LimiteCredito();

                    Result = Realsoft_Recarga.LimiteCredito();

					XmlDocument _xdoc = new XmlDocument();

					_xdoc.LoadXml(Result);

                    XmlNode ide = Elemento(_xdoc, "cellcard");

                    XmlNode ret_limite = Elemento(ide, "limite_credito");
					LbCredito.Text = ret_limite.LastChild.Value;

                    XmlNode ret_Disponivel = Elemento(ide, "limite_disponivel");
                    LbDisponivel.Text = ret_Disponivel.LastChild.Value;

                    XmlNode ret_antecipado = Elemento(ide, "antecipado");
                    LbAntecipado.Text = ret_antecipado.LastChild.Value;

                    XmlNode ret_aberto = Elemento(ide, "valor_aberto");
                    LbValorAberto.Text = ret_aberto.LastChild.Value;
                }
                else
                {
                    throw new HttpException("SEM CONEXAO COM A INTERNET, FAVOR VERIFIQUE");
                }
            }
            catch(Exception ex)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
            }
        }
    }

    private XmlNode Elemento(XmlNode no, String elemento)
    {
        for (int n = 0; n < no.ChildNodes.Count; n++)
        {
            if (no.ChildNodes[n].Name.Equals(elemento))
                return no.ChildNodes[n];
        }

        return Elemento(no.LastChild, elemento);
    }

}