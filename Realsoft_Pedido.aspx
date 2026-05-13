<%@ Page Title="PEDIDO" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Pedido.aspx.cs" Inherits="_Pedido" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style6 {
        }
        .auto-style7 {
            height: 26px;
            }
        .auto-style8 {
            width: 259px;
        }
        .auto-style9 {
            height: 25px;
        }
        .auto-style10 {
            width: 259px;
            height: 26px;
        }
        </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
            <script type="text/javascript" src="Scripts/Realsoft_Jquery-1.js"></script>
<script src="Scripts/Realsoft_Jquery-2.js" type="text/javascript"></script>
<link href="Scripts/Realsoft_Jquery-3.js" rel="stylesheet" type="text/css" />
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />

     <script type = "text/javascript">
         function isNumeric(keyCode) {
             return ((keyCode >= 48 && keyCode <= 57) || keyCode == 8)
         }
    </script>
    <script type = "text/javascript">
        function isAlpha(keyCode) {
            return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8)
        }
    </script> 
    <script type = "text/javascript">
        function isAlphaNumeric(keyCode) {
            return ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 && keyCode <= 90) || keyCode == 8)
        }
    </script>

    <script type = "text/javascript">
        function ProximoCampo(keyCode) {
            if (keyCode = 13) {

                alert('O CPF INFORMADO É VÁLIDO.');
            }
        }
    </script>
    <h2>
        PEDIDO</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style6" style="background-color: #E3EAEB">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" Orientation="Horizontal" StaticSubMenuIndent="10px" OnMenuItemClick="Menu1_MenuItemClick">
                        <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#E3EAEB" />
                        <DynamicSelectedStyle BackColor="#1C5E55" />
                        <Items>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Novo" Value="Novo"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Gravar" Value="Gravar"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Manutenção" Value="Manutenção"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Relatório" Value="Relatório"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Imprimir" Value="Imprimir"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#1C5E55" />
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <table style="width: 100%;" class="table">
                        <tr>
                            <td colspan="4" align="center" class="auto-style9" style="background-color: #E3EAEB; font-weight: bold;">INFORMAÇÕES DO PEDIDO</td>
                        </tr>
                        <tr>
                            <td>Número</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxNmero" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px" Enabled="False"></asp:TextBox>
                            </td>
                            <td>Data Emissão</td>
                            <td>
                                <asp:TextBox ID="TxDataEmissao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px" Enabled="False"></asp:TextBox>
