using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Estoque : System.Web.UI.Page
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

            }

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
            if(RdGeral.Checked)
            {

                List<Realsoft_EstoqueProdutos> _extrato = Realsoft_Consultas.Listar_EstoqueProdutos();

                RptEstoque.ProcessingMode = ProcessingMode.Local;
                RptEstoque.LocalReport.DataSources.Clear();
                RptEstoque.LocalReport.ReportPath = Server.MapPath("~/Report2.rdlc");
                ReportDataSource _relatorioextratocartao = new ReportDataSource("DataSet1", _extrato);
                _relatorioextratocartao.Value = _extrato;
                RptEstoque.LocalReport.DataSources.Add(_relatorioextratocartao);
                RptEstoque.LocalReport.Refresh();
                RptEstoque.ShowPrintButton = true;
                RptEstoque.Visible = true;

                
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