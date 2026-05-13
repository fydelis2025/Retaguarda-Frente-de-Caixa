using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Banco : System.Web.UI.Page
{
    internal Realsoft_Banco _novobanco = new Realsoft_Banco();
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
                BANCO.ConnectionString = Realsoft_Parametro.parametroconexao;
                BANCO.ProviderName = Realsoft_Parametro.tipoconexao;
                BANCO.SelectCommand = "SELECT BANCO, AGENCIA, CONTA, DIGITO FROM REALSOFT_BANCO";

            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    protected void BtNovo_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            TxNome.Text = "";
            TxBanco.Text = "";
            TxAgencia.Text = "";
            TxConta.Text = "";
            TxDigito.Text = "";
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtGravar_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            _novobanco = new Realsoft_Banco();

            _novobanco._Nome = TxNome.Text;
            _novobanco._NomeBanco = TxBanco.Text;
            _novobanco._Agencia = int.Parse(TxAgencia.Text);
            _novobanco._Conta = int.Parse(TxConta.Text);
            _novobanco._DigitoVerificador = int.Parse(TxDigito.Text);

            Realsoft_Insere.Insere_NovoBanco(_novobanco);

            throw new HttpException("BANCO CRIADO COM SUCESSO");
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

            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}