using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data.Sql;
using System.Data.SqlClient;
using Realsoft_Class;
using System.Data;

public partial class _CargaPdv : System.Web.UI.Page
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
            CargaPdv.ConnectionString = Realsoft_Parametro.parametroconexao;
            CargaPdv.ProviderName = Realsoft_Parametro.tipoconexao;
            CargaPdv.SelectCommand = "SELECT F.RAZAOSOCIAL AS 'RAZAOSOCIAL', T.ECF AS 'ECF', T.TERMINAL AS 'TERMINAL', T.IP AS 'IP' FROM REALSOFT_TERMINAIS T, REALSOFT_FILIAL F WHERE T.FILIAL = F.ID";

            ChLista.Items.Clear();

            List<Realsoft_Terminais> _terminal = Realsoft_Consultas.Listar_Terminal();

            for (int i = 0; i <= _terminal.Count - 1; i++)
            {
                String[] _arg = new String[1];

                ChLista.Items.Add(_terminal[i].ECF + " - " + _terminal[i].IP);
            }
        }
    }

    protected void BtEnviar_Click(object sender, EventArgs e)
    {
        try
        {

                if (ChCargaRetaguarda.SelectedItem != null & ChListaCarga.SelectedItem != null)
                {
                    throw new Exception("IMPOSSÍVEL ENVIAR CARGAS PARA O RETAGUARDA E PARA O CAIXA AO MESMO TEMPO");
                }
                else
                {

                    //-------------------------------------------------------------
                    //carga para o caixa
                    if (ChListaCarga.SelectedIndex == 0)
                    {
                        
                        if(RdBD.Checked)
                        {
                            //carga alteração de preco

                            
                        }
                    }
                    if (ChListaCarga.SelectedIndex == 1)
                    {

                    }
                    if (ChListaCarga.SelectedIndex == 2)
                    {
                        if (RdTXT.Checked)
                        {
                            Realsoft_Carga _carga = new Realsoft_Carga();

                            _carga.CargaDat();

                            throw new HttpException("ARQUIVO GERADO COM SUCESSO");
                        }
                        else if (RdBD.Checked)
                        {
                            ConexaoCaixa.Realsoft_InsereNewMercadorias();

                            throw new HttpException("NOVAS MERCADORIAS ADICIONADAS COM SUCESSO");
                        }                        
                        else
                        {
                            throw new HttpException("OPÇÃO INVÁLIDA");

                        }
                        
                        
                        
                    }
                    if (ChListaCarga.SelectedIndex == 3)
                    {
                        if (RdBD.Checked)
                        {
                            ConexaoCaixa.Realsoft_InsereClientes();
                            throw new HttpException("CLIENTES MIGRADOS  COM SUCESSO");
                        }
                    }

                    if (ChListaCarga.SelectedIndex == 4)
                    {
                        if (RdBD.Checked)
                        {
                            string retorno = ConexaoCaixa.EnviarCargaPrevenda();
                            throw new HttpException("PREVENDA ENVIADA COM SUCESSO");
                           
                        }
                    }

                    //-----------------------------------------------------------
                    //Carga para retaguarda
                    if (ChCargaRetaguarda.SelectedIndex == 0)
                    {
                        if (RdTXT.Checked)
                        {

                        }
                        else if (RdBD.Checked)
                        {
                            ConexaoCaixa.CargaMovimentacaoECF();
                            throw new HttpException("MOVIMENTACAO ECF MIGRADOS  COM SUCESSO");
                        }
                        else
                        {

                        }
                    }

                    if (ChCargaRetaguarda.SelectedIndex == 1)
                    {

                    }

                    if (ChCargaRetaguarda.SelectedIndex == 2)
                    {
                        if (RdTXT.Checked)
                        {

                        }
                        else if (RdBD.Checked)
                        {
                            ConexaoCaixa.CargaTesouraria();
                            throw new HttpException("TESOURARIA MIGRADOS  COM SUCESSO");
                        }
                        else
                        {

                        }
                    }

                    if (ChCargaRetaguarda.SelectedIndex == 3)
                    {
                        Realsoft_CargaBalanca _balanca = new Realsoft_CargaBalanca();

                        _balanca._GerarArquivoToledo();

                        throw new Exception("ARQUIVO GERADO COM SUCESSO");
                    }

                    if (ChCargaRetaguarda.SelectedIndex == 4)
                    {
                        if (RdBD.Checked)
                        {
                            try
                            {
                                List<Realsoft_VendaCupom> _cupom = ConexaoCaixa.Listar_VendasECF();

                                for (int i = 0; i <= _cupom.Count - 1; i++)
                                {
                                    Realsoft_Insere.Insere_VendaCupomFiscalCX(_cupom[i]);
                                    ConexaoCaixa.Update_VendasCupom(_cupom[i]._CupomFiscal);
                                }

                                throw new Exception("VENDAS MIGRADO COM SUCESSO");
                            }
                            catch(Exception err)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + err.Message + "')", true);
                            }
                        }
                    }
                }
            
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Aviso", "alert('" + ex.Message + "')", true);
    
        }
    }

    
}