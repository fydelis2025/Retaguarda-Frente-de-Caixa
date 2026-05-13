using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Movimentacao : System.Web.UI.Page
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
                MovimentacaoECF.ConnectionString = Realsoft_Parametro.parametroconexao;
                MovimentacaoECF.ProviderName = Realsoft_Parametro.tipoconexao;
                MovimentacaoECF.SelectCommand = "SELECT TURNO, DATAMOVIMENTACAO, TIPO, MOVIMENTACAO, VALOR, OPERADOR, FISCAL,FINALIZADO, DATACRIACAO FROM REALSOFT_MOVIMENTACAOECF ORDER BY DATACRIACAO ";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtCalendario_Click(object sender, ImageClickEventArgs e)
    {
        DateTime dob = DateTime.ParseExact(Request.Form[TxInicial.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtCalendario0_Click(object sender, ImageClickEventArgs e)
    {
        DateTime dob = DateTime.ParseExact(Request.Form[TxFinal.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtBuscar_Click(object sender, EventArgs e)
    {
        try
        {
            if (TxInicial.Text != "" && TxFinal.Text != "")
            {
                DateTime DataInicial = DateTime.Parse(TxInicial.Text);
                DateTime DataFinal = DateTime.Parse(TxFinal.Text);

                MovimentacaoECF.ConnectionString = Realsoft_Parametro.parametroconexao;
                MovimentacaoECF.ProviderName = Realsoft_Parametro.tipoconexao;
                MovimentacaoECF.SelectCommand = "SELECT TURNO, DATAMOVIMENTACAO, TIPO, MOVIMENTACAO, VALOR, OPERADOR, FISCAL,FINALIZADO, DATACRIACAO FROM REALSOFT_MOVIMENTACAOECF WHERE DATACRIACAO between '" + DataInicial + "'AND'" + DataFinal + "'";
            }
            else
            {
                throw new HttpException("FAVOR INFORME A DATA INICIAL E A DATA FINAL");
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }

    }
}