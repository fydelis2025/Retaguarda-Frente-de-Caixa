using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _RptOrdem : System.Web.UI.Page
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
                List<Realsoft_OrdemServico> _extrato = Realsoft_Consultas.Listar_OrdemServico(Realsoft_Parametro.NumeroPrevenda);

                List<Realsoft_Filial> lista = Realsoft_Consultas.Listar_Filial();                

                RptPrevenda.ProcessingMode = ProcessingMode.Local;
                RptPrevenda.LocalReport.DataSources.Clear();
                RptPrevenda.LocalReport.ReportPath = Server.MapPath("~/Relatorios/Report.rdlc");
                ReportDataSource _relatorioextratocartao = new ReportDataSource("DataSet1", _extrato);
                _relatorioextratocartao.Value = _extrato;
                RptPrevenda.LocalReport.DataSources.Add(_relatorioextratocartao);
                RptPrevenda.LocalReport.Refresh();
                RptPrevenda.ShowPrintButton = true;
                RptPrevenda.Visible = true;
            }
        }
    }
}