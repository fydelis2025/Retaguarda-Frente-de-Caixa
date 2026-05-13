using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Inadiplentes : System.Web.UI.Page
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
                INADIPLENTES.ConnectionString = Realsoft_Parametro.parametroconexao;
                INADIPLENTES.ProviderName = Realsoft_Parametro.tipoconexao;
                INADIPLENTES.SelectCommand = "SELECT CLIENTE, LIMITECOMPARCELA AS 'LIMITE', [FATURA ATUAL] AS 'FATURA', JUROSFATURA AS 'JUROS', datavencimento AS 'VENC. ABERTO', [FATURA EM ABERTO] AS 'FATURA', [DIAS VENCIDOS] AS 'DIAS' FROM CONSULTAR_CL_INAD";
                INADIPLENTES.Dispose();
            }
        }
        catch (Exception ex)
        {
            LbStatus.Text = ex.Message;
        }
    }

    protected void BtBuscar_Click(object sender, EventArgs e)
    {
        try
        {
            if (TxCliente.Text != string.Empty)
            {
                INADIPLENTES.ConnectionString = Realsoft_Parametro.parametroconexao;
                INADIPLENTES.ProviderName = Realsoft_Parametro.tipoconexao;
                INADIPLENTES.SelectCommand = "SELECT CLIENTE, LIMITECOMPARCELA AS 'LIMITE', [FATURA ATUAL] AS 'FATURA', JUROSFATURA AS 'JUROS', datavencimento AS 'VENC. ABERTO', [FATURA EM ABERTO] AS 'FATURA', [DIAS VENCIDOS] AS 'DIAS' FROM CONSULTAR_CL_INAD WHERE CLIENTE = '" + TxCliente.Text + "'";
                INADIPLENTES.Dispose();
            }
            else if (TxNumeroCartao.Text != string.Empty)
            {
                INADIPLENTES.ConnectionString = Realsoft_Parametro.parametroconexao;
                INADIPLENTES.ProviderName = Realsoft_Parametro.tipoconexao;
                INADIPLENTES.SelectCommand = "SELECT CLIENTE, LIMITECOMPARCELA AS 'LIMITE', [FATURA ATUAL] AS 'FATURA', JUROSFATURA AS 'JUROS', datavencimento AS 'VENC. ABERTO', [FATURA EM ABERTO] AS 'FATURA', [DIAS VENCIDOS] AS 'DIAS' FROM CONSULTAR_CL_INAD WHERE CLIENTE = '" + TxNumeroCartao.Text + "'";
                INADIPLENTES.Dispose();
            }
            else if (TxCPF.Text != string.Empty)
            {
                INADIPLENTES.ConnectionString = Realsoft_Parametro.parametroconexao;
                INADIPLENTES.ProviderName = Realsoft_Parametro.tipoconexao;
                INADIPLENTES.SelectCommand = "SELECT CLIENTE, LIMITECOMPARCELA AS 'LIMITE', [FATURA ATUAL] AS 'FATURA', JUROSFATURA AS 'JUROS', datavencimento AS 'VENC. ABERTO', [FATURA EM ABERTO] AS 'FATURA', [DIAS VENCIDOS] AS 'DIAS' FROM CONSULTAR_CL_INAD WHERE CLIENTE = '" + TxCPF.Text + "'";
                INADIPLENTES.Dispose();
            }
            else
            {
                
                INADIPLENTES.ConnectionString = Realsoft_Parametro.parametroconexao;
                INADIPLENTES.ProviderName = Realsoft_Parametro.tipoconexao;
                INADIPLENTES.SelectCommand = "SELECT CLIENTE, LIMITECOMPARCELA AS 'LIMITE', [FATURA ATUAL] AS 'FATURA', JUROSFATURA AS 'JUROS', datavencimento AS 'VENC. ABERTO', [FATURA EM ABERTO] AS 'FATURA', [DIAS VENCIDOS] AS 'DIAS' FROM CONSULTAR_CL_INAD";
                INADIPLENTES.Dispose();
            }
        }
        catch (Exception ex)
        {
            string retorno = Realsoft_Criptografia.Encrypt(ex.Message, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            Session["ERROR"] = retorno;
            Response.Redirect("Realsoft_Error.aspx?ret=" + retorno);
        }

    }
    protected void BtImprimir_Click(object sender, EventArgs e)
    {

    }
}