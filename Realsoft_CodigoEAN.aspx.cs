using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _CodigoEAN : System.Web.UI.Page
{
    private Realsoft_EAN13 ean13 = null;
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
                txtManufacturerCode.Text = Realsoft_Parametro.Codigo;

                Random _rd = new Random();
                txtProductCode.Text = _rd.Next(9999).ToString();

                
            }
        }
        catch (Exception ex)
        {
            string retorno = Realsoft_Criptografia.Encrypt(ex.Message, Realsoft_Parametro.ConfiguracaoPhrase, Realsoft_Parametro.ConfiguracaoValue, Realsoft_Parametro.ConfiguracaoAlgorithm, Realsoft_Parametro._Configuracaointeracao, Realsoft_Parametro._Configuracaovector, Realsoft_Parametro.keySize);
            Session["ERROR"] = retorno;
            Response.Redirect("Realsoft_Error.aspx?ret=" + retorno);
        }

    }

    private void CreateEan13()
    {
        ean13 = new Realsoft_EAN13();
        ean13.CountryCode = txtCountryCode.Text;
        ean13.ManufacturerCode = txtManufacturerCode.Text;
        ean13.ProductCode = txtProductCode.Text;
        if (txtChecksumDigit.Text.Length > 0)
            ean13.ChecksumDigit = txtChecksumDigit.Text;
    }
    protected void butDraw_Click(object sender, EventArgs e)
    {

        try
        {
            String Caminhosalvo = HttpContext.Current.Server.MapPath("\\Images\\EAN.png");

            CreateEan13();
            ean13.Scale = (float)Convert.ToDecimal(cboScale.SelectedValue);

            System.Drawing.Bitmap bmp = ean13.CreateBitmap();

            bmp.Save(Caminhosalvo);

            this.picBarcode.ImageUrl = "~/Images/EAN.png";
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }
    protected void BtImprimir_Click(object sender, EventArgs e)
    {
        System.Drawing.Printing.PrintDocument pd = new System.Drawing.Printing.PrintDocument();
        pd.PrintPage += new System.Drawing.Printing.PrintPageEventHandler(this.pd_PrintPage);
        pd.Print();
    }

    private void pd_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs ev)
    {
        CreateEan13();
        ean13.Scale = (float)Convert.ToDecimal(cboScale.SelectedValue);
        ean13.DrawEan13Barcode(ev.Graphics, new System.Drawing.Point(0, 0));
        txtChecksumDigit.Text = ean13.ChecksumDigit;

        // Add Code here to print other information.
        ev.Graphics.Dispose();
    }
}