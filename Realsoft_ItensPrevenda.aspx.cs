using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Realsoft_ItensPrevenda : System.Web.UI.Page
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
                Items.ConnectionString = Realsoft_Parametro.parametroconexao;
                Items.ProviderName = Realsoft_Parametro.tipoconexao;
                Items.SelectCommand = "SELECT CODIGO, DESCRICAO, QUANTIDADE, PREVENDA, TOTALLIQUIDO FROM REALSOFT_PREVENDA WHERE PREVENDA = '" + Realsoft_Parametro.Codigo + "'";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void DgLista_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Excluir")
            {
                int currentRowIndex = Int32.Parse(e.CommandArgument.ToString());

                GridViewRow row = DgLista.Rows[currentRowIndex];

                Int32 Codigo = int.Parse(Server.HtmlDecode(row.Cells[1].Text));

                Realsoft_Excluir.Excluir_ItemPrevenda(int.Parse(Realsoft_Parametro.Codigo), Codigo);

                decimal total = Realsoft_Consultas.Consultar_TotalPrevenda(int.Parse(Realsoft_Parametro.Codigo));

                Realsoft_Atualiza.Update_TotalPrevenda(int.Parse(Realsoft_Parametro.Codigo), total);

                throw new HttpException("ITEM EXCLUÍDO COM SUCESSO");

            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}