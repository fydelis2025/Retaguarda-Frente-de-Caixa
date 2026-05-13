using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Ativos : System.Web.UI.Page
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
                CLIENTEATIVO.ConnectionString = Realsoft_Parametro.parametroconexao;
                CLIENTEATIVO.ProviderName = Realsoft_Parametro.tipoconexao;
                CLIENTEATIVO.SelectCommand = "SELECT DISTINCT dev.CLIENTE, g.LIMITECOMPARCELA AS 'LIMITE', dev.DATAVENCIMENTO, dev.VALORTOTAL AS 'FATURA', dev.JUROSFATURA AS 'JUROS', dev.MOVIMENTACAOFATURA AS 'PAGAMENTO', dev.COMPRASFATURA AS 'COMPRAS', dev.VALORTOTALDEVIDO AS 'TOTALDEVIDO'  FROM CONSULTAR_CLIENTES_DEVEDORES dev, REALSOFT_INFORMACOESGERAIS g, REALSOFT_INFORMACOESCARTAO C WHERE dev.DOCUMENTOEMABERTO = 1 AND DEV.ID = G.CLIENTE AND C.CLIENTE = G.CLIENTE AND C.CARTAOBLOQUEADO = 0 AND NOT EXISTS(SELECT CLIENTE FROM CONSULTAR_CLIENTES_INADIMPLENTES WHERE dev.CLIENTE = CONSULTAR_CLIENTES_INADIMPLENTES.cliente)";
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