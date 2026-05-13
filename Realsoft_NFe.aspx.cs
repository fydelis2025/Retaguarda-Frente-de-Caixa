using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Realsoft_NFe;
using System.Security.Cryptography.X509Certificates;
using CAPICOM;
using System.Security.Cryptography.Pkcs;
using System.Security.Cryptography.X509Certificates;
using System.Net;
using System.Xml;
using System.IO;
using System.Xml.Linq;

public partial class _NFe : System.Web.UI.Page
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

    
    private enum situacao
    {
        Digitado,
        Fechado,
        Finalizado,
        Baixado
    }
    protected void BtCalendario_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void BtEmissao_Click(object sender, ImageClickEventArgs e)
    {
        //DateTime dob = DateTime.ParseExact(Request.Form[TxDataEmissao.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }
    protected void BtLancamento_Click(object sender, ImageClickEventArgs e)
    {
        //DateTime dob = DateTime.ParseExact(Request.Form[TxDataLancamento.UniqueID], "dd-MM-yyyy", CultureInfo.InvariantCulture);
    }


    protected void BtImportar_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    protected void BtAssinar_Click(object sender, EventArgs e)
    {
        try
        {
            if(ImportXML.HasFile)
            {

                if(File.Exists(Server.MapPath("~/xml/") + ImportXML.FileName))
                {
                    throw new HttpException("ARQUIVO JA IMPORTADO");
                }
                else
                {
                    String caminho = Server.MapPath("~/xml/") + ImportXML.FileName;
                    ImportXML.SaveAs(caminho);

                    try
                    {
                        //trata xml
                        Realsoft_TratamentoXML.TrataXML(caminho);
                    }
                    catch (Exception ex)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
                    }
                }

            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
        }
    }

    static string Xml(string arquivo)
    {
        string _xml = "";

        StreamReader LerArquivo = new StreamReader(arquivo);
        string Linha = LerArquivo.ReadLine();
        while (Linha != null)
        {
            _xml += Linha;
            Linha = LerArquivo.ReadLine();
        }
        LerArquivo.Close();

        return _xml;
    }
}