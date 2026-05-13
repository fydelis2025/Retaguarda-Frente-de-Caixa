using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.ObjectModel;


public partial class _Compras : System.Web.UI.Page
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
                COMPRAS.ConnectionString = Realsoft_Parametro.parametroconexao;
                COMPRAS.ProviderName = Realsoft_Parametro.tipoconexao;
                COMPRAS.SelectCommand = "SELECT DISTINCT UPPER(C.NOME) AS 'NOME', UPPER(F.RAZAOSOCIAL) AS 'EMPRESA', T.NUMEROCARTAO, T.VALORTRANSACAO FROM REALSOFT_TRANSACOES T, REALSOFT_CLIENTES C, REALSOFT_FILIAL F WHERE T.DATATRANSACAO BETWEEN CONVERT(CHAR,GETDATE(),101) AND CONVERT(CHAR,GETDATE(),101) AND T.CLIENTE = C.ID AND T.FILIAL = F.ID";

                Response.AppendHeader("Refresh", "10");
            }
        }
        catch (Exception ex)
        {
            string retorno = Realsoft_Criptografia.Encrypt(ex.Message, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            Session["ERROR"] = retorno;
            Response.Redirect("Realsoft_Error.aspx?ret=" + retorno);
        }

    }
}