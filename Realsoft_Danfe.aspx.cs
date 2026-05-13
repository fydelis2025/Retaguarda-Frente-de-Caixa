using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Danfe : System.Web.UI.Page
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
                List<Realsoft_Prevenda> _extrato = Realsoft_Consultas.Listar_ImprimePrevenda(Realsoft_Parametro.NumeroPrevenda);

                List<Realsoft_Filial> lista = Realsoft_Consultas.Listar_Filial();

                String[] Param = new String[2];

                RptDanfe.ProcessingMode = ProcessingMode.Local;
                RptDanfe.LocalReport.DataSources.Clear();
                RptDanfe.LocalReport.ReportPath = Server.MapPath("~/Relatorios/RptDanfe.rdlc");
                ReportDataSource _relatorioextratocartao = new ReportDataSource("DataSet1", _extrato);
              
                _relatorioextratocartao.Value = _extrato;
                RptDanfe.LocalReport.DataSources.Add(_relatorioextratocartao);
                RptDanfe.LocalReport.Refresh();
                RptDanfe.ShowPrintButton = true;
                RptDanfe.Visible = true;


            }
        }
    }
}