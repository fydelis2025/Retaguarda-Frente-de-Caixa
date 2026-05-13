using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _MovimentacaoECF : System.Web.UI.Page
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
                MovimentoECF.ConnectionString = Realsoft_Parametro.parametroconexao;
                MovimentoECF.ProviderName = Realsoft_Parametro.tipoconexao;
                MovimentoECF.SelectCommand = "SELECT DISTINCT F.RAZAOSOCIAL, M.ECF, M.EAN,M.CUPOMFISCAL, M.MERCADORIA, M.QUANTIDADE, M.PRECOVENDA, M.VALORTOTAL, M.TOTALLIQUIDO, M.TROCO, M.OPERADOR FROM REALSOFT_VENDACUPOMFISCAL M, REALSOFT_FILIAL F WHERE M.FILIAL = F.ID ";
            }  
        }
        catch(Exception ex)
        {
            string Alerta = "<script language=JavaScript>";
            Alerta += "alert(\"" + ex.Message + "\");";
            Alerta += "</script>";

            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alerta", Alerta);
        }
    }

    protected void BtBuscar_Click(object sender, EventArgs e)
    {
        try
        {
            MovimentoECF.SelectParameters.Add("@valor", TxCupomFiscal.Text);

            MovimentoECF.SelectCommand = "SELECT DISTINCT F.RAZAOSOCIAL, M.ECF, M.EAN,M.CUPOMFISCAL, M.MERCADORIA, M.QUANTIDADE, M.PRECOVENDA, M.VALORTOTAL, M.TOTALLIQUIDO, M.TROCO, M.OPERADOR FROM REALSOFT_VENDACUPOMFISCAL M, REALSOFT_FILIAL F WHERE M.FILIAL = F.ID  AND CUPOMFISCAL = @valor";
            
            
        }
        catch (Exception ex)
        {
            string retorno = Realsoft_Criptografia.Encrypt(ex.Message, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            Session["ERROR"] = retorno;
            Response.Redirect("Realsoft_Error.aspx?ret=" + retorno);
        }
    }
}