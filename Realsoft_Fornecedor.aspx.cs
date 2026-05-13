using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Fornecedor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
            CbUF.Items.Clear();
         
            CbCidade.Items.Clear();
         
            List<Realsoft_Estado> _estado = Realsoft_Consultas.Listar_Estados();
            List<Realsoft_Municipios> _municipio = Realsoft_Consultas.Listar_Municipios();

            for (int i = 0; i <= _estado.Count - 1; i++)
            {
                CbUF.Items.Add(_estado[i].Descricao);
            }

            for (int r = 0; r <= _municipio.Count - 1; r++)
            {
                CbCidade.Items.Add(_municipio[r].Descricao);
         
            }
        }
    }
    protected void BtCep_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Realsoft_BuscaCep _cep = new Realsoft_BuscaCep();
            _cep.Cep(TxCep.Text);
            CbUF.Text = _cep._uf;
            try { CbCidade.Text = _cep._cidade; }
            catch (Exception ex) { CbCidade.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true); }
            TxBairro.Text = _cep._bairro;
            //TxNumero.Text = _cep.nu;
            TxLogradouro.Text = _cep._lagradouro;
            TxComplemento.Text = _cep._resultado;
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        try
        {
            if(e.Item.Value == "Novo")
            {
                Random _codigo = new Random();
                TxCodigoFornecedor.Text = _codigo.Next(999999).ToString("000000");
                //-------------------------------------------------------------------
                TxCNPJ.Text = "";
                TxRazaoSocial.Text = "";
                TxFantasia.Text = "";
                TxMunicipal.Text = "";
                TxEstadual.Text = "";
                TxCep.Text = "";
                TxLogradouro.Text = "";
                TxComplemento.Text = "";
                TxNumero.Text = "";
                TxBairro.Text = "";
                TxFax.Text = "";
                TxContato.Text = "";
                TxTelefone.Text = "";
                TxEmail.Text = "";
                TxSite.Text = "";
                //---------------------------------------------------------------------
            }
            else if(e.Item.Value == "Gravar")
            {
                if (TxCNPJ.Text.Trim().Length == 0)
                {
                    TxCNPJ.BorderColor = Color.Yellow;
                    TxCNPJ.Focus();
                    throw new HttpException("CNPJ INVÁLIDO");
                }

                if(TxFax.Text.Trim().Length == 0)
                {
                    TxFax.BorderColor = Color.Yellow;
                    TxFax.Focus();
                    throw new HttpException("NUMERO  INVÁLIDO");
                }

                if(TxNumero.Text.Trim().Length == 0)
                {
                    TxNumero.BorderColor = Color.Yellow;
                    TxNumero.Focus();
                    throw new HttpException("NUMERO  INVÁLIDO");
                }

                Boolean Validacao = Realsoft_ValidaDados.IsCnpj(TxCNPJ.Text);

                if (Validacao == false)
                {
                    TxCNPJ.BorderColor = Color.Yellow;
                    throw new HttpException("CNPJ INVALIDO");
                }
                Realsoft_Fornecedor _fornecedor = new Realsoft_Fornecedor();

                _fornecedor.CodigoFornecedor = int.Parse(TxCodigoFornecedor.Text);
                _fornecedor.CNPJ = TxCNPJ.Text;
                _fornecedor.RazaoSocial = TxRazaoSocial.Text;
                _fornecedor.Fantasia = TxFantasia.Text;
                _fornecedor.InscricaoMunicipal = TxMunicipal.Text;
                _fornecedor.InscricaoEstadual = TxEstadual.Text;
                try { _fornecedor.Cep = int.Parse(TxCep.Text); }
                catch (Exception ex) { TxCep.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "CEP INVALIDO " + "')", true); }
                _fornecedor.Logradouro = TxLogradouro.Text;
                _fornecedor.Complemento = TxComplemento.Text;
                _fornecedor.Numero = int.Parse(TxNumero.Text);
                _fornecedor.Bairro = TxBairro.Text;
                _fornecedor.Cidade = CbCidade.Text;
                _fornecedor.UF = CbUF.Text;
                try { _fornecedor.Fax = int.Parse(TxFax.Text); }
                catch (Exception ex) { TxFax.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "NUMERO DO FAX INVALIDO INFORMAR NO FORMATO DD99999999 " + "')", true); }
                _fornecedor.Contato = TxContato.Text;
                try { _fornecedor.Telefone = int.Parse(TxTelefone.Text); }
                catch (Exception ex) { TxTelefone.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "NUMERO DE TELEFONE INVALIDO INFORMAR NO FORMATO DD99999999 " + "')", true); }
                _fornecedor.Email = TxEmail.Text;
                _fornecedor.Site = TxSite.Text;

                Realsoft_Insere.Insere_NovoFornecedor(_fornecedor);

                throw new HttpException("FORNECEDOR CRIADO COM SUCESSO");
            }
            else
            {

            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}