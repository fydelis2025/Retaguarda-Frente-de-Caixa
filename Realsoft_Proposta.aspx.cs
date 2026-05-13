using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Data.SqlClient;
using System.Data;
public partial class _Proposta : System.Web.UI.Page
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
                if (!IsPostBack)
                {
                    List<Realsoft_PropostaCartao> _extrato = Realsoft_Consultas.Listar_PropostaCliente(Realsoft_Parametro.NumeroPrevenda);

                    ReportViewer2.ProcessingMode = ProcessingMode.Local;
                    ReportViewer2.LocalReport.DataSources.Clear();
                    ReportViewer2.LocalReport.ReportPath = Server.MapPath("~/Proposta.rdlc");
                    ReportDataSource _relatorioextratocartao = new ReportDataSource("DataSet1", _extrato);
                    _relatorioextratocartao.Value = _extrato;
                    ReportViewer2.LocalReport.DataSources.Add(_relatorioextratocartao);
                    ReportViewer2.LocalReport.Refresh();
                    ReportViewer2.ShowPrintButton = true;
                    ReportViewer2.Visible = true;

                }
            }
        }
        catch (Exception ex)
        {
            string retorno = Realsoft_Criptografia.Encrypt(ex.Message, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            Session["ERROR"] = retorno;
            Response.Redirect("Realsoft_Error.aspx?ret=" + retorno);
        }

    }    
}