&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Pagamento</td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="CbPagamento" runat="server" Width="159px">
                                    <asp:ListItem>AVISTA</asp:ListItem>
                                    <asp:ListItem>BOLETO</asp:ListItem>
                                    <asp:ListItem>CARTÃO</asp:ListItem>
                                    <asp:ListItem>CHEQUE</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>Vendedor</td>
                            <td>
                                <asp:TextBox ID="TxVendedor" runat="server" BorderColor="Red" BorderStyle="Solid" Width="356px"></asp:TextBox>
                                <asp:ImageButton ID="BtVendedor" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" 
                        style="margin-bottom: 0px" Width="29px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4" align="center" style="background-color: #E3EAEB; font-weight: bold;">TRANSPORTADORA</td>
                        </tr>
                        <tr>
                            <td>TIPO TRANSP.</td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="CbTipoTransporte" runat="server" Width="180px" Height="16px">
                                    <asp:ListItem>TRANSPORTADORA</asp:ListItem>
                                    <asp:ListItem>AUTONOMO</asp:ListItem>
                                    <asp:ListItem>PROPRIO</asp:ListItem>
                                    <asp:ListItem>POSTAL</asp:ListItem>
                                    <asp:ListItem>OUTROS</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>PESSOA</td>
                            <td>
                                <asp:DropDownList ID="CbPessoa" runat="server" Width="180px" Height="16px">
                                    <asp:ListItem>FISICA</asp:ListItem>
                                    <asp:ListItem>JURIDICA</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>CPF/CNPJ</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxCNPJ" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="Red" BorderStyle="Solid" Width="159px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="BtCNPJTransp" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" 
                        style="margin-bottom: 0px" Width="29px" OnClick="BtCNPJTransp_Click" />
                            </td>
                            <td>RAZAÇÃO / NOME</td>
                            <td>
                                <asp:TextBox ID="TxRazaoSocial" runat="server" BorderColor="Red" BorderStyle="Solid" Width="356px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">INSCRIÇÃO EST.</td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TxIE" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
                            <td class="auto-style7">CEP</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TxCepTransp" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="BtCepTransp" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" 
                        style="margin-bottom: 0px" Width="29px" OnClick="BtCepTransp_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>FAX</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxFaxTransp" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
                            <td>EMAIL</td>
                            <td>
                                <asp:TextBox ID="TxEmailTransp" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="356px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>LOGRADOURO</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxLogadouroTransp" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="237px"></asp:TextBox>
                            </td>
                            <td>COMPLEMENTO</td>
                            <td>
                                <asp:TextBox ID="TxComplementoTransp" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="356px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>NUMERO</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxNumeroTransp" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
                            <td>CIDADE</td>
                            <td>
                                <asp:DropDownList ID="CbCidadeTransp" runat="server" Width="159px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>UF</td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="CbUFTransp" runat="server" Width="159px">
                                </asp:DropDownList>
                            </td>
                            <td>BAIRRO</td>
                            <td>
                                <asp:TextBox ID="TxBairroTransp" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="356px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>NOME CONTATO</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxContato" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
                            <td>TELEFONE</td>
                            <td>
                                <asp:TextBox ID="TxTelefoneContato" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>MOTORISTA</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxMotorista" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="237px"></asp:TextBox>
                            </td>
                            <td>HABILITAÇÃO</td>
                            <td>
                                <asp:TextBox ID="TxHabilitacao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="356px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" style="background-color: #E3EAEB; font-weight: bold;">ENDEREÇO DE FATURAMENTO</td>
                        </tr>
                        <tr>
                            <td>CEP</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxCepFat" runat="server" BorderColor="Red" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            &nbsp;<asp:ImageButton ID="BtCepFat" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" 
                        style="margin-bottom: 0px" Width="29px" OnClick="BtCepFat_Click" />
                            </td>
                            <td>LOGRADOURO</td>
                            <td>
                                <asp:TextBox ID="TxLogadouroFat" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="356px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>COMPLEMENTO</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxComplementoFat" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="249px"></asp:TextBox>
                            </td>
                            <td>BAIRRO</td>
                            <td>
                                <asp:TextBox ID="TxBairroFat" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="356px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>CIDADE</td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="CbCidadeFat" runat="server" Width="159px">
                                </asp:DropDownList>
                            </td>
                            <td>UF</td>
                            <td>
                                <asp:DropDownList ID="CbUFFat" runat="server" Width="159px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:CheckBox ID="ChEndereco" runat="server" ForeColor="Red" Text="Endereço de faturamento o mesmo de entrega" OnCheckedChanged="ChEndereco_CheckedChanged" />
                            </td>
                            <td>
                                <asp:Button ID="BtOk" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtOk_Click" Text="Confirmar" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" style="background-color: #E3EAEB; font-weight: bold;">ENDEREÇO DE ENTREGA</td>
                        </tr>
                        <tr>
                            <td>CEP</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxCepEntrega" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                                <asp:ImageButton ID="BtCepEntrega" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" 
                        style="margin-bottom: 0px" Width="29px" OnClick="BtCepEntrega_Click" />
                            </td>
                            <td>LOGRADOURO</td>
                            <td>
                                <asp:TextBox ID="TxLogadouroEntrega" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="356px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>COMPLEMENTO</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxComplementoEntrega" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="249px"></asp:TextBox>
                            </td>
                            <td>BAIRRO</td>
                            <td>
                                <asp:TextBox ID="TxBairroEntrega" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="356px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>CIDADE</td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="CbCidadeEntrega" runat="server" Width="159px">
                                </asp:DropDownList>
                            </td>
                            <td>UF</td>
                            <td>
                                <asp:DropDownList ID="CbUFEntrega" runat="server" Width="159px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" style="background-color: #E3EAEB; font-weight: bold;">RELAÇÃO DE PRODUTOS</td>
                        </tr>
                        <tr>
                            <td>CODIGO</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxCodigo" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            &nbsp;<asp:ImageButton ID="BtCodigo" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" 
                        style="margin-bottom: 0px" Width="29px" OnClick="BtCodigo_Click" />
                            &nbsp;<asp:ImageButton ID="BtConsultar" runat="server" Height="17px" 
                        ImageUrl="~/Images/16.png" 
                        style="margin-bottom: 0px" Width="29px" OnClick="BtConsultar_Click" />
                            </td>
                            <td>DESCRIÇÃO</td>
                            <td>
                                <asp:TextBox ID="TxDescricao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="356px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>UNIDADE</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxUnidade" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
                            <td>QUANTIDADE</td>
                            <td>
                                <asp:TextBox ID="TxQuantidade" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            &nbsp;<asp:ImageButton ID="BtCalcular" runat="server" Height="24px" 
                        ImageUrl="~/Images/save.png" 
                        style="margin-bottom: 0px" Width="24px" OnClick="BtCalcular_Click" />
                            &nbsp;</td>
                        </tr>
                        <tr>
                            <td>PREÇO</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxPreco" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
                            <td>TOTAL LIQUIDO</td>
                            <td>
                                <asp:TextBox ID="TxTotalLiquido" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>TOTAL NF</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TxTotal" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px" Enabled="False"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="BtFinalizar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtFinalizar_Click" Text="Finalizar" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:GridView ID="DGLISTA" runat="server" DataSourceID="PEDIDO" CellPadding="4" ForeColor="#333333" GridLines="None" Width="854px">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:ButtonField ButtonType="Image" CommandName="Excluir" ImageUrl="~/Images/Excluir.png" Text="Excluir">
                                        <HeaderStyle Width="40px" />
                                        </asp:ButtonField>
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                    <asp:SqlDataSource ID="PEDIDO" runat="server" ConnectionString="" ProviderName="" SelectCommand=""></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
        </p>
</asp:Content>
