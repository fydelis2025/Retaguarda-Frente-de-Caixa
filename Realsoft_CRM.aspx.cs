using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _CRM : System.Web.UI.Page
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

                LbExcluidas.Text = Realsoft_Consultas.Consultar_CRMExcluido().ToString();
                LbAprovadas.Text = Realsoft_Consultas.Consultar_CRMAprovada().ToString();
                LbReprovadas.Text = Realsoft_Consultas.Consultar_CRMReprovada().ToString();
                LbElaborando.Text = Realsoft_Consultas.Consultar_CRMElaborando().ToString();
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
            TxCliente.Text = "";
            TxContato.Text = "";
            TxProposta.Text = "";
            TxEmail.Text = "";
            TxTitulo.Text = "";
            TxProjeto.Text = "";
            CbPrazo.Text = "";
            CbEtapa.Text = "";
            CbValidade.Text = "";

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtGravar_Click(object sender, EventArgs e)
    {
        try
        {
            Realsoft_CRM _cmr = new Realsoft_CRM();

            _cmr.Cliente = TxCliente.Text;
            _cmr.Contato = TxContato.Text;
            _cmr.Titulo = TxTitulo.Text;
            _cmr.Prazo = int.Parse(CbPrazo.Text);
            _cmr.Validade = CbValidade.Text;
            _cmr.Projeto = TxProjeto.Text;
            _cmr.Etapa = CbEtapa.Text;
            _cmr.ModeloProposta = TxProposta.Text;
            _cmr.Email = TxEmail.Text;

            Realsoft_Insere.Insere_NovoCRM(_cmr);

            CRM.ConnectionString = Realsoft_Parametro.parametroconexao;
            CRM.ProviderName = Realsoft_Parametro.tipoconexao;
            CRM.SelectCommand = "SELECT CLIENTE, TITULOPROPOSTA, PRAZO, EMAIL, FINALIZADO  FROM CONSULTAR_CRM ";

            throw new HttpException("CRM CRIADO COM SUCESSO");
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtEnviar_Click(object sender, EventArgs e)
    {
        try
        {

        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Finalizar")
            {
                int currentRowIndex = Int32.Parse(e.CommandArgument.ToString());

                GridViewRow row = GridView1.Rows[currentRowIndex];

                String Cliente = Server.HtmlDecode(row.Cells[2].Text);
                String TituloProposta = Server.HtmlDecode(row.Cells[3].Text);

                Realsoft_Atualiza.Update_CRM(Cliente, TituloProposta);

                throw new HttpException("PROJETO FINALIZADO COM SUCESSO");
 
            }

            if (e.CommandName == "Excluir")
            {
                int currentRowIndex = Int32.Parse(e.CommandArgument.ToString());

                GridViewRow row = GridView1.Rows[currentRowIndex];

                String Cliente = Server.HtmlDecode(row.Cells[2].Text);
                String TituloProposta = Server.HtmlDecode(row.Cells[3].Text);

                Realsoft_Excluir.Excluir_CRM(Cliente, TituloProposta);

                throw new HttpException("PROJETO EXCLUIDO COM SUCESSO");
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtManutencao_Click(object sender, EventArgs e)
    {
        try
        {
            string fullURL = "window.open('Realsoft_ManutencaoCRM.aspx', '_blank', 'height=800,width=1024');";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}