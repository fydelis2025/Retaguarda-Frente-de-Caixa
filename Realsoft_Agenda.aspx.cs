using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Agenda : System.Web.UI.Page
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
                LbSaldoSMS.Text = Realsoft_Class.Realsoft_SMS.Consultar_Saldo();
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtEmail_Click(object sender, EventArgs e)
    {
        try
        {
            Realsoft_Class.Relaosft_Email.EnviarEmail(TxEmail.Text, TxPara.Text, TxCopia.Text, TxAssunto.Text, TxMensagem.Text);

            throw new HttpException("EMAIL ENVIADO COM SUCESSO");
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtNovo_Click(object sender, EventArgs e)
    {
        try
        {
            TxNome.Text = "";
            TxTelefone.Text = "";
            TxCelular.Text = "";
            TxEmailAgenda.Text = "";

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtGravar_Click(object sender, EventArgs e)
    {
        try
        {
            Realsoft_AgendaTelefonica _agenda = new Realsoft_AgendaTelefonica();

            _agenda.Nome = TxNome.Text;
            _agenda.Telefone = int.Parse(TxTelefone.Text);
            _agenda.Celular = int.Parse(TxCelular.Text);
            _agenda.Email = TxEmailAgenda.Text;

            Realsoft_Insere.Insere_NovaAgendaTelefonica(_agenda);

            throw new HttpException("AGENDA CRIADA COM SUCESSO");
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}