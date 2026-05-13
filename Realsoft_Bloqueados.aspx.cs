using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Realsoft_Class;
public partial class _Bloqueados : System.Web.UI.Page
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
                CLIENTEBLOQUEADO.ConnectionString = Realsoft_Parametro.parametroconexao;
                CLIENTEBLOQUEADO.ProviderName = Realsoft_Parametro.tipoconexao;
                CLIENTEBLOQUEADO.SelectCommand = "SELECT DISTINCT dev.CLIENTE, g.LIMITECOMPARCELA AS 'LIMITE', dev.DATAVENCIMENTO, dev.VALORTOTAL AS 'FATURA', dev.JUROSFATURA AS 'JUROS', dev.MOVIMENTACAOFATURA AS 'PAGAMENTO', dev.COMPRASFATURA AS 'COMPRAS', dev.VALORTOTALDEVIDO AS 'TOTALDEVIDO' FROM  dbo.CONSULTAR_CLIENTES_DEVEDORES AS dev INNER JOIN dbo.REALSOFT_INFORMACOESGERAIS AS g ON dev.ID = g.CLIENTE INNER JOIN dbo.REALSOFT_INFORMACOESCARTAO AS C ON g.CLIENTE = C.CLIENTE WHERE (dev.DOCUMENTOEMABERTO = 1) AND (C.CARTAOBLOQUEADO = 1) AND (NOT EXISTS(SELECT cliente FROM  dbo.CONSULTAR_CLIENTES_INADIMPLENTES WHERE (dev.CLIENTE = cliente)))";
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