using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _MercadoriaPrevenda : System.Web.UI.Page 
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
                Mercadorias.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, UNIDADE, QUANTIDADE, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS ";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtFechar_Click(object sender, EventArgs e)
    {
        
    }

    protected void DgLista_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Selecionar")
            {
                int currentRowIndex = Int32.Parse(e.CommandArgument.ToString());
                //string ProductID = DgPrecos.DataKeys[currentRowIndex].Value.ToString(); 
                GridViewRow row = DgLista.Rows[currentRowIndex];
               
                String Codigo = Server.HtmlDecode(row.Cells[1].Text);

                string retorno = Realsoft_Criptografia.Encrypt(Codigo, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
                Session["CODIGOPREVENDA"] = retorno;
                
                Realsoft_Parametro.Codigoprevenda = true;

                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Fechar", "window.close()", true);               

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
            if (TxDescricao.Text != "")
            {
                Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
                Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
                Mercadorias.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, UNIDADE, QUANTIDADE, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS WHERE MERCADORIA LIKE '%" + TxDescricao.Text + "%'";

            }
            
            if (TxCodigo.Text != "")
            {
                Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
                Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
                Mercadorias.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, UNIDADE, QUANTIDADE, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS WHERE CODIGO = '" + TxCodigo.Text + "'";

            }

            if (TxEAN.Text != "")
            {
                Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
                Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
                Mercadorias.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, UNIDADE, QUANTIDADE, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS WHERE EAN = '" + TxEAN.Text + "'";

            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }

    }
}