<%@ Page Title="FORNECEDOR" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Fornecedor.aspx.cs" Inherits="_Fornecedor" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        FORNECEDOR</h2>
    <p>
        &nbsp;</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="4" style="background-color: #E3EAEB">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" Orientation="Horizontal" StaticSubMenuIndent="10px" OnMenuItemClick="Menu1_MenuItemClick">
                        <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#E3EAEB" />
                        <DynamicSelectedStyle BackColor="#1C5E55" />
                        <Items>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Novo" Value="Novo"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Gravar" Value="Gravar"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Manutenção" Value="Manutenção"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#1C5E55" />
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>CODIGO</td>
                <td>
                                <asp:TextBox ID="TxCodigoFornecedor" runat="server"  onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px" Enabled="False"></asp:TextBox>
                            </td>
                <td>CNPJ</td>
                <td>
                                <asp:TextBox ID="TxCNPJ" runat="server" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
            </tr>
            <tr>
                <td>RAZÃO SOCIAL</td>
                <td>
                                <asp:TextBox ID="TxRazaoSocial" runat="server"  BorderColor="SteelBlue" BorderStyle="Solid" Width="259px"></asp:TextBox>
                            </td>
                <td>FANTASIA</td>
                <td>
                                <asp:TextBox ID="TxFantasia" runat="server"  BorderColor="SteelBlue" BorderStyle="Solid" Width="259px"></asp:TextBox>
                            </td>
            </tr>
            <tr>
                <td>INSCRIÇÃO MUNICIPAL</td>
                <td>
                                <asp:TextBox ID="TxMunicipal" runat="server"  BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
                <td>INCRIÇÃO ESTADUAL</td>
                <td>
                                <asp:TextBox ID="TxEstadual" runat="server"  BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
            </tr>
            <tr>
                <td align="center" colspan="4" style="background-color: #E3EAEB; font-weight: bold;">OUTRAS INFORMAÇÕES</td>
            </tr>
            <tr>
                <td>CEP</td>
                <td>
                                <asp:TextBox ID="TxCep" runat="server" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            &nbsp;<asp:ImageButton ID="BtCep" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" 
                        style="margin-bottom: 0px" Width="29px" OnClick="BtCep_Click" />
                            </td>
                <td>LOGRADOURO</td>
                <td>
                                <asp:TextBox ID="TxLogradouro" runat="server"  BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
            </tr>
            <tr>
                <td>COMPLEMENTO</td>
                <td>
                                <asp:TextBox ID="TxComplemento" runat="server"  BorderColor="SteelBlue" BorderStyle="Solid" Width="259px"></asp:TextBox>
                            </td>
                <td>NUMERO</td>
                <td>
                                <asp:TextBox ID="TxNumero" runat="server"  BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
            </tr>
            <tr>
                <td class="auto-style1">BAIRRO</td>
                <td class="auto-style1">
                                <asp:TextBox ID="TxBairro" runat="server"  BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
                <td class="auto-style1">CIDADE</td>
                <td class="auto-style1">
                                <asp:DropDownList ID="CbCidade" runat="server" Width="159px">
                                </asp:DropDownList>
                            </td>
            </tr>
            <tr>
                <td>UF</td>
                <td>
                                <asp:DropDownList ID="CbUF" runat="server" Width="159px">
                                </asp:DropDownList>
                            </td>
                <td>FAX</td>
                <td>
                                <asp:TextBox ID="TxFax" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
            </tr>
            <tr>
                <td>CONTATO</td>
                <td>
                                <asp:TextBox ID="TxContato" runat="server"  BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
                <td>TELEFONE</td>
                <td>
                                <asp:TextBox ID="TxTelefone" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="159px"></asp:TextBox>
                            </td>
            </tr>
            <tr>
                <td>EMAIL</td>
                <td>
                                <asp:TextBox ID="TxEmail" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="259px"></asp:TextBox>
                            </td>
                <td>SITE</td>
                <td>
                                <asp:TextBox ID="TxSite" runat="server"  BorderColor="SteelBlue" BorderStyle="Solid" Width="259px"></asp:TextBox>
                            </td>
            </tr>
        </table>
    </p>
</asp:Content>
