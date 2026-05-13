using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Realsoft_DevolucaoPrev : System.Web.UI.Page
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
                Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
                Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
                Mercadorias.SelectCommand = "SELECT P.PREVENDA, P.CPFCNPJ, T.TOTALPREVENDA, P.MIGRADO, P.CANCELADO, P.DATACANCELAMENTO FROM REALSOFT_PREVENDA P, REALSOFT_TOTALPREVENDA T WHERE P.PREVENDA = T.PREVENDA AND CANCELADO = 'false' or P.CANCELADO is null";

                Mercadorias.Dispose();
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtConsultar_Click(object sender, EventArgs e)
    {
        try
        {
            if(TxPrevenda.Text != "")
            {
                Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
                Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
                Mercadorias.SelectCommand = "SELECT P.PREVENDA, P.CPFCNPJ, T.TOTALPREVENDA, P.MIGRADO, P.CANCELADO, P.DATACANCELAMENTO FROM REALSOFT_PREVENDA P, REALSOFT_TOTALPREVENDA T WHERE P.PREVENDA = T.PREVENDA AND P.PREVENDA = '" + TxPrevenda.Text + "'";
            }
            else if (TxCPF.Text != "")
            {
                Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
                Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
                Mercadorias.SelectCommand = "SELECT P.PREVENDA, P.CPFCNPJ, T.TOTALPREVENDA, P.MIGRADO, P.CANCELADO, P.DATACANCELAMENTO FROM REALSOFT_PREVENDA P, REALSOFT_TOTALPREVENDA T WHERE P.PREVENDA = T.PREVENDA  AND P.CPFCNPJ = '" + TxCPF.Text + "'";
            }
            else
            {
                Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
                Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
                Mercadorias.SelectCommand = "SELECT P.PREVENDA, P.CPFCNPJ, T.TOTALPREVENDA, P.MIGRADO, P.CANCELADO, P.DATACANCELAMENTO FROM REALSOFT_PREVENDA P, REALSOFT_TOTALPREVENDA T WHERE P.PREVENDA = T.PREVENDA AND CANCELADO = 'false' or P.CANCELADO is null";
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void DgLista_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {

            if (e.CommandName == "Itens")
            {
                int currentRowIndex = Int32.Parse(e.CommandArgument.ToString());

                GridViewRow row = DgLista.Rows[currentRowIndex];

                Int32 Codigo = int.Parse(Server.HtmlDecode(row.Cells[2].Text));

                Realsoft_Parametro.Codigo = Codigo.ToString();
                //window.open('Realsoft_HistoricoClientePrevenda.aspx', 'HISTORICO', 'width=1040,height=600, scrollbars=yes,resizable=no');
                
                string fullURL = "window.open('Realsoft_ItensPrevenda.aspx', '_blank', 'height=500,width=800');";
                ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);


            }

            if (e.CommandName == "Excluir")
            {
                int currentRowIndex = Int32.Parse(e.CommandArgument.ToString());
                
                GridViewRow row = DgLista.Rows[currentRowIndex];

                Int32 Codigo = int.Parse(Server.HtmlDecode(row.Cells[2].Text));

                Boolean retorno = Realsoft_Consultas.Consultar_PrevendaCancelada(Codigo);

                if (retorno == true)
                {
                    throw new HttpException("PREVENDA " + Codigo + " JA CANCELADO, FAVOR VERIFIQUE");
                }
                else
                {
                    Realsoft_Cancelamento.Cancelamento_Prevenda(Codigo, true);

                    throw new HttpException("PREVENDA " + Codigo + " CANCELADO COM SUCESSO");
                }
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtCancelado_Click(object sender, EventArgs e)
    {
        try
        {
            Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
            Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
            Mercadorias.SelectCommand = "SELECT P.PREVENDA, P.CPFCNPJ, T.TOTALPREVENDA, P.MIGRADO, P.CANCELADO, P.DATACANCELAMENTO FROM REALSOFT_PREVENDA P, REALSOFT_TOTALPREVENDA T WHERE P.PREVENDA = T.PREVENDA AND P.CANCELADO = 'true'";

        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtFinalizar_Click(object sender, EventArgs e)
    {
        try
        {
            Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
            Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
            Mercadorias.SelectCommand = "SELECT P.PREVENDA, P.CPFCNPJ, T.TOTALPREVENDA, P.MIGRADO, P.CANCELADO, P.DATACANCELAMENTO FROM REALSOFT_PREVENDA P, REALSOFT_TOTALPREVENDA T WHERE P.PREVENDA = T.PREVENDA AND P.MIGRADO = 'true'";

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
            throw new HttpException("FUNÇÃO NÃO AUTORIZADA");
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}