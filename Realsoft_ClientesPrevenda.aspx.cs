using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Realsoft_ClientesPrevenda : System.Web.UI.Page
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
                LISTACLIENTE.ConnectionString = Realsoft_Parametro.parametroconexao;
                LISTACLIENTE.ProviderName = Realsoft_Parametro.tipoconexao;
                LISTACLIENTE.SelectCommand = "SELECT NOME, NASCIMENTO, CPF, RG, TELEFONE, CELULAR, DIAVENCIMENTO, EMAIL FROM REALSOFT_CLIENTES ";
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
            if (e.CommandName == "Selecionar")
            {
                int currentRowIndex = Int32.Parse(e.CommandArgument.ToString());
                //string ProductID = DgPrecos.DataKeys[currentRowIndex].Value.ToString(); 
                GridViewRow row = DgLista.Rows[currentRowIndex];

                String Codigo = Server.HtmlDecode(row.Cells[3].Text);

                string retorno = Realsoft_Criptografia.Encrypt(Codigo, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
                Session["CPFCLIENTE"] = retorno;

                Realsoft_Parametro.cpfcliente = true;

                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Fechar", "window.close()", true);


            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtFechar_Click(object sender, EventArgs e)
    {
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Fechar", "window.close()", true);
    }
}