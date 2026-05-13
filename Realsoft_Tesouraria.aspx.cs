using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Tesouraria : System.Web.UI.Page
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
                Tesouraria.ConnectionString = Realsoft_Parametro.parametroconexao;
                Tesouraria.ProviderName = Realsoft_Parametro.tipoconexao;
                Tesouraria.SelectCommand = "SELECT EMPRESA, ECF, TURNO, MOVIMENTACAO, VALORMOVIMENTACAO, RETIRADA, FISCAL, OPERADOR, DATAFECHAMENTO FROM REALSOFT_TESOURARIA ORDER BY DATACRIACAO ";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtVisualizar_Click(object sender, EventArgs e)
    {
        
    }
    protected void BtVisualizar_Click1(object sender, EventArgs e)
    {
        try
        {
            //Realsoft_RptTesouraria

            Realsoft_Parametro.datainicial = DateTime.Parse(TxDataInicial.Text);
            Realsoft_Parametro.datafinal = DateTime.Parse(TxDataFinal.Text);

            string fullURL = "window.open('Realsoft_RptTesouraria.aspx', '_blank', 'height=800,width=600');";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtBuscar_Click(object sender, EventArgs e)
    {
        try
        {
            if (TxDataInicial.Text != "" && TxDataFinal.Text != "")
            {
                DateTime DataInicial = DateTime.Parse(TxDataInicial.Text);
                DateTime DataFinal = DateTime.Parse(TxDataFinal.Text);

                Tesouraria.ConnectionString = Realsoft_Parametro.parametroconexao;
                Tesouraria.ProviderName = Realsoft_Parametro.tipoconexao;
                Tesouraria.SelectCommand = "SELECT EMPRESA, ECF, TURNO, MOVIMENTACAO, VALORMOVIMENTACAO, RETIRADA, FISCAL, OPERADOR, DATAFECHAMENTO FROM REALSOFT_TESOURARIA WHERE DATACRIACAO between '" + DataInicial + "'AND'" + DataFinal + "'";

                LbAvista.Text = Realsoft_Consultas.Consultar_TesourariaAvista(DataInicial, DataFinal).ToString("#####0.00");
                LbTef.Text = Realsoft_Consultas.Consultar_TesourariaTEF(DataInicial, DataFinal).ToString("#####0.00");
                LbCredPOS.Text = Realsoft_Consultas.Consultar_TesourariaCredPOS(DataInicial, DataFinal).ToString("#####0.00");
                LbDbPOS.Text = Realsoft_Consultas.Consultar_TesourariaDBPOS(DataInicial, DataFinal).ToString("#####0.00");
            }
            else
            {
                throw new HttpException("FAVOR INFORME A DATA INICIAL E A DATA FINAL");
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtCalendario_Click(object sender, ImageClickEventArgs e)
    {
        DateTime dob = DateTime.ParseExact(Request.Form[TxDataInicial.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtCalendario0_Click(object sender, ImageClickEventArgs e)
    {
        DateTime dob = DateTime.ParseExact(Request.Form[TxDataFinal.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
}