using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Usuarios : System.Web.UI.Page
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
                CbFilial.Items.Clear();
                List<Realsoft_Filial> filial = Realsoft_Consultas.Listar_Filial();

                for (int i = 0; i <= filial.Count - 1;i++ )
                {
                    CbFilial.Items.Add(filial[i]._Razaosocial);
                }
                    Usuarios.ConnectionString = Realsoft_Parametro.parametroconexao;
                Usuarios.ProviderName = Realsoft_Parametro.tipoconexao;
                Usuarios.SelectCommand = "SELECT NOME, LOGIN, FISCAL, OPERADOR, ADMINISTRADOR, ATIVO FROM REALSOFT_SISTEMA_LOGIN";
            }
        }
        catch(Exception ex)
        {
            string retorno = Realsoft_Criptografia.Encrypt(ex.Message, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            Session["ERROR"] = retorno;
            Response.Redirect("Realsoft_Error.aspx?ret=" + retorno);
        }
    }
    protected void BtGravar_Click(object sender, EventArgs e)
    {
        try
        {
            Realsoft_Login _login = new Realsoft_Login();

            _login._Nonme = TxNome.Text;
            _login._Senha = TxSenha.Text;
            _login._Login = TxLogin.Text;
            _login._Caixa = ChFiscal.Checked;
            _login._Operador = ChOperador.Checked;
            _login._Administrador = ChAdministrador.Checked;
            _login._Ativo = ChAtivo.Checked;
            _login._Filial = Realsoft_Consultas.Consultar_Empresa(CbFilial.Text);

            Realsoft_Insere.Insere_Usuario(_login);

            Usuarios.ConnectionString = Realsoft_Parametro.parametroconexao;
            Usuarios.ProviderName = Realsoft_Parametro.tipoconexao;
            Usuarios.SelectCommand = "SELECT NOME, LOGIN, FISCAL, OPERADOR, ADMINISTRADOR, ATIVO FROM REALSOFT_SISTEMA_LOGIN";

            throw new HttpException("USUÁRIO CRIADO COM SUCESSO");
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}