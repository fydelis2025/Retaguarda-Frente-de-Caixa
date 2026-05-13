using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Error : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string erro = Session["ERROR"].ToString();
            string retorno = Realsoft_Criptografia.Decrypt(erro, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            LbError.Text = retorno;
        }
        catch (Exception ex)
        {
            string Alerta = "<script language=JavaScript>";
            Alerta += "alert(\"" + ex.Message + "\");";
            Alerta += "</script>";

            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alerta", Alerta);
        }

    }
}