using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
public partial class _RealsoftNCM : System.Web.UI.Page
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
                CbUF.Items.Clear();
                
                List<Realsoft_Estado> _listaestado = Realsoft_Consultas.Listar_Estados();

                Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
                Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
                Mercadorias.SelectCommand = "SELECT CODIGO, DESCRICAO, UNIDADEMEDIDA, ALIQUOTA FROM REALSOFT_NCM";

                for (int i =0; i<= _listaestado.Count -1; i++)
                {
                    CbUF.Items.Add(_listaestado[i].Descricao);
                    
                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    private Realsoft_NovoNCM _cadncm = new Realsoft_NovoNCM();
    protected void BtNovo_Click(object sender, EventArgs e)
    {
        try
        {
            //_cadncm = null;
            
            TxCodigoNCM.Text = "";
            TxDescricaoNCM.Text = "";
            TxUnidadeNCM.Text = "";
            TxAliquotaNCM.Text = "0";
            TxIPI.Text = "0";
            TxPIS.Text = "0";
            TxMvAjustada.Text = "0";
            TxDevolucao.Text = "0";
            TxTransferencia.Text = "0";
            TxCofins.Text = "0";
            TxStTributaria.Text = "0";
            TxDescricaoN.Text = "";
            TxObs.Text = "";
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
            _cadncm = new Realsoft_NovoNCM();

            try { _cadncm.Codigo = int.Parse(TxCodigoNCM.Text); }
            catch (Exception ex) { TxCodigoNCM.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true); }            
            _cadncm.Descricao = TxDescricaoNCM.Text;
            _cadncm.Unidade = TxUnidadeNCM.Text;
            try { _cadncm.Aliquota = decimal.Parse(TxAliquotaNCM.Text); }
            catch (Exception ex) { TxCodigoNCM.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true); }
            _cadncm.UF = CbUF.Text;
            _cadncm.IPI = decimal.Parse(TxIPI.Text);
            _cadncm.PIS = decimal.Parse(TxPIS.Text);
            _cadncm.MVAAJUSTADA = decimal.Parse(TxMvAjustada.Text);
            _cadncm.CFOPDEVOLUCAO = int.Parse(TxDevolucao.Text);
            _cadncm.CFOPTRANSFERENCIA = int.Parse(TxTransferencia.Text);
            _cadncm.COFINS = decimal.Parse(TxCofins.Text);
            _cadncm.SITUACAOTRIBUTARIA = decimal.Parse(TxStTributaria.Text);
            _cadncm.Obs = TxObs.Text;
            _cadncm.Descricao2 = TxDescricaoN.Text;

            Realsoft_Insere.Insere_NovoNCM(_cadncm);

            throw new HttpException("NCM CRIADO COM SUCESSO");
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtConsultar_Click(object sender, EventArgs e)
    {
        try
        {
            if (TxCodigoNCM.Text != "")
            {
                Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
                Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
                Mercadorias.SelectCommand = "SELECT CODIGO, DESCRICAO, UNIDADEMEDIDA, ALIQUOTA FROM REALSOFT_NCM  WHERE CODIGO = '" + TxCodigoNCM.Text + "'";

            }
            else if (TxDescricaoNCM.Text != "")
            { 
                Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
                Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
                Mercadorias.SelectCommand = "SELECT CODIGO, DESCRICAO, UNIDADEMEDIDA, ALIQUOTA FROM REALSOFT_NCM WHERE DESCRICAO LIKE '%" + TxDescricaoNCM.Text + "%'";
                
            }
            else
            {
                Decimal Aliquota = Decimal.Parse(TxAliquotaNCM.Text);

                Mercadorias.ConnectionString = Realsoft_Parametro.parametroconexao;
                Mercadorias.ProviderName = Realsoft_Parametro.tipoconexao;
                Mercadorias.SelectCommand = "SELECT CODIGO, DESCRICAO, UNIDADEMEDIDA, ALIQUOTA FROM REALSOFT_NCM WHERE ALIQUOTA LIKE '%" + Aliquota + "%'";

                
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    protected void BtAdd_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            try { Realsoft_Parametro.CoigoNCM = int.Parse(TxCodigoNCM.Text); }
            catch (Exception ex) { TxCodigoNCM.BorderColor = Color.Yellow; ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + "CODIGO NCM NÃO ENCONTRADO" + "')", true); }

            string fullURL = "window.open('Realsoft_UF.aspx', '_blank', 'height=400,width=800, SCROLL=no');";
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}