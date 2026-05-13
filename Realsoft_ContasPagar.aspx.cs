using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
public partial class _ContasPagar : System.Web.UI.Page
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
            List<Realsoft_Departamentos> _listardepartamento = Realsoft_Consultas.Listar_Departamento();
            List<Realsoft_PlanodeConta> _listarplanodecontas = Realsoft_Consultas.Listar_PlanodeContas();

            for (int i = 0; i <= _listardepartamento.Count - 1; i++)
            {
                CbDepartamento.Items.Add(_listardepartamento[i].Descricao);
            }

            for (int r = 0; r <= _listarplanodecontas.Count - 1; r++)
            {
                CbPlanoContas.Items.Add(_listarplanodecontas[r].Descricao);
            }
        }
    }
    protected void BtCalendario_Click(object sender, ImageClickEventArgs e)
    {
        DateTime dob = DateTime.ParseExact(Request.Form[TxDataEmissao.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtCalVencimento_Click(object sender, ImageClickEventArgs e)
    {
        DateTime dob = DateTime.ParseExact(Request.Form[TxDataVencimento.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtGerarParcelas_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (DateTime.Parse(TxDataVencimento.Text).CompareTo(DateTime.Parse(TxDataEmissao.Text)) < 0)
            {
                TxDataEmissao.Focus();
                //TxEmissao.SelectAll();

                return;
            }
           
            var parcela = Convert.ToInt32(TxNumero.Text);
            var valorTotal = Convert.ToDouble(TxTotal.Text);
            var vencimento = Convert.ToDateTime(TxDataVencimento.Text);
            var resultado = valorTotal / parcela;

            parcela = Convert.ToInt32(TxNumero.Text);

            for (var i = 0; i < parcela; i++)
            {
                Realsoft_Parcelas _parcelas = new Realsoft_Parcelas();

                int codigo = i + 1;
                _parcelas.Operacao = int.Parse(TxDocumento.Text);
                _parcelas.NumeroParcelas = Decimal.Parse(codigo.ToString());
                _parcelas.Vencimento = DateTime.Parse(vencimento.AddMonths(i + 1).ToString());
                _parcelas.ValorParcelas = Decimal.Parse(resultado.ToString());

                Realsoft_Insere.Insere_OperacaoFinanceira_Parcelas(_parcelas);                
            }

            NumeroParcelas.ConnectionString = Realsoft_Parametro.parametroconexao;
            NumeroParcelas.ProviderName = Realsoft_Parametro.tipoconexao;
            NumeroParcelas.SelectCommand = "SELECT PARCELAS, VENCIMENTO, VALORPARCELA FROM REALSOFT_OPERACAO_FINANCEIRAPARCELAS WHERE OPERACAO = '" + TxDocumento.Text + "'";
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('"+ex.Message +"')", true);
        }
    }

    private Realsoft_OperacaoFinanceira _operacaofinanc = new Realsoft_OperacaoFinanceira();
    protected void BtNovo_Click(object sender, EventArgs e)
    {
        try
        {
            _operacaofinanc = null;

            TxDescricao.Text = "";
            TxDocumento.Text = "0";
            TxDataEmissao.Text = "";
            TxDataVencimento.Text= "";
            TxValor.Text = "0,00";
            TxNumero.Text = "1";
            TxTotal.Text = "0,00";

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
            if (TxDescricao.Text != "")
            {
                _operacaofinanc = new Realsoft_OperacaoFinanceira();

                _operacaofinanc._Empresa = 1 ;
                _operacaofinanc._Fornecedor = TxDescricao.Text;
                _operacaofinanc._NumeroDocumento = decimal.Parse(TxDocumento.Text);
                _operacaofinanc._ValorTotal = decimal.Parse(TxTotal.Text);
                _operacaofinanc._Emissao = DateTime.Parse(TxDataEmissao.Text);
                _operacaofinanc._Vencimento = DateTime.Parse(TxDataVencimento.Text);
                _operacaofinanc._NumeroParcelas = int.Parse(TxNumero.Text);
                _operacaofinanc._ContaDebitada = CbPlanoContas.Text;


                Realsoft_Insere.Insere_OperacaoFinanceira(_operacaofinanc);

                throw new Exception("CONTA CADASTRADA COM SUCESSO");
            }
            else
            {
                throw new Exception("INFORME UMA DESCRIÇÃO PARA A CONTA");
            }
            
            
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    
    protected void BtPlanos_Click(object sender, ImageClickEventArgs e)
    {
        //ScriptManager.RegisterStartupScript(Page, typeof(Page), "OpenWindow", "window.open('Realsoft_PlanodeContas.aspx');", true);
       
    }
    protected void BtDepartamento_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void BtListar_Click(object sender, EventArgs e)
    {

    }
}