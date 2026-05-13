using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _PlanodeContas : System.Web.UI.Page
{
    private Realsoft_PlanodeConta _planocontas = new Realsoft_PlanodeConta();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Realsoft_Parametro.UsuarioLogado == null)
            {
                _planocontas = null;
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Error", "alert('TENTATIVA DE ABERTURA DO SISTEMA VIOLADO')",true);
                string retorno = Realsoft_Criptografia.Encrypt("TENTATIVA VIOLADO", Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
                Session["ERROR"] = retorno;
                Response.Redirect("Realsoft_Error.aspx?ret=" + "");
            }
            else
            {
                Departamento.ConnectionString = Realsoft_Parametro.parametroconexao;
                Departamento.ProviderName = Realsoft_Parametro.tipoconexao;
                Departamento.SelectCommand = "SELECT DESCRICAO, ATIVO FROM REALSOFT_PLANODECONTAS ";
            }
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
            _planocontas = null;

            TxDescricao.Text = "";

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtSalvar_Click(object sender, EventArgs e)
    {
        try
        {
            if (TxDescricao.Text.Trim().Length != 0)
            {

                _planocontas = new Realsoft_PlanodeConta();

                _planocontas.Descricao = TxDescricao.Text;
                _planocontas.Ativo = true;

                Realsoft_Insere.Insere_PlanodeContas(_planocontas);

                throw new Exception("PLANO DE CONTAS INSERIDO COM SUCESSO");


            }
            else
            {
                throw new Exception("IMPOSSÍVEL PROCESSEGUIR COM ESSA SOLICITAÇÃO");
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}