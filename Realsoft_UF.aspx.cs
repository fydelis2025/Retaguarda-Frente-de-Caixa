using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _UF : System.Web.UI.Page
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
                LbCodigoNCM.Text = Realsoft_Parametro.CoigoNCM.ToString();

                //ChUF.Items.Clear();

                List<Realsoft_Estado> _listaestado = Realsoft_Consultas.Listar_Estados();

                for (int i = 0; i <= _listaestado.Count - 1; i++)
                {
                    ChUF.Items.Add(_listaestado[i].Descricao);

                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    protected void BtGravar_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            foreach (ListItem item in ChUF.Items)
            {
                if (item.Selected)
                {
                    Realsoft_NovoNCM _ncm = new Realsoft_NovoNCM();

                    int codigo = int.Parse(LbCodigoNCM.Text);
                    string uf = item.Value;

                    Realsoft_Insere.Insere_NovoNCMUF(codigo, uf);
                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}