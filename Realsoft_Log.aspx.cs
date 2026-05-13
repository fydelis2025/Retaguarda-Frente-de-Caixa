using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Log : System.Web.UI.Page
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
                Log.ConnectionString = Realsoft_Parametro.parametroconexao;
                Log.ProviderName = Realsoft_Parametro.tipoconexao;
                Log.SelectCommand = "SELECT A.LOGIN, L.DESCRICAO, L.DATA FROM REALSOFT_SISTEMA_LOG L, REALSOFT_SISTEMA_LOGIN A WHERE L.OPERADOR = A.ID ";
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtConsultar_Click(object sender, EventArgs e)
    {
        try
        {
            if (TxLogin.Text.Trim().Length == 0 & TxDescricao.Text.Trim().Length == 0)
            {
                throw new Exception("EXISTEM CAMPOS NULOS");
            }
            else
            {
                Log.ConnectionString = Realsoft_Parametro.parametroconexao;
                Log.ProviderName = Realsoft_Parametro.tipoconexao;
                Log.SelectCommand = "SELECT A.LOGIN, L.DESCRICAO, L.DATA FROM REALSOFT_SISTEMA_LOG L, REALSOFT_SISTEMA_LOGIN A WHERE L.OPERADOR = A.ID AND L.LOGIN = '" + TxLogin.Text + "'";

            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}