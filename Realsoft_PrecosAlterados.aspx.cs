using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _PrecosAlterados : System.Web.UI.Page
{
    public static Boolean NovoPreco;
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
                AlteraPRECOS.ConnectionString = Realsoft_Parametro.parametroconexao;
                AlteraPRECOS.ProviderName = Realsoft_Parametro.tipoconexao;
                AlteraPRECOS.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS";
            }

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    private Realsoft_Mercadorias _mercadoria = new Realsoft_Mercadorias();
    protected void DgPrecos_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        
    }
    protected void DgPrecos_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            
            _mercadoria = new Realsoft_Mercadorias();

            string valor = DgPrecos.SelectedRow.Cells[1].Text;

            _mercadoria._codigo = decimal.Parse(Realsoft_Parametro.Codigo);
            _mercadoria._EAN = DgPrecos.SelectedRow.Cells[1].Text;
            _mercadoria._Descricao = DgPrecos.SelectedRow.Cells[2].Text;
            _mercadoria._PrecoVenda = decimal.Parse(DgPrecos.SelectedRow.Cells[4].Text);

            
            Realsoft_Insere.Insere_NovoprecoMercadoria(_mercadoria);

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void AlteraPRECOS_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        
        
    }
    protected void DgPrecos_RowUpdated1(object sender, GridViewUpdatedEventArgs e)
    {
    }
    protected void BtBuscar_Click(object sender, EventArgs e)
    {
        try
        {
            
            AlteraPRECOS.ConnectionString = Realsoft_Parametro.parametroconexao;
            AlteraPRECOS.ProviderName = Realsoft_Parametro.tipoconexao;

            if (TxDescricao.Text.Trim().Length != 0)
            {
                AlteraPRECOS.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS WHERE MERCADORIA LIKE '%" + TxDescricao.Text + "%'";
            }

            if (TxCodigoBarras.Text.Trim().Length != 0)
            {
                AlteraPRECOS.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS WHERE EAN = '" + TxCodigoBarras.Text +"'";
            }


        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    public String Codigo;
    protected void DgPrecos_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Salvar")
            {
                int currentRowIndex = Int32.Parse(e.CommandArgument.ToString());
                //string ProductID = DgPrecos.DataKeys[currentRowIndex].Value.ToString(); 
                GridViewRow row = DgPrecos.Rows[currentRowIndex];

                TxPreco.Text = Server.HtmlDecode(row.Cells[4].Text);
                TxCodigoBarras.Text = Server.HtmlDecode(row.Cells[1].Text);
                Realsoft_Parametro.Codigo = Server.HtmlDecode(row.Cells[0].Text);
                TxDescricao.Text = Server.HtmlDecode(row.Cells[2].Text);

                NovoPreco = true;
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    protected void BtSalvar_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (NovoPreco == true)
            {
                if (TxPreco.Text.Length != 0)
                {
                    Realsoft_Mercadorias _mercadoria = new Realsoft_Mercadorias();

                    Realsoft_Atualiza.Update_Precificacao_Mercadoria(TxCodigoBarras.Text, decimal.Parse(TxPreco.Text));
                    ConexaoCaixa.Update_Precificacao_MercadoriaCaixa(TxCodigoBarras.Text, decimal.Parse(TxPreco.Text));

                    _mercadoria._codigo = decimal.Parse(Realsoft_Parametro.Codigo);
                    _mercadoria._EAN = TxCodigoBarras.Text;
                    _mercadoria._Descricao = TxDescricao.Text;
                    _mercadoria._PrecoVenda = decimal.Parse(TxPreco.Text);

                    Realsoft_Insere.Insere_NovoprecoMercadoria(_mercadoria);

                    throw new Exception("Preço alterado com sucesso");
                }
            }

        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}