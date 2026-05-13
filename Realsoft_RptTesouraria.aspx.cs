using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _RptTesouraria : System.Web.UI.Page
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

            if (!IsPostBack)
            {
                List<Realsoft_Tesouraria> _extrato = Realsoft_Consultas.Listar_TesourariaRetaguarda(Realsoft_Parametro.datainicial, Realsoft_Parametro.datafinal);

                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Relatorios/RptTesouraria.rdlc");
                ReportDataSource _relatorioextratocartao = new ReportDataSource("DataSet1", _extrato);
               
                _relatorioextratocartao.Value = _extrato;
                ReportViewer1.LocalReport.DataSources.Add(_relatorioextratocartao);
                ReportViewer1.LocalReport.Refresh();
                ReportViewer1.ShowPrintButton = true;
                ReportViewer1.Visible = true;


            }
        }
    }
}