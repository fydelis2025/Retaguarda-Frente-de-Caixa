using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _PreVenda : System.Web.UI.Page
{
    internal Random codigoprevenda = new Random();

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
            if (Realsoft_Parametro.Codigoprevenda == true)
            {
                Realsoft_Parametro.Codigoprevenda = false;
                string erro = Session["CODIGOPREVENDA"].ToString();
                string retorno = Realsoft_Criptografia.Decrypt(erro, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
                TxCodigoItem.Text = retorno;
            }

            if (Realsoft_Parametro.cpfcliente == true)
            {
                Realsoft_Parametro.cpfcliente = false;
                string erro = Session["CPFCLIENTE"].ToString();
                string retorno = Realsoft_Criptografia.Decrypt(erro, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
                TxCpfCNPJ.Text = retorno;
            }
        }
    }

    private Realsoft_Prevenda _prevenda = new Realsoft_Prevenda();
    protected void BtConsultar_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (TxPrevenda.Text == "")
            {
                throw new HttpException("NUMERO DA PREVENDA NÃO ENCONTRADO");
            }
            else
            {

                if (TxCodigoItem.Text == "")
                {                    
                    ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "Mercadorias Prevenda", "window.open('Realsoft_MercadoriaPrevenda.aspx', 'MERCADORIAS', 'width=1024,height=600, scrollbars=yes,resizable=no')", true);
                }
                else
                {
                    _prevenda = Realsoft_Consultas.Consultar_MercadoriasPrevenda(TxCodigoItem.Text);

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
    protected void BtNovo_Click(object sender, EventArgs e)
    {
        try
        {
            _prevenda = null;

            TxPrevenda.Text = codigoprevenda.Next(999999).ToString();
            TxCpfCNPJ.Text = "";
            TxDescricao.Text = "";
            TxQuantidade.Text = "1";
            TxTotalItem.Text = "0,00";
            TxTotalPrevenda.Text = "0,00";
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
        
    }
    protected void BtAdicionar_Click(object sender, EventArgs e)
    {
        try
        {

            _prevenda = new Realsoft_Prevenda();

            _prevenda.Empresa = 1;
            _prevenda.Operador = Realsoft_Consultas.Consultar_IDUsuario(Realsoft_Parametro.UsuarioLogado);
			_prevenda.CPF = TxCpfCNPJ.Text;
			_prevenda.NumeroPrevenda = int.Parse(TxPrevenda.Text);
			_prevenda.TotalPrevenda = Decimal.Parse(TxTotalPrevenda.Text);
			_prevenda.Finalizado = false;

            Realsoft_Insere.Insere_TotalPreVenda(_prevenda);
            Realsoft_Parametro.NumeroPrevenda = int.Parse(TxPrevenda.Text);
            throw new Exception("PREVENDA CRIADA COM SUCESSO, PARA IMPRIMIR CLIQUE EM VISUALIZAR");

        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void TxQuantidade_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void BtConsultarCliente_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (TxCpfCNPJ.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "Clientes", "window.open('Realsoft_ClientesPrevenda.aspx', 'CLIENTES', 'width=1024,height=600, scrollbars=yes,resizable=no')", true);
            }
            else
            {
                String Retorno = Realsoft_Consultas.Consultar_NomeCliente(TxCpfCNPJ.Text);

                if (Retorno.Trim().Length == 0)
                {
                    throw new HttpException("CLIENTE NÃO ENCONTRADO");
                }
                else
                {
                    LbCliente.Visible = true;
                    LbCliente.Text = Retorno;
                }
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtConsultarMercadoria_Click(object sender, EventArgs e)
    {
        try
        {

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


            TxTotalItem.Text = Server.HtmlEncode(total.ToString("#####0.00"));

            if (TxTotalPrevenda.Text != "")
            {
                Decimal totalprev = Decimal.Parse(TxTotalItem.Text);
                Decimal TotalGeral = Decimal.Parse(TxTotalPrevenda.Text);
                Decimal Soma = TotalGeral + totalprev;

                TxTotalPrevenda.Text = Soma.ToString("#####0.00");
            }

            _prevenda = new Realsoft_Prevenda();

            _prevenda.Empresa = 1;
            _prevenda.NumeroPrevenda = int.Parse(TxPrevenda.Text);
            _prevenda.CPF = TxCpfCNPJ.Text;
            _prevenda.Mercadoria = int.Parse(TxCodigoItem.Text);
            _prevenda.DescricaoMercadoria = TxDescricao.Text;
            _prevenda.QuantidadeMercadoria = int.Parse(TxQuantidade.Text);
            _prevenda.PrecoVenda = decimal.Parse(TxPreco.Text);
            _prevenda.TotalLiquido = decimal.Parse(TxTotalItem.Text);
            _prevenda.TotalPrevenda = 0;
            _prevenda.Finalizado = false;
            _prevenda.Migrado = false;
            _prevenda.Cancelado = false;
            _prevenda.Operador = Realsoft_Consultas.Consultar_IDUsuario(Realsoft_Parametro.UsuarioLogado);

            Realsoft_Insere.Insere_NovaPrevenda(_prevenda);

            PREVENDA.ConnectionString = Realsoft_Parametro.parametroconexao;
            PREVENDA.ProviderName = Realsoft_Parametro.tipoconexao;
            PREVENDA.SelectCommand = "SELECT CODIGO, DESCRICAO , QUANTIDADE, PRECOVENDA, TOTALLIQUIDO FROM REALSOFT_PREVENDA WHERE PREVENDA = '" + TxPrevenda.Text + "'";

            TxCodigoItem.Text = "";
            TxDescricao.Text = "";
            TxTotalItem.Text = "";
            TxQuantidade.Text = "1";

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtVisualizar_Click(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Excluir")
            {

            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}