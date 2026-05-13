using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _CadNFe : System.Web.UI.Page
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
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        try
        {
            int index = int.Parse(e.Item.Value);

            MultiView1.ActiveViewIndex = index;

            switch (index)
            {
                case 0:
                    //TabDados.Visible = true;
                    break;
                case 1:
                    //TabProdutos.Visible = true;
                    break;
                case 2:
                    //TabTransporte.Visible = true;
                    break;
                case 3:
                    //TabTotais.Visible = true;
                    break;
                

            }
            
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
    {
        try
        {
            int index = int.Parse(e.Item.Value);

            MultiView2.ActiveViewIndex = index;

            switch (index)
            {
                case 0:
                    //TabDados.Visible = true;
                    break;
                case 1:
                    //TabProdutos.Visible = true;
                    break;
                case 2:
                    //TabTransporte.Visible = true;
                    break;
            }

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }

    }
    protected void Menu3_MenuItemClick(object sender, MenuEventArgs e)
    {
        try
        {
            if (e.Item.Value == "Importar")
            {
                string fullURL = "window.open('Realsoft_NFe.aspx', '_blank', 'height=400,width=980, scrollbars=yes,resizable=no');";
                ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
            }
            else if(e.Item.Value == "Danfe")
            {
                try
                {
                    string fullURL = "window.open('Realsoft_Danfe.aspx', '_blank', 'height=1000,width=1024');";
                    ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", fullURL, true);
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
                }
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
}