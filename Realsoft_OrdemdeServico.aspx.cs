using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _OrdemdeServico : System.Web.UI.Page
{

    internal Random codigoorcamento = new Random();
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
          
         
        }
    }

    internal Realsoft_OrdemServico ordem = new Realsoft_OrdemServico();
    protected void BtNovo_Click(object sender, EventArgs e)
    {
        try
        {
            ordem = null;

            LbOrdemServico.Visible = true;

            TxCliente.Text = "";
            TxFone.Text = "";
            TxContato.Text = "";
            TxEndereco.Text = "";
            TxBairro.Text = "";
            TxCidadade.Text = "";
            TxUF.Text = "";
            TxProblema.Text = "";
            TxSolucao.Text = "";
            TxEquipamento.Text = "";
            TxCodigo.Text = "";
            TxDescricao.Text = "";
            TxUnidade.Text = "";
            TxQuantidade.Text = "1";
            TxPreco.Text = "0,00";
            TxAcrescimo.Text = "0,00";
            TxDescricao.Text = "0,00";
            TxMaoObra.Text = "0,00";
            TxTotalLiquido.Text = "0,00";
            TxTotalGeral.Text = "0,00";
            TxTecnico.Text = "";
            LbOrdemServico.Text = codigoorcamento.Next(999999).ToString("000000");

        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtGravar_Click(object sender, EventArgs e)
    {
        try
        {
            ordem = new Realsoft_OrdemServico();

            ordem.Situacao = CbSituacao.Text;
            ordem.Numero = decimal.Parse(LbOrdemServico.Text);
            ordem.CPF = TxCliente.Text;
            ordem.Fone = TxFone.Text;
            ordem.Contato = TxContato.Text;
            ordem.Endereco = TxEndereco.Text;
            ordem.Bairro = TxBairro.Text;
            ordem.Cidade = TxCidadade.Text;
            ordem.UF = TxUF.Text;
            ordem.Equipamento = TxEquipamento.Text;
            ordem.Problema = TxProblema.Text;
            ordem.Solucao = TxSolucao.Text;
            ordem.DataCriacao = DateTime.Now;


            Realsoft_Insere.Insere_OrdemServico(ordem);

            throw new HttpException("ORDEM DE SERVIÇO CRIADA COM SUCESSO, PARA IMPRIMIR CLIQUE EM IMPRIMIR NO BOTÃO ACIMA");
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
            

            decimal valor = decimal.Parse(TxPreco.Text);
            int quant = int.Parse(TxQuantidade.Text);

            Decimal total = Decimal.Multiply(valor, quant);


            TxTotalLiquido.Text = Server.HtmlEncode(total.ToString("#####0.00"));

            if (TxTotalGeral.Text != "")
            {
                Decimal totalliquido = Decimal.Parse(TxTotalLiquido.Text);
                Decimal TotalGeral = Decimal.Parse(TxTotalGeral.Text);
                Decimal Soma = TotalGeral + totalliquido;

                TxTotalGeral.Text = Soma.ToString("#####0.00");                
            }

            ordem = new Realsoft_OrdemServico();

            ordem.Numero = decimal.Parse(LbOrdemServico.Text);
            ordem.Codigo = decimal.Parse(TxCodigo.Text);
            ordem.Descricao = TxDescricao.Text;
            ordem.Unidade = TxUnidade.Text;
            ordem.Quantidade = int.Parse(TxQuantidade.Text);
            ordem.Preco = decimal.Parse(TxPreco.Text);             
            ordem.Acrescimo = decimal.Parse(TxAcrescimo.Text);
            ordem.Desconto = decimal.Parse(TxDesconto.Text);
            ordem.MaoObra = decimal.Parse(TxMaoObra.Text);
            ordem.TotalLiquido = decimal.Parse(TxTotalLiquido.Text);
            ordem.TotalGeral = decimal.Parse(TxTotalGeral.Text);
            

            Realsoft_Insere.Insere_MercadoriaOrdemServico(ordem);

            ORDEM.ConnectionString = Realsoft_Parametro.parametroconexao;
            ORDEM.ProviderName = Realsoft_Parametro.tipoconexao;
            ORDEM.SelectCommand = "SELECT CODIGO, DESCRICAO, QUANTIDADE, PRECO, TOTALLIQUIDO FROM REALSOFT_MERCADORIAORDEMSERVICO WHERE NUMERO = '" + LbOrdemServico.Text + "'";

            TxCodigo.Text = "";
            TxDescricao.Text = "";
            TxUnidade.Text = "UN";
            TxPreco.Text = "0,00";
            TxQuantidade.Text = "1";
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtCalcularTotalNF_Click(object sender, ImageClickEventArgs e)
    {
        try
        {

            Decimal Acrescimo = Decimal.Parse(TxAcrescimo.Text);

            Decimal Desconto = Decimal.Parse(TxDesconto.Text);

            Decimal soma = 0;

            if (Acrescimo != 0)
            {
                soma = Decimal.Parse(TxTotalGeral.Text) + Acrescimo + Decimal.Parse(TxMaoObra.Text);

                TxTotalGeral.Text = soma.ToString("#####0.00");
            }

            if (Desconto != 0)
            {
                soma = Decimal.Subtract(Decimal.Parse(TxTotalGeral.Text), Desconto) + Decimal.Parse(TxMaoObra.Text);

                TxTotalGeral.Text = soma.ToString("#####0.00");
            }


            ordem = new Realsoft_OrdemServico();
           
            ordem.Numero = decimal.Parse(LbOrdemServico.Text);
            ordem.Acrescimo = decimal.Parse(TxAcrescimo.Text);
            ordem.Desconto = decimal.Parse(TxDesconto.Text);
            ordem.MaoObra = decimal.Parse(TxMaoObra.Text);
            ordem.TotalGeral = decimal.Parse(TxTotalGeral.Text);
            ordem.Finalizado = true;
            ordem.Operador = 0;

            Boolean verificasefinalizado = Realsoft_Consultas.Consultar_TotalNFOrdemFinalizado(decimal.Parse(LbOrdemServico.Text));

            if (verificasefinalizado == true)
            {
                throw new HttpException("OPA, ORDEM DE SERVIÇO JA FINALIZADO, FAVOR VERIFIQUE");
            }

            Realsoft_Insere.Insere_TotalNFOrdemServico(ordem);

            throw new HttpException("NOTA FINALIZADA COM SUCESSO");
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtConsultarCPF_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (TxCliente.Text == "")
            {
                throw new HttpException("CLIENTE NÃO CADASTRADO");
            }
            else
            {
                Realsoft_Fornecedor _cliente = new Realsoft_Fornecedor();

                _cliente = Realsoft_Consultas.Consultar_Fornecedor(TxCliente.Text);

                if (_cliente == null)
                {
                    throw new HttpException("CLIENTE NÃO ENCONTRADO");
                }
                else
                {
                    TxFone.Text = _cliente.Telefone.ToString();
                    TxContato.Text = _cliente.Contato;
                    TxEndereco.Text = _cliente.Logradouro;
                    TxBairro.Text = _cliente.Bairro;
                    TxCidadade.Text = _cliente.Cidade;
                    TxUF.Text = _cliente.UF;
                }
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    protected void BtImprimir_Click(object sender, EventArgs e)
    {
        try
        {
            Realsoft_Parametro.NumeroPrevenda = int.Parse(LbOrdemServico.Text);

            string fullURL = "window.open('Realsoft_RptOrdem.aspx', '_blank', 'height=1000,width=1024');";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}