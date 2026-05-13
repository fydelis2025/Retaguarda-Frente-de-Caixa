using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Cartao : System.Web.UI.Page
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
                Random gerarnumero = new Random();

                string ret = Session["CPF"].ToString();

                string decriptcpf = Realsoft_Criptografia.Decrypt(ret, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);

                TxCPF.Text = decriptcpf;

                string retnome = Session["CLIENTE"].ToString();
                string decriptnome = Realsoft_Criptografia.Decrypt(retnome, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);

                TxCliente.Text = decriptnome;

                TxNumeroCartao.Text = "200" + gerarnumero.Next(99999999).ToString();
                TxEmissao.Text = DateTime.Now.ToString("dd-MM-yyyy");
                TxOperador.Text = Realsoft_Parametro.UsuarioLogado.ToUpper();
                TxLimite.Text = "100,00";
                TxLimiteParcela.Text = "100,00";
            }
        }
        catch (Exception ex)
        {
            string retorno = Realsoft_Criptografia.Encrypt(ex.Message, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            Session["ERROR"] = retorno;
            Response.Redirect("Realsoft_Error.aspx?ret=" + retorno);
        }
    }


    private Realsoft_Cartao _cartao = new Realsoft_Cartao();
    protected void BtGerar_Click(object sender, EventArgs e)
    {
        try
        {
            _cartao = null;

            _cartao = new Realsoft_Cartao();
            _cartao.Cliente = Realsoft_Consultas.Consultar_IDCliente(TxCliente.Text);
            _cartao.Situacao = "APROVADO";
            _cartao.DiaVencimento = 0;
            _cartao.NumeroCartao = TxNumeroCartao.Text;
            _cartao.DataEmissao = DateTime.Parse(TxEmissao.Text);
            _cartao.LimiteCartao = Decimal.Parse(TxLimite.Text);
            _cartao.LimiteCartaoParcela = Decimal.Parse(TxLimiteParcela.Text);
            _cartao.Motivo = "";
            _cartao.Responsavel = TxOperador.Text;
            
            Realsoft_Insere.Insere_CartaoFidelidade(_cartao);

            Realsoft_Parametro.NumeroPrevenda = _cartao.Cliente;

            throw new HttpException("CARTÃO CADASTRADO COM SUCESSO");
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }      
}