using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Mercadorias : System.Web.UI.Page
{
    private Realsoft_Mercadorias _mercadorias = new Realsoft_Mercadorias();

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
                
                CbSituacaoTributaria.Items.Clear();
                CbGrupo.Items.Clear();
                CbSubGrupo.Items.Clear();
                CbSecao.Items.Clear();
                CbFamilia.Items.Clear();
                CbCST.Items.Clear();

                List<Realsoft_SituacaoTributaria> _listast = Realsoft_Consultas.Listar_SituacaoTributaria();
                List<Realsoft_Grupo> _listargrupo = Realsoft_Consultas.Listar_Grupo();
                List<Realsoft_SubGrupo> _listarsubgrupo = Realsoft_Consultas.Listar_SubGrupo();
                List<Realsoft_Secao> _listarsecao = Realsoft_Consultas.Listar_Secao();
                List<Realsoft_Familia> _listarfamilia = Realsoft_Consultas.Listar_Familia();
                List<Realsoft_CST> _listarcst = Realsoft_Consultas.Listar_CST();

                for (int i = 0; i <= _listast.Count - 1; i++)
                {
                    CbSituacaoTributaria.Items.Add(_listast[i].Descricao);
                }

                for (int a = 0; a <= _listargrupo.Count - 1; a++)
                {
                    CbGrupo.Items.Add(_listargrupo[a].Descricao);
                }

                for (int b = 0; b <= _listarsubgrupo.Count - 1; b++)
                {
                    CbSubGrupo.Items.Add(_listarsubgrupo[b].Descricao);
                }

                for (int c = 0; c <= _listarsecao.Count - 1; c++)
                {
                    CbSecao.Items.Add(_listarsecao[c].Descricao);
                }

                for (int d = 0; d <= _listarfamilia.Count - 1; d++)
                {
                    CbFamilia.Items.Add(_listarfamilia[d].Descricao);
                }

                for (int g = 0; g <= _listarcst.Count - 1; g++)
                {
                    if (_listarcst[g].Descricao.Trim().Length > 30)
                    {
                        CbCST.Items.Add(_listarcst[g].Codigo.ToString() + " - " + _listarcst[g].Descricao.Substring(0, 25));
                    }
                    else
                    {
                        CbCST.Items.Add(_listarcst[g].Codigo.ToString() + " - " + _listarcst[g].Descricao);
                    }
                }


                _mercadorias = null;

                SqlDataSource1.ConnectionString = Realsoft_Parametro.parametroconexao;
                SqlDataSource1.SelectCommand = "SELECT TOP 200 * FROM REALSOFT_ESTOQUE";
            }
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
            if (_mercadorias == null)
            {
                _mercadorias = new Realsoft_Mercadorias();

                _mercadorias._codigo = Convert.ToDecimal(TxCodigo.Text);
                _mercadorias._EAN = TxCodigoBarras.Text;
                _mercadorias._Descricao = TxDescricao.Text;
                _mercadorias._CodigoNCM = Convert.ToDecimal(TxCodigoNCM.Text);
                _mercadorias._DescricaoNCM = "";
                _mercadorias._CPFCNPJ = TxCodigoFornecedor.Text;
                _mercadorias._Fabricante = LbFornecedor.Text;
                _mercadorias._Grupo = CbGrupo.Text;
                _mercadorias._SubGrupo = CbSubGrupo.Text;
                _mercadorias._Familia = CbFamilia.Text;
                _mercadorias._Secao = CbSecao.Text;
                _mercadorias._UnidadeMedida = CbUnidadeMedida.Text;
                _mercadorias._Conversao = Convert.ToDecimal(TxConversao.Text);
                _mercadorias._Origem = CbOrigem.Text;
                _mercadorias._CST = CbCST.Text;
                string Tributaria = Realsoft_Consultas.Consultar_SituacaoTributaria(CbSituacaoTributaria.Text);
                _mercadorias._SituacaoTributaria = Tributaria;
                _mercadorias._Quantidade = Convert.ToDecimal(TxQuantidade.Text);
                _mercadorias._Peso = Convert.ToDecimal(Decimal.Parse(TxPeso.Text).ToString("#####0.00"));
                _mercadorias._ICMS = Convert.ToDecimal(Decimal.Parse(TxICMS.Text).ToString("#####0.00"));
                _mercadorias._BaseCalculo = Convert.ToDecimal(Decimal.Parse(TxBaseCalculo.Text).ToString("#####0.00"));
                _mercadorias._BaseCST = Convert.ToDecimal(Decimal.Parse(TxBaseCST.Text).ToString("#####0.00"));
                _mercadorias._MVA = Convert.ToDecimal(Decimal.Parse(TxMVA.Text).ToString("#####0.00"));
                _mercadorias._IPI = Convert.ToDecimal(Decimal.Parse(TxIPI.Text).ToString("#####0.00"));
                _mercadorias._Validade = Convert.ToInt32(TxValidade.Text);
                _mercadorias._Aliquata = Convert.ToDecimal(TxAliquota.Text);
                _mercadorias._PisCofins = CbPisCofins.Text;
                _mercadorias._ValorPis = Convert.ToDecimal(Decimal.Parse(TxValorPis.Text).ToString("#####0.00"));
                _mercadorias._ValorCofins = Convert.ToDecimal(Decimal.Parse(TxValorCofins.Text).ToString("#####0.00"));
                _mercadorias._CFOP = Convert.ToDecimal(TxCFOP.Text);
                _mercadorias._CFOPTransferencia = Convert.ToDecimal(TxCFOPTransferencia.Text);
                _mercadorias._CFOPDevolucao = Convert.ToDecimal(TxCFOPDevolucao.Text);
                _mercadorias._PrecoCusto = Convert.ToDecimal(Decimal.Parse(TxPrecoCusto.Text).ToString("#####0.00"));
                _mercadorias._PrecoVenda = Convert.ToDecimal(Decimal.Parse(TxPrecoVenda.Text).ToString("#####0.00"));
                _mercadorias._Fracionado = ChPesavel.Checked;
                _mercadorias._Ativo = true;

                List<Realsoft_Mercadorias> _produto = Realsoft_Consultas.Consultar_Mercadorias(TxCodigoBarras.Text);

                if (_produto.Count == 0)
                {
                    Realsoft_Insere.Insere_Mercadoria(_mercadorias);
                    LimparCampos();
                    throw new Exception("MERCADORIAS CRIADA COM SUCESSO!!!");
                }
                else
                {
                    for (int i = 0; i <= _produto.Count - 1; i++)
                    {
                        TxCodigo.Text = _produto[i]._codigo.ToString();
                        TxCodigoBarras.Text = _produto[i]._EAN;
                        TxDescricao.Text = _produto[i]._Descricao;
                        TxCodigoNCM.Text = _produto[i]._CodigoNCM.ToString();
                        _produto[i]._DescricaoNCM = "";
                        TxCodigoFornecedor.Text = _produto[i]._CPFCNPJ;
                        LbFornecedor.Text = _produto[i]._Fabricante;
                        CbGrupo.Text = _produto[i]._Grupo;
                        CbSubGrupo.Text = _produto[i]._SubGrupo;
                        CbFamilia.Text = _produto[i]._Familia;
                        CbSecao.Text = _produto[i]._Secao;
                        CbUnidadeMedida.Text = _produto[i]._UnidadeMedida;
                        TxConversao.Text = _produto[i]._Conversao.ToString();
                        CbOrigem.Text = _produto[i]._Origem;
                        //CbCST.Text = _produto[i]._CST;
                        //CbSituacaoTributaria.Text = _produto[i]._SituacaoTributaria;
                        TxQuantidade.Text = _produto[i]._Quantidade.ToString();
                        TxPeso.Text = _produto[i]._Peso.ToString();
                        TxICMS.Text = _produto[i]._ICMS.ToString();
                        TxBaseCalculo.Text = _produto[i]._BaseCalculo.ToString();
                        TxBaseCST.Text = _produto[i]._BaseCST.ToString();
                        TxMVA.Text = _produto[i]._MVA.ToString();
                        TxIPI.Text = _produto[i]._IPI.ToString();
                        TxValidade.Text = _produto[i]._Validade.ToString();
                        TxAliquota.Text = _produto[i]._Aliquata.ToString();
                        CbPisCofins.Text = _produto[i]._PisCofins ;
                        TxValorPis.Text = _produto[i]._ValorPis.ToString();
                        TxValorCofins.Text = _produto[i]._ValorCofins.ToString();
                        TxCFOP.Text = _produto[i]._CFOP.ToString();
                        TxCFOPTransferencia.Text = _produto[i]._CFOPTransferencia.ToString();
                        TxCFOPDevolucao.Text = _produto[i]._CFOPDevolucao.ToString();
                        TxPrecoCusto.Text = _produto[i]._PrecoCusto.ToString();
                        TxPrecoVenda.Text = _produto[i]._PrecoVenda.ToString();
                        ChPesavel.Checked = _produto[i]._Fracionado;
                        ChAtivo.Checked = _produto[i]._Ativo;

                        throw new Exception("PRODUTO JA CADASTRADO ");
                    }
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
        _Produtos_.ShowOnPageLoad = true;
        _Produtos_.Modal = true;
        _Produtos_.ModalBackgroundStyle.Opacity = 70;
        _Produtos_.ModalBackgroundStyle.BackColor = Color.Black;

        _Produtos_.PopupHorizontalAlign = DevExpress.Web.ASPxClasses.PopupHorizontalAlign.WindowCenter;
        _Produtos_.PopupVerticalAlign = DevExpress.Web.ASPxClasses.PopupVerticalAlign.WindowCenter;


        LimparCampos();
    }

    private void LimparCampos()
    {
        try
        {
            _mercadorias = null;

            TxCodigo.BorderColor = Color.SteelBlue;
            TxDescricao.BorderColor = Color.SteelBlue;
            TxCodigoNCM.BorderColor = Color.SteelBlue;
            TxValidade.BorderColor = Color.SteelBlue;

            LbStatus.Text = "";
            TxCodigo.Focus();

            ChPesavel.Checked = false;

            TxCodigo.Text = "";
            TxCodigoBarras.Text = "";
            TxDescricao.Text = "";
            TxCodigoNCM.Text = "11000000";
            //LBDescricaoNCM.ResetText();
            TxCodigoFornecedor.Text = "";
            LbFornecedor.Text = "";
            TxValidade.Text = "0";
            CbGrupo.SelectedIndex = 0;
            CbSubGrupo.SelectedIndex = 0;
            CbFamilia.SelectedIndex = 0;
            CbSecao.SelectedIndex = 0;
            CbUnidadeMedida.SelectedIndex = 0;
            CbSituacaoTributaria.SelectedIndex = 0;
            Decimal.Parse(TxConversao.Text = "0,00").ToString("#####0.00");
            CbOrigem.SelectedIndex = 0;
            CbCST.SelectedIndex = 4;
            TxQuantidade.Text = "0";
            Decimal.Parse(TxPeso.Text = "0,00").ToString("#####0.00");
            Decimal.Parse(TxICMS.Text = "0,00").ToString("#####0.00");
            Decimal.Parse(TxBaseCalculo.Text = "0,00").ToString("#####0.00");
            Decimal.Parse(TxBaseCST.Text = "0,00").ToString("#####0.00");
            Decimal.Parse(TxMVA.Text = "0,00").ToString("#####0.00");
            CbPisCofins.SelectedIndex = 4;
            Decimal.Parse(TxValorPis.Text = "0,00").ToString("#####0.00");
            Decimal.Parse(TxValorCofins.Text = "0,00").ToString("#####0.00");
            TxCFOP.Text = "1102";
            TxCFOPTransferencia.Text = "1152";
            TxCFOPDevolucao.Text = "1201";
            Decimal.Parse(TxPrecoCusto.Text = "0,00").ToString("#####0.00");
            Decimal.Parse(TxPrecoVenda.Text = "0,00").ToString("#####0.00");
            Decimal.Parse(TxAliquota.Text = "0,00").ToString("#####0.00");
            Decimal.Parse(TxIPI.Text = "0,00").ToString("#####0.00");

            TxCodigo.Text = Realsoft_Parametro._Codigo.Next(999999).ToString();
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }

    }

    protected void BtGerarCodigo_Click(object sender, EventArgs e)
    {
        try
        {
            if (!String.IsNullOrEmpty(TxCodigoBarras.Text))
            {                
                List<Realsoft_Mercadorias> _merc = Realsoft_Consultas.Consultar_Mercadorias(TxCodigoBarras.Text);

                if (_merc != null)
                {
                    for (int i = 0; i <= _merc.Count - 1; i++)
                    {
                        TxCodigo.Text = _merc[i].codigo.ToString();
                        TxCodigo.BorderColor = Color.Yellow;
                        TxDescricao.Text = _merc[i].Descricao;
                        TxDescricao.BorderColor = Color.Yellow;
                        TxCodigoNCM.Text = _merc[i].CodigoNCM.ToString();
                        TxCodigoNCM.BorderColor = Color.Yellow;
                        //LBDescricaoNCM.ResetText();
                        TxValidade.Text = _merc[i].Validade.ToString();
                        TxValidade.BorderColor = Color.Yellow;
                        CbGrupo.Text = _merc[i].Grupo;
                        CbSubGrupo.Text = _merc[i].SubGrupo;
                        CbFamilia.Text = _merc[i].Familia;
                        CbSecao.Text = _merc[i].Secao;
                        CbUnidadeMedida.Text = _merc[i].UnidadeMedida;
                        CbSituacaoTributaria.Text = _merc[i].SituacaoTributaria;
                        TxConversao.Text = _merc[i].Conversao.ToString();
                        CbOrigem.Text = _merc[i].Origem;
                        CbCST.Text = _merc[i].CST;
                        TxQuantidade.Text = _merc[i].Quantidade.ToString();
                        TxPeso.Text = _merc[i].Peso.ToString();
                        TxICMS.Text = _merc[i].ICMS.ToString();
                        TxBaseCalculo.Text = _merc[i].BaseCalculo.ToString();
                        TxBaseCST.Text = _merc[i].BaseCST.ToString();
                        TxMVA.Text = _merc[i].MVA.ToString();
                        CbPisCofins.Text = _merc[i].PisCofins;
                        TxValorPis.Text = _merc[i].ValorPis.ToString();
                        TxValorCofins.Text = _merc[i].ValorCofins.ToString();
                        TxCFOP.Text = _merc[i].CFOP.ToString();
                        TxCFOPTransferencia.Text = _merc[i].CFOPTransferencia.ToString();
                        TxCFOPDevolucao.Text = _merc[i].CFOPDevolucao.ToString();
                        TxPrecoCusto.Text = _merc[i].PrecoCusto.ToString();
                        TxPrecoVenda.Text = _merc[i].PrecoVenda.ToString();
                        TxAliquota.Text = _merc[i].Aliquata.ToString();
                        TxIPI.Text = _merc[i].IPI.ToString();
                        ChAtivo.Checked = _merc[i].Ativo;
                        ChPesavel.Checked = _merc[i].Fracionado;
                    }
                }
                else
                {
                    throw new HttpException("CODIGO DE BARRAS NÃO ENCONTRADO");
                }
            }
            else
            {
                if (ChPesavel.Checked == true)
                {
                    Random _rd = new Random();
                    TxCodigoBarras.Text = _rd.Next(9999).ToString();
                }
                else
                {
                    Realsoft_Parametro.Codigo = TxCodigo.Text;
                    string fullURL = "window.open('Realsoft_CodigoEAN.aspx', '_blank', 'height=500,width=900');";
                    ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
                }
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    protected void BtBuscarFornecedor_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (!String.IsNullOrEmpty(TxCodigoFornecedor.Text))
            {
                Realsoft_Fornecedor _fornecedor = Realsoft_Consultas.Consultar_Fornecedor(TxCodigoFornecedor.Text);

                LbFornecedor.Text = _fornecedor.RazaoSocial;
            }
            else
            {
                throw new HttpException("POR FAVOR INFORME O CNPJ OU O CODIGO DO FORNECEDOR");
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtFornecedor_Click(object sender, EventArgs e)
    {
        try
        {

            if (!String.IsNullOrEmpty(TxCodigo.Text))
            {
                _mercadorias = new Realsoft_Mercadorias();

                _mercadorias._codigo = Convert.ToDecimal(TxCodigo.Text);
                _mercadorias._EAN = TxCodigoBarras.Text;
                _mercadorias._Descricao = TxDescricao.Text;
                _mercadorias._CodigoNCM = Convert.ToDecimal(TxCodigoNCM.Text);
                _mercadorias._DescricaoNCM = "";
                _mercadorias._CPFCNPJ = TxCodigoFornecedor.Text;
                _mercadorias._Fabricante = LbFornecedor.Text;
                _mercadorias._Grupo = CbGrupo.Text;
                _mercadorias._SubGrupo = CbSubGrupo.Text;
                _mercadorias._Familia = CbFamilia.Text;
                _mercadorias._Secao = CbSecao.Text;
                _mercadorias._UnidadeMedida = CbUnidadeMedida.Text;
                _mercadorias._Conversao = Convert.ToDecimal(TxConversao.Text);
                _mercadorias._Origem = CbOrigem.Text;
                _mercadorias._CST = CbCST.Text;
                string Tributaria = Realsoft_Consultas.Consultar_SituacaoTributaria(CbSituacaoTributaria.Text);
                _mercadorias._SituacaoTributaria = Tributaria;
                _mercadorias._Quantidade = Convert.ToDecimal(TxQuantidade.Text);
                _mercadorias._Peso = Convert.ToDecimal(Decimal.Parse(TxPeso.Text).ToString("#####0.00"));
                _mercadorias._ICMS = Convert.ToDecimal(Decimal.Parse(TxICMS.Text).ToString("#####0.00"));
                _mercadorias._BaseCalculo = Convert.ToDecimal(Decimal.Parse(TxBaseCalculo.Text).ToString("#####0.00"));
                _mercadorias._BaseCST = Convert.ToDecimal(Decimal.Parse(TxBaseCST.Text).ToString("#####0.00"));
                _mercadorias._MVA = Convert.ToDecimal(Decimal.Parse(TxMVA.Text).ToString("#####0.00"));
                _mercadorias._IPI = Convert.ToDecimal(Decimal.Parse(TxIPI.Text).ToString("#####0.00"));
                _mercadorias._Validade = Convert.ToInt32(TxValidade.Text);
                _mercadorias._Aliquata = Convert.ToDecimal(TxAliquota.Text);
                _mercadorias._PisCofins = CbPisCofins.Text;
                _mercadorias._ValorPis = Convert.ToDecimal(Decimal.Parse(TxValorPis.Text).ToString("#####0.00"));
                _mercadorias._ValorCofins = Convert.ToDecimal(Decimal.Parse(TxValorCofins.Text).ToString("#####0.00"));
                _mercadorias._CFOP = Convert.ToDecimal(TxCFOP.Text);
                _mercadorias._CFOPTransferencia = Convert.ToDecimal(TxCFOPTransferencia.Text);
                _mercadorias._CFOPDevolucao = Convert.ToDecimal(TxCFOPDevolucao.Text);
                _mercadorias._PrecoCusto = Convert.ToDecimal(Decimal.Parse(TxPrecoCusto.Text).ToString("#####0.00"));
                _mercadorias._PrecoVenda = Convert.ToDecimal(Decimal.Parse(TxPrecoVenda.Text).ToString("#####0.00"));
                _mercadorias._Fracionado = ChPesavel.Checked;
                _mercadorias._Ativo = ChAtivo.Checked;

                Realsoft_Atualiza.Atualizar_Mercadoria(_mercadorias);
                throw new HttpException("MERCADORIA ATUALIZADA COM SUCESSO");
            }
            else
            {
                throw new HttpException("PRODUTO NÃO ATUALIZADO");
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true); 
        }
    }
    protected void BtCalcular_Click(object sender, ImageClickEventArgs e)
    {
        try { 
            if (!String.IsNullOrEmpty(TxMargemSugerido.Text))
            {
                decimal margem = decimal.Parse(TxMargemSugerido.Text.Replace("%","").Replace(".",""));
                decimal pcusto = decimal.Parse(TxPrecoCusto.Text.Replace(".",","));
                decimal valor = 0;

                valor = decimal.Add(decimal.Multiply(margem, pcusto) / 100, pcusto);

                TxPrecoVenda.Text = valor.ToString("#####0.00");
            }
            else
            {
                throw new HttpException("NÃO FOI POSSÍVEL CALCULAR O PRECO DE VEDA POR FAVOR VERIFIQUE");
            }
        }
        catch (Exception ex)
        { ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true); }
    }

    private Realsoft_Mercadorias _mercadoria = new Realsoft_Mercadorias();
    protected void BtListar_Click(object sender, EventArgs e)
    {
        try
        {
            PopProdutos.ShowOnPageLoad = true;
            PopProdutos.Modal = true;
            PopProdutos.ModalBackgroundStyle.Opacity = 70;
            PopProdutos.ModalBackgroundStyle.BackColor = Color.Black;

            PopProdutos.PopupHorizontalAlign = DevExpress.Web.ASPxClasses.PopupHorizontalAlign.WindowCenter;
            PopProdutos.PopupVerticalAlign = DevExpress.Web.ASPxClasses.PopupVerticalAlign.WindowCenter;

       
            AlteraPRECOS.ConnectionString = Realsoft_Parametro.parametroconexao;
            AlteraPRECOS.ProviderName = Realsoft_Parametro.tipoconexao;
            AlteraPRECOS.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS";
            
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtBuscar_Click(object sender, EventArgs e)
    {
        try
        {

            AlteraPRECOS.ConnectionString = Realsoft_Parametro.parametroconexao;
            AlteraPRECOS.ProviderName = Realsoft_Parametro.tipoconexao;

            if (RdDescricao.Checked)
            {
                AlteraPRECOS.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS WHERE MERCADORIA LIKE '%" + TxDescricao0.Text + "%'";
            }
            else if (RdCodigo.Checked)
            {
                AlteraPRECOS.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS WHERE EAN = '" + TxCodigoBarras0.Text + "'";
            }
            else
            {
                AlteraPRECOS.SelectCommand = "SELECT CODIGO, EAN, MERCADORIA, PRECOCUSTO, PRECOVENDA FROM REALSOFT_MERCADORIAS";
            }


        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    public static Boolean NovoPreco;
    protected void BtSalvar_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (NovoPreco == true)
            {
                if (TxPreco.Text.Length != 0)
                {
                    Realsoft_Mercadorias _mercadoria = new Realsoft_Mercadorias();

                    Realsoft_Atualiza.Update_Precificacao_Mercadoria(TxCodigoBarras.Text, decimal.Parse(TxPreco.Text));
                    ConexaoCaixa.Update_Precificacao_MercadoriaCaixa(TxCodigoBarras.Text, decimal.Parse(TxPreco.Text));

                    _mercadoria._codigo = decimal.Parse(Realsoft_Parametro.Codigo);
                    _mercadoria._EAN = TxCodigoBarras0.Text;
                    _mercadoria._Descricao = TxDescricao0.Text;
                    _mercadoria._PrecoVenda = decimal.Parse(TxPreco.Text);

                    Realsoft_Insere.Insere_NovoprecoMercadoria(_mercadoria);

                    throw new Exception("Preço alterado com sucesso");
                }
            }

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void DgPrecos_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Salvar")
            {
                int currentRowIndex = Int32.Parse(e.CommandArgument.ToString());
                //string ProductID = DgPrecos.DataKeys[currentRowIndex].Value.ToString(); 
                GridViewRow row = DgPrecos.Rows[currentRowIndex];

                TxPreco.Text = Server.HtmlDecode(row.Cells[4].Text);
                TxCodigoBarras0.Text = Server.HtmlDecode(row.Cells[1].Text);
                Realsoft_Parametro.Codigo = Server.HtmlDecode(row.Cells[0].Text);
                TxDescricao0.Text = Server.HtmlDecode(row.Cells[2].Text);

                NovoPreco = true;
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void DgPrecos_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {

            _mercadoria = new Realsoft_Mercadorias();

            string valor = DgPrecos.SelectedRow.Cells[1].Text;

            _mercadoria._codigo = decimal.Parse(Realsoft_Parametro.Codigo);
            _mercadoria._EAN = DgPrecos.SelectedRow.Cells[1].Text;
            _mercadoria._Descricao = DgPrecos.SelectedRow.Cells[2].Text;
            _mercadoria._PrecoVenda = decimal.Parse(DgPrecos.SelectedRow.Cells[4].Text);


            Realsoft_Insere.Insere_NovoprecoMercadoria(_mercadoria);

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void DgPrecos_RowUpdated1(object sender, GridViewUpdatedEventArgs e)
    {

    }
    protected void AlteraPRECOS_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {


    }
    protected void v(object sender, EventArgs e)
    {

    }
    protected void BtNew_Click(object sender, EventArgs e)
    {
        LimparCampos();
    }
}