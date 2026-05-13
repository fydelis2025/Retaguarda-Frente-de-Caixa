using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _ManutencaoCRM : System.Web.UI.Page
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
                CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZO, EMAIL, FINALIZADO  FROM CONSULTAR_CRM ";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtConsultar_Click(object sender, EventArgs e)
    {
        try
        {
            if(RdElaborando.Checked)
            {
                if (TxCliente.Text != "")
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZOENTREGA, EMAIL, FINALIZADO  FROM REALSOFT_CRM WHERE CLIENTE = '" + TxCliente.Text + " AND ETAPADEVENDA = 'ELABORANDO' '";

                }
                else if (TxTitulo.Text != "")
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZOENTREGA, EMAIL, FINALIZADO  FROM REALSOFT_CRM WHERE TITULOPROPOSTA = '" + TxTitulo.Text + " AND ETAPADEVENDA = 'ELABORANDO' '";
                }
                else if (TxInicial.Text != "")
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZOENTREGA, EMAIL, FINALIZADO  FROM REALSOFT_CRM WHERE DATACRIACAO BETWEEN '" + TxInicial.Text + "'AND" + TxFinal.Text + " AND ETAPADEVENDA = 'ELABORANDO' '";

                }
                else
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZO, EMAIL, FINALIZADO  FROM CONSULTAR_CRM ";
                }

               
            }
            else if(RdFinalizado.Checked)
            {
                if (TxCliente.Text != "")
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZOENTREGA, EMAIL, FINALIZADO  FROM REALSOFT_CRM WHERE CLIENTE = '" + TxCliente.Text + " AND ETAPADEVENDA = 'FINALIZADO' '";

                }
                else if (TxTitulo.Text != "")
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZOENTREGA, EMAIL, FINALIZADO  FROM REALSOFT_CRM WHERE TITULOPROPOSTA = '" + TxTitulo.Text + " AND ETAPADEVENDA = 'FINALIZADO' '";
                }
                else if (TxInicial.Text !="")
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZOENTREGA, EMAIL, FINALIZADO  FROM REALSOFT_CRM WHERE DATACRIACAO BETWEEN '" + TxInicial.Text + "'AND" + TxFinal.Text + " AND ETAPADEVENDA = 'FINALIZADO' '";

                }
                else
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZO, EMAIL, FINALIZADO  FROM CONSULTAR_CRM ";
                }
            }
            else if (RdReprovado.Checked)
            {
                if (TxCliente.Text != "")
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZOENTREGA, EMAIL, FINALIZADO  FROM REALSOFT_CRM WHERE CLIENTE = '" + TxCliente.Text + " AND ETAPADEVENDA = 'REPROVADO' '";

                }
                else if (TxTitulo.Text != "")
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZOENTREGA, EMAIL, FINALIZADO  FROM REALSOFT_CRM WHERE TITULOPROPOSTA = '" + TxTitulo.Text + " AND ETAPADEVENDA = 'REPROVADO' '";
                }
                else if(TxInicial.Text != "")
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZOENTREGA, EMAIL, FINALIZADO  FROM REALSOFT_CRM WHERE DATACRIACAO BETWEEN '" + TxInicial.Text + "'AND" + TxFinal.Text + " AND ETAPADEVENDA = 'REPROVADO' '";

                }
                else
                {
                    CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
                    CRM.ProviderName = Realsoft_Parametro.tipoconexao;
                    CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZO, EMAIL, FINALIZADO  FROM CONSULTAR_CRM ";
                }
            }
            else
            {
                throw new HttpException("OPÇÃO INVÁLIDA");
            }

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}