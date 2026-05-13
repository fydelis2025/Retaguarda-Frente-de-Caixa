using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Pedido : System.Web.UI.Page
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
            CbUFEntrega.Items.Clear();
            CbUFFat.Items.Clear();
            CbUFTransp.Items.Clear();

            CbCidadeEntrega.Items.Clear();
            CbCidadeFat.Items.Clear();
            CbCidadeTransp.Items.Clear();

            TxDataEmissao.Text = DateTime.Now.ToString("dd/MM/yyyy");

            List<Realsoft_Estado> _estado = Realsoft_Consultas.Listar_Estados();
            List<Realsoft_Municipios> _municipio = Realsoft_Consultas.Listar_Municipios();

            for(int i=0; i<= _estado.Count -1; i++)
            {
                CbUFEntrega.Items.Add(_estado[i].Descricao);
                CbUFFat.Items.Add(_estado[i].Descricao);
                CbUFTransp.Items.Add(_estado[i].Descricao);
            }

            for (int r=0; r<= _municipio.Count -1; r++)
            {
                CbCidadeEntrega.Items.Add(_municipio[r].Descricao);
                CbCidadeFat.Items.Add(_municipio[r].Descricao);
                CbCidadeTransp.Items.Add(_municipio[r].Descricao);
            }
        }
    }

    protected void ChEndereco_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void BtOk_Click(object sender, EventArgs e)
    {
        try
        {
            if (ChEndereco.Checked)
            {
                TxCepEntrega.Text = TxCepFat.Text;
                TxLogadouroEntrega.Text = TxLogadouroFat.Text;
                TxComplementoEntrega.Text = TxComplementoFat.Text;
                TxBairroEntrega.Text = TxBairroFat.Text;
                CbCidadeEntrega.Text = CbCidadeFat.Text;
                CbUFEntrega.Text = CbUFFat.Text;
            }
            else
            {
                TxCepEntrega.Text = "";
                TxLogadouroEntrega.Text = "";
                TxComplementoEntrega.Text = "";
                TxBairroEntrega.Text = "";
                CbCidadeEntrega.Text = "";
                CbUFEntrega.Text = "";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtCepTransp_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Realsoft_BuscaCep _cep = new Realsoft_BuscaCep();
            _cep.Cep(TxCepTransp.Text);
            CbUFTransp.Text = _cep._uf;
            CbCidadeTransp.Text = _cep._cidade;
            TxBairroTransp.Text = _cep._bairro;
            //TxReferencia.Text = _cep._tipo_lagradouro;
            TxLogadouroTransp.Text = _cep._lagradouro;
            TxComplementoTransp.Text = _cep._resultado;
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtCepFat_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Realsoft_BuscaCep _cep = new Realsoft_BuscaCep();
            _cep.Cep(TxCepFat.Text);
            CbUFFat.Text = _cep._uf;
            CbCidadeFat.Text = _cep._cidade;
            TxBairroFat.Text = _cep._bairro;
            //TxReferencia.Text = _cep._tipo_lagradouro;
            TxLogadouroFat.Text = _cep._lagradouro;
            TxComplementoFat.Text = _cep._resultado;
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtCepEntrega_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Realsoft_BuscaCep _cep = new Realsoft_BuscaCep();
            _cep.Cep(TxCepEntrega.Text);
            CbUFEntrega.Text = _cep._uf;
            CbCidadeEntrega.Text = _cep._cidade;
            TxBairroEntrega.Text = _cep._bairro;
            //TxReferencia.Text = _cep._tipo_lagradouro;
            TxLogadouroEntrega.Text = _cep._lagradouro;
            TxComplementoEntrega.Text = _cep._resultado;
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
            if (e.Item.Value == "Novo")
            {
                Random rd = new Random();

                TxNmero.Text = rd.Next(999999).ToString();
                TxDataEmissao.Text = DateTime.Now.ToString("dd/MM/yyyy");
                TxVendedor.Text = "";
                TxCNPJ.Text = "";
                TxRazaoSocial.Text = "";
                TxIE.Text = "";
                TxCepTransp.Text = "0";
                TxFaxTransp.Text = "0";
                TxEmailTransp.Text = "";
                TxLogadouroTransp.Text = "";
                TxComplementoTransp.Text = "";
                TxNumeroTransp.Text = "0";
                TxBairroTransp.Text = "";
                TxContato.Text = "";
                TxTelefoneContato.Text = "0";
                TxMotorista.Text = "";
                TxHabilitacao.Text = "";
                TxCepFat.Text = "0";
                TxLogadouroFat.Text = "";
                TxComplementoFat.Text = "";
                TxBairroFat.Text = "";
                TxCepEntrega.Text = "0";
                TxLogadouroEntrega.Text = "";
                TxComplementoEntrega.Text = "";
                TxBairroEntrega.Text = "";
                TxCodigo.Text = "";
                TxDescricao.Text = "";
                TxUnidade.Text = "";
                TxQuantidade.Text = "0";
                TxPreco.Text = "";
                TxTotalLiquido.Text = "";
                TxTotal.Text = "0,00";
            }
            else if (e.Item.Value == "Gravar")
            {
                if (TxNmero.Text.Trim().Length == 0 )
                {
                    TxNmero.BorderColor = Color.Yellow;
                    throw new HttpException("PARA INICIAR UM PEDIDO DE VENDA É NECESSARIO CLICAR NO BOTÃO NOVO");
                }

                if(TxCNPJ.Text.Trim().Length == 0)
                {
                    TxCNPJ.BorderColor = Color.Yellow;
                    throw new HttpException("INFORME O CPF OU CNPJ");
                }

                if (TxRazaoSocial.Text.Trim().Length == 0)
                {
                    TxRazaoSocial.BorderColor = Color.Yellow;
                    throw new HttpException("INFORME A RAZÃO SOCIAL");
                }

                if (TxVendedor.Text.Trim().Length == 0)
                {
                    TxVendedor.BorderColor = Color.Yellow;
                    throw new HttpException("INFORME O VENDEDOR");
                }

                Realsoft_PedidoVendas _pedido = new Realsoft_PedidoVendas();

                _pedido.NumeroPedido = int.Parse(TxNmero.Text);
                _pedido.DataPedido = DateTime.Parse(TxDataEmissao.Text);
                _pedido.Pagamento = CbPagamento.Text;
                _pedido.Vendedor = TxVendedor.Text;
                _pedido.TipoTransporte = CbTipoTransporte.Text;
                _pedido.TipoPessoa = CbPessoa.Text;
                _pedido.CNPJ = TxCNPJ.Text;
                _pedido.RazaoSocial = TxRazaoSocial.Text;
                _pedido.IE = TxIE.Text;
                try { _pedido.CepTransportadora = int.Parse(TxCepTransp.Text); }
                catch (Exception ex) { TxCepTransp.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "CEP INVALIDO FAVOR CORRIGIR!!!" + "')", true); }
                try { _pedido.FaxTransportadora = int.Parse(TxFaxTransp.Text); }
                catch (Exception ex) { TxFaxTransp.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "NUMERO DO FAX INVALIDO FAVOR CORRIGIR!!!" + "')", true); }
                _pedido.EmailTransportadora = TxEmailTransp.Text;
                _pedido.LogradouroTransportadora = TxLogadouroTransp.Text;
                _pedido.ComplementoTransportadora = TxComplementoTransp.Text;
                try { _pedido.NumeroTransportadora = int.Parse(TxNumeroTransp.Text); }
                catch (Exception ex) { TxNumeroTransp.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "CAMPO NUMERO INVALIDO FAVOR CORRIGIR!!!" + "')", true); }
                _pedido.CidadeTransportadora = CbCidadeTransp.Text;
                _pedido.UFTransportadora = CbUFTransp.Text;
                _pedido.BairroTransportadora = TxBairroTransp.Text;
                _pedido.NomeContatoTransportadora = TxContato.Text;
                try { _pedido.TelefoneContatoTransportadora = int.Parse(TxTelefoneContato.Text); }
                catch (Exception ex) { TxTelefoneContato.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "TELEFONE DO CONTATO INVALIDO FAVOR CORRIGIR!!!" + "')", true); }
                _pedido.MotoristaTransportadora = TxMotorista.Text;
                _pedido.HabilitacaoTransportadora = TxHabilitacao.Text;
                try { _pedido.CepFaturamento = int.Parse(TxCepFat.Text); }
                catch (Exception ex) { TxCepFat.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "CEP INVALIDO FAVOR CORRIGIR!!!" + "')", true); }
                _pedido.LogradouroFaturamento = TxLogadouroFat.Text;
                _pedido.ComplementoFaturamento = TxComplementoFat.Text;
                _pedido.BairroFaturamento = TxBairroFat.Text;
                _pedido.CidadeFaturamento = CbCidadeFat.Text;
                _pedido.UFFaturamento = CbUFFat.Text;
                try { _pedido.CepEntrega = int.Parse(TxCepEntrega.Text); }
                catch (Exception ex) { TxCepEntrega.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "CEP INVALIDO FAVOR CORRIGIR!!!" + "')", true); }
                _pedido.LogradouroEntrega = TxLogadouroEntrega.Text;
                _pedido.ComplementoEntrega = TxComplementoEntrega.Text;
                _pedido.BairroEntrega = TxBairroEntrega.Text;
                _pedido.CidadeEntrega = CbCidadeEntrega.Text;
                _pedido.UFEntrega = CbUFEntrega.Text;

                Realsoft_Insere.Insere_NovoPedidoVendas(_pedido);

                throw new HttpException("PEDIDO CRIADO COM SUCESSO");
            }
            else if (e.Item.Value == "Imprimir")            
            {
                try
                {
                    string fullURL = "window.open('Realsoft_RelatorioPedidoVendas.aspx', '_blank', 'height=1100,width=1024');";
                    ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
                }
                
            }

        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtCalcular_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (TxDescricao.Text.Trim().Length != 0)
            {
                decimal valor = decimal.Parse(TxPreco.Text);
                int quant = int.Parse(TxQuantidade.Text);

                Decimal total = Decimal.Multiply(valor, quant);

                TxTotalLiquido.Text = Server.HtmlEncode(total.ToString("#####0.00"));

                if (TxTotal.Text != "")
                {
                    Decimal TotalLiquido = Decimal.Parse(TxTotalLiquido.Text);
                    Decimal TotalGeral = Decimal.Parse(TxTotal.Text);

                    Decimal Soma = TotalGeral + TotalLiquido;

                    TxTotal.Text = Soma.ToString("#####0.00");
                }

                Realsoft_PedidoVendasMercadorias _mercadorias = new Realsoft_PedidoVendasMercadorias();

                _mercadorias.NumeroPedido = int.Parse(TxNmero.Text);
                _mercadorias.CodigoProduto = TxCodigo.Text;
                _mercadorias.DescricaoProduto = TxDescricao.Text;
                try { _mercadorias.UnidadeProduto = TxUnidade.Text; }
                catch (Exception ex) { TxUnidade.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "FAVOR INFORMAR A UNIDADE MEDIDA" + "')", true); }
                _mercadorias.QuantidadeProduto = int.Parse(TxQuantidade.Text);
                _mercadorias.PrecoProduto = decimal.Parse(TxPreco.Text);
                _mercadorias.TotalLiquidoProduto = decimal.Parse(TxTotalLiquido.Text);


                Realsoft_Insere.Insere_NovoPedidoVendasMercadorias(_mercadorias);

                PEDIDO.ConnectionString = Realsoft_Parametro.parametroconexao;
                PEDIDO.ProviderName = Realsoft_Parametro.tipoconexao;
                PEDIDO.SelectCommand = "SELECT CODIGOPRODUTO, DESCRICAO , QUANTIDADE, PRECO, TOTALLIQUIDO FROM REALSOFT_PEDIDOVENDAMERCADORIAS WHERE PEDIDO = '" + TxNmero.Text + "'";

                TxCodigo.Text = "";
                TxDescricao.Text = "";
                TxUnidade.Text = "";
                TxPreco.Text = "";
                TxTotalLiquido.Text = "";
                TxQuantidade.Text = "1";
            }
            else
            {
                TxDescricao.BorderColor = Color.Yellow;
                throw new HttpException("ERRO AO CALCULAR O PRODUTO");
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }

    }
    protected void BtFinalizar_Click(object sender, EventArgs e)
    {
        try
        {
            if(TxTotal.Text.Trim().Length == 0)
             {
                 TxTotal.BorderColor = Color.Yellow;
                throw new HttpException("TOTAL INVÁLIDO FAVOR VERIFIQUE");
            }

            Realsoft_TotalPedidosVendas _totalpedido = new Realsoft_TotalPedidosVendas();

            try { _totalpedido.NumeroPedido = int.Parse(TxNmero.Text); }
            catch (Exception ex) { TxNmero.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "NUMERO DO PEDIDO INVALIDO" + "')", true); }            
            _totalpedido.TotalNF = decimal.Parse(TxTotal.Text);
            _totalpedido.Operador = Realsoft_Consultas.Consultar_IDUsuario(Realsoft_Parametro.UsuarioLogado);
            _totalpedido.Finalizado = true;

            Realsoft_Insere.Insere_FinalizaPedidoVendas(_totalpedido);

            throw new HttpException("PEDIDO FINALIZADO COM SUCESSO");
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    private Realsoft_Prevenda _prevenda = new Realsoft_Prevenda();
    protected void BtCodigo_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (TxNmero.Text == "")
            {
                throw new HttpException("NUMERO DA PREVENDA NÃO ENCONTRADO");
            }
            else
            {

                if (TxCodigo.Text == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "Mercadorias Prevenda", "window.open('Realsoft_MercadoriaPrevenda.aspx', 'MERCADORIAS', 'width=1024,height=600, scrollbars=yes,resizable=no')", true);
                }
                else
                {
                    _prevenda = Realsoft_Consultas.Consultar_MercadoriasPrevenda(TxCodigo.Text);

                    if (_prevenda != null)
                    {
                        TxDescricao.Text = _prevenda.DescricaoMercadoria;
                        TxPreco.Text = _prevenda.PrecoVenda.ToString("#####0.00");
                    }
                    else
                    {
                        throw new HttpException("MERCADORIA NÃO ENCONTRADA");
                    }
                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtConsultar_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string fullURL = "window.open('Realsoft_MercadoriaPrevenda.aspx', '_blank', 'width=1024,height=600, scrollbars=yes,resizable=no');";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtCNPJTransp_Click(object sender, ImageClickEventArgs e)
    {

    }
}