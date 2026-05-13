using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
public partial class _Clientes : System.Web.UI.Page
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
                CbDiaVencimento.Items.Clear();
                CbSexo.Items.Clear();
                CBPessoa.Items.Clear();
                CbEstadoCivil.Items.Clear();
                CbFilial.Items.Clear();

                _cliente = null;

                List<Realsoft_Filial> _filial = Realsoft_Consultas.Listar_Filial();
                List<Realsoft_EstadoCivil> _EstadoCivil = Realsoft_Consultas.Listar_EstadoCivil();
                List<Realsoft_TipoPessoa> _TipoPessoa = Realsoft_Consultas.Listar_TipoPessoa();
                List<Realsoft_Sexo> _TipoSexo = Realsoft_Consultas.Listar_TipoSexo();
                List<Realsoft_DiaVencimento> _vencimento = Realsoft_Consultas.Listar_DiaVencimento();

                for (int i = 0; i <= _filial.Count - 1; i++)
                {
                    CbFilial.Items.Add(_filial[i]._Razaosocial.ToUpper());
                }
                for (int c = 0; c <= _EstadoCivil.Count - 1; c++)
                {
                    CbEstadoCivil.Items.Add(_EstadoCivil[c].Descricao.ToUpper());
                }
                for (int p = 0; p <= _TipoPessoa.Count - 1; p++)
                {
                    CBPessoa.Items.Add(_TipoPessoa[p].Descricao);
                }
                for (int s = 0; s <= _TipoSexo.Count - 1; s++)
                {
                    CbSexo.Items.Add(_TipoSexo[s].Descricao);
                }
                for (int v = 0; v <= _vencimento.Count - 1; v++)
                {
                    CbDiaVencimento.Items.Add(_vencimento[v].ID.ToString());
                }
            }
        }
        catch(Exception ex)
        {

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
            
        }
    }

    Realsoft_Cliente _cliente = new Realsoft_Cliente();

    protected void BtNovo_Click(object sender, EventArgs e)
    {
        try
        {
            _cliente = null;

            TxCliente.Text = "";
            TxCPF.Text = "0";
            CBPessoa.SelectedIndex = 0;
            CbFilial.SelectedIndex = 0;
            TxPai.Text = "";
            TxMae.Text = "";
            CbSexo.SelectedIndex = 0;
            CbEstadoCivil.SelectedIndex = 0;
            TxRG.Text = "0";
            TxOrgaoEmissor.Text = "";
            TxDataExpedicao.Text = DateTime.Now.ToString("dd/MM/yyyy");
            TxDataNascimento.Text = DateTime.Now.ToString("dd/MM/yyyy ");
            TxCep.Text = "0";
            TxLogradouro.Text = "";
            TxNumero.Text = "0";
            TxComplemento.Text = "";
            TxReferencia.Text = "";
            TxBairro.Text = "";
            TxCidade.Text = "";
            TxUF.Text = "";
            TxDDD.Text = "0";
            TxTelefone.Text = "0";
            TxContato.Text = "";
            TxTelefoneContato.Text = "0";
            TxEmail.Text = "";
            CbDiaVencimento.SelectedIndex = 0;
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
            if (TxCPF.Text == "" )
            {
                throw new HttpException("INFORME O NÚMERO DO CPF");
            }

            if (TxCliente.Text == "")
            {
                throw new HttpException("INFORME O NÚMERO O NOME DO CLIENTE");
            }

            Boolean Validacao = Realsoft_ValidaDados.IsCpf(TxCPF.Text);

            if (Validacao == false)
            {
                TxCPF.BorderColor = Color.Yellow;
                throw new HttpException("NUMERO DE CPF INVALIDO");
            }

                _cliente = new Realsoft_Cliente();

                _cliente.Empresas = 1;
                _cliente.Produto = 1;
                _cliente.Nome = TxCliente.Text;
                _cliente.CPF = TxCPF.Text;
                _cliente.TipoPessoa = Realsoft_Consultas.Consultar_TipoPessoa(CBPessoa.Text);
                _cliente.Filial = Realsoft_Consultas.Consultar_Empresa(CbFilial.Text);
                _cliente.Pai = TxPai.Text;
                _cliente.Mae = TxMae.Text;
                _cliente.Sexo = Realsoft_Consultas.Consultar_TipoSexo(CbSexo.Text);
                _cliente.EstadoCivil = Realsoft_Consultas.Consultar_EstadoCivil(CbEstadoCivil.Text);
                _cliente.RG = TxRG.Text;
                _cliente.Emissor = TxOrgaoEmissor.Text;
                _cliente.DataExpedicao = DateTime.Parse(TxDataExpedicao.Text);
                _cliente.DataNascimento = DateTime.Parse(TxDataNascimento.Text);
                _cliente.CEP = TxCep.Text;
                _cliente.Logradouro = TxLogradouro.Text;
                _cliente.Numero = TxNumero.Text;
                _cliente.Complemento = TxComplemento.Text;
                _cliente.Referencia = TxReferencia.Text;
                _cliente.Bairro = TxBairro.Text;
                _cliente.Cidade = TxCidade.Text;
                _cliente.Estado = TxUF.Text;
                try { _cliente.DDD = int.Parse(TxDDD.Text); }
                catch (Exception ex) { TxDDD.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "FORMATO INVALIDO" + "')", true); }
                try { _cliente.Telefone = int.Parse(TxTelefone.Text); }
                catch (Exception ex) { TxTelefone.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "FORMATO INVALIDO" + "')", true); }
                _cliente.NomeContato = TxContato.Text;
                try { _cliente.TelefoneContato = int.Parse(TxTelefoneContato.Text); }
                catch (Exception ex) { TxTelefone.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "FORMATO INVALIDO" + "')", true); }
                _cliente.Email = TxEmail.Text;
                _cliente.DiaVencimento = int.Parse(CbDiaVencimento.Text);
                _cliente.CriadoPor = 1;
                _cliente.TipoCartao = "";
                _cliente.Funcionario = false;
               

                Realsoft_Insere.Insere_Cliente(_cliente);

                throw new Exception("CLIENTE CADASTRADO COM SUCESSO");
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtCartao_Click(object sender, EventArgs e)
    {
        try
        {
            string cpfcript = Realsoft_Criptografia.Encrypt(TxCPF.Text, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            string nomecript = Realsoft_Criptografia.Encrypt(TxCliente.Text, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            
            Session["CPF"] = cpfcript;
            Session["CLIENTE"] = nomecript;

            Response.Redirect("Realsoft_Cartao.aspx?ret="+cpfcript + nomecript);

            

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    
    protected void BtDataExpedicao_Click(object sender, ImageClickEventArgs e)
    {
        //DateTime dob = DateTime.ParseExact(Request.Form[TxDataExpedicao.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtDataNascimento_Click(object sender, ImageClickEventArgs e)
    {
        //DateTime dob = DateTime.ParseExact(Request.Form[TxDataNascimento.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtCep_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Realsoft_BuscaCep _cep = new Realsoft_BuscaCep();
            _cep.Cep(TxCep.Text);
            TxUF.Text = _cep._uf;
            TxCidade.Text = _cep._cidade;
            TxBairro.Text = _cep._bairro;
            TxReferencia.Text = _cep._tipo_lagradouro;
            TxLogradouro.Text = _cep._lagradouro;
            TxComplemento.Text = _cep._resultado;
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}