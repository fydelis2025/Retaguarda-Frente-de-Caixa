using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Realsoft_Class;
using System.Drawing;
public partial class _Boletos : System.Web.UI.Page
{

    internal Realsoft_Cliente _clientes = new Realsoft_Cliente();
    internal Realsoft_Banco _banco = new Realsoft_Banco();
    internal Realsoft_Boleto _criarboleto = new Realsoft_Boleto();

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
                CbBanco.Items.Clear();

                List<Realsoft_Banco> _listabanco = Realsoft_Consultas.Listar_Banco();

                for (int i =0; i<= _listabanco.Count -1; i++)
                {
                    CbBanco.Items.Add(_listabanco[i]._NomeBanco);
                }
              
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
            Random _numerosequencial = new Random();

            TxSeguencial.Text = _numerosequencial.Next(999999).ToString();
            TxDataEmissao.Text = DateTime.Now.ToString("dd/MM/yyyy");
            TxDataVencimento.Text = "";
            TxDataProcessamento.Text = DateTime.Now.ToString("dd/MM/yyyy");
            TxDataDocumento.Text = DateTime.Now.ToString("dd/MM/yyyy");
            TxNumero.Text = _numerosequencial.Next(9999).ToString();
            TxValor.Text = "0,00";            
            TxDocumento.Text = _numerosequencial.Next(999).ToString();
            TxCarteira.Text = _numerosequencial.Next(99).ToString();
            TxAgencia.Text = "";
            TxConta.Text = "";
            TxPVConta.Text = "";
            TxInstrucao.Text = "NÃO RECEBER APÓS O VENCIMENTO";
            TxNome.Text = "";
            TxCPF.Text = "";
            TxEndereco.Text = "";
            TxBairro.Text = "";
            TxCidade.Text = "";
            TxEstado.Text = "";
            TxCep.Text = "0";
            BtGravar.Enabled = true;

        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtConsultar_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (TxCPF.Text.Trim().Length != 0)
            {
                _clientes = Realsoft_Consultas.Consultar_DadosClientes(TxCPF.Text);

                TxNome.Text = _clientes.Nome;
                TxEndereco.Text = _clientes.Endereco;
                TxBairro.Text = _clientes.Bairro;
                TxCidade.Text = _clientes.Cidade;
                TxEstado.Text = _clientes.Estado;
                TxCep.Text = _clientes.CEP;
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtConsultarBanco_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            _banco = Realsoft_Consultas.Consultar_DadosBancario(CbBanco.Text);

            if (_banco != null)
            {
                TxNomeCedente.Text = _banco._Nome;
                TxAgencia.Text = _banco._Agencia.ToString();
                TxConta.Text = _banco._Conta.ToString();
                TxPVConta.Text = _banco._DigitoVerificador.ToString();
            }
            else
            {
                throw new HttpException("DADOS NÃO ENCONTRADO");
            }

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtDataVencimento_Click(object sender, ImageClickEventArgs e)
    {
        DateTime dob = DateTime.ParseExact(Request.Form[TxDataVencimento.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtDataEmissao_Click(object sender, ImageClickEventArgs e)
    {
        DateTime dob = DateTime.ParseExact(Request.Form[TxDataEmissao.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtDataProcessamento_Click(object sender, ImageClickEventArgs e)
    {
        DateTime dob = DateTime.ParseExact(Request.Form[TxDataProcessamento.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtDataDocumento_Click(object sender, ImageClickEventArgs e)
    {
        DateTime dob = DateTime.ParseExact(Request.Form[TxDataDocumento.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtGravar_Click(object sender, EventArgs e)
    {
        try
        {
                                              
            Boolean CPF = Realsoft_ValidaDados.IsCpf(TxCPF.Text);
            
            if (CPF == false)
            {
                TxCPF.BorderColor = Color.Yellow;
                throw new HttpException("CPF INVÁLIDO");
            }

            if (TxCep.Text == "")
            {
                TxCep.BorderColor = Color.Yellow;
                throw new HttpException("Cep INVÁLIDO");
            }


            Realsoft_GeraBoleto _gera = new Realsoft_GeraBoleto();

            string retorno;

            _gera._Sequencial = int.Parse(TxSeguencial.Text);
            try { _gera._DadaEmissao = DateTime.Parse(TxDataEmissao.Text); }
            catch (Exception ex) { TxDataEmissao.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "FORMATO DE DATA INVALIDO, FAVOR INSERIR O FORMATO dd/MM/yyyy | ex: 01/01/2001" + "')", true); }
            try { _gera._DadaVencimento = DateTime.Parse(TxDataVencimento.Text); }
            catch (Exception ex) { TxDataVencimento.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "FORMATO DE DATA INVALIDO, FAVOR INSERIR O FORMATO dd/MM/yyyy | ex: 01/01/2001" + "')", true); }
            try { _gera._DadaProcessamento = DateTime.Parse(TxDataProcessamento.Text); }
            catch (Exception ex) { TxDataProcessamento.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "FORMATO DE DATA INVALIDO, FAVOR INSERIR O FORMATO dd/MM/yyyy | ex: 01/01/2001" + "')", true); }
            try { _gera._DadaDocumento = DateTime.Parse(TxDataDocumento.Text); }
            catch (Exception ex) { TxDataDocumento.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "FORMATO DE DATA INVALIDO, FAVOR INSERIR O FORMATO dd/MM/yyyy | ex: 01/01/2001" + "')", true); }
            _gera._Numero = int.Parse(TxNumero.Text);
            _gera._ValorDocumento = Decimal.Parse(TxValor.Text);
            
            if (CbAceite.Text == "SIM")
            {
                
                _gera._Aceite = true;
            }
            else
            {

                _gera._Aceite = false;
            }

          

            _gera._Carteira = int.Parse(TxCarteira.Text);
            _gera._Documento = int.Parse(TxDocumento.Text);
            _gera._NomeCedente = TxNomeCedente.Text;
            _gera._Agencia = int.Parse(TxAgencia.Text);
            _gera._Conta = int.Parse(TxConta.Text);
            _gera._DigitoVerificador = int.Parse(TxPVConta.Text);
            _gera._Instrucao = TxInstrucao.Text;
            _gera._NomeSacado = TxNome.Text;
            _gera._CPFCNPJ = TxCPF.Text;
            _gera._Endereco = TxEndereco.Text;
            _gera._Bairro = TxBairro.Text;
            _gera._Cidade = TxCidade.Text;
            _gera._UF = TxEstado.Text;
            _gera._Cep = TxCep.Text;

            Realsoft_Insere.Insere_NovoBoletoBancario(_gera);

            if(CbBanco.Text == "BRADESCO")
            {
               retorno = _gera.BancodoBradesco();
               
            }
            else if (CbBanco.Text == "ITAU")
            {
                retorno = _gera.BancodoItau();
                
            }
            else if (CbBanco.Text == "HSBC")
            {
                retorno = _gera.BoletoHSBC();
                
            }
            else if (CbBanco.Text == "BRASIL")
            {
                retorno = _gera.BancodoBrasil();
                
            }
            else
            {
                throw new HttpException("HOUVE UM ERRO AO GERAR O BOLETO");
            }


            BtGravar.Enabled = false;
            string fullURL = "window.open('Realsoft_ImpressaoBoletos.aspx', '_blank', 'height=1100,width=1024');";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
            
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtImpressao_Click(object sender, EventArgs e)
    {
        try
        {
            string fullURL = "window.open('Realsoft_ImpressaoBoletos.aspx', '_blank', 'height=1100,width=1024');";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}