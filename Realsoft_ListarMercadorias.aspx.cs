using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _ListaMercadorias : System.Web.UI.Page
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

                ListaMercadoria.ConnectionString = Realsoft_Parametro.parametroconexao;
                ListaMercadoria.ProviderName = Realsoft_Parametro.tipoconexao;
                ListaMercadoria.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, QUANTIDADE, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS";
                
            }
        }
        catch (Exception ex)
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
            ListaMercadoria.ConnectionString = Realsoft_Parametro.parametroconexao;
            ListaMercadoria.ProviderName = Realsoft_Parametro.tipoconexao;

            if (TxDescricao.Text.Trim().Length != 0)
            {
                ListaMercadoria.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, QUANTIDADE, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS WHERE MERCADORIA LIKE '" + TxDescricao.Text + "%' ORDER BY MERCADORIA";
                
            }
            
            if (TxEAN.Text.Trim().Length != 0)
            {
                ListaMercadoria.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, QUANTIDADE, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS WHERE EAN = '" + TxEAN.Text + "'";
            }
            
        }
        catch(Exception ex)
        {
            string retorno = Realsoft_Criptografia.Encrypt(ex.Message, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            Session["ERROR"] = retorno;
            Response.Redirect("Realsoft_Error.aspx?ret=" + retorno);
        }
    }
    protected void DgLista_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName.Equals("Desativar"))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showAl", "ShowConfirmation();", true);


            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        
    }
}