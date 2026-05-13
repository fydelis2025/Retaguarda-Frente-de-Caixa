<%@ Page Title="USUARIOS" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Usuarios.aspx.cs" Inherits="_Usuarios" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        cadastro de novo usuario</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td>
                    NOME</td>
                <td>
                    <asp:TextBox ID="TxNome" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
                <td>
                    LOGIN</td>
                <td>
                    <asp:TextBox ID="TxLogin" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    SENHA</td>
                <td>
                    <asp:TextBox ID="TxSenha" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td rowspan="2">
                    <asp:CheckBox ID="ChAdministrador" runat="server" Text="Administrador" />
                    <asp:CheckBox ID="ChAtivo" runat="server" Text="Ativo" />
                    <br />
                    <asp:CheckBox ID="ChFiscal" runat="server" Text="Fiscal" />
                &nbsp;<asp:CheckBox ID="ChOperador" runat="server" Text="Operador" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    FILIAL</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="CbFilial" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="LbStatus" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="BtNovo" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Novo" />
                    <asp:Button ID="BtGravar" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Gravar" OnClick="BtGravar_Click" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="3">
                    <h2> USUARIOS CADASTRADOS</h2></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="DgLista" runat="server" BackColor="LightGoldenrodYellow" 
                        BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" Width="862px" DataSourceID="Usuarios" AllowPaging="True">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:ButtonField ButtonType="Image" ImageUrl="~/images/Excluir.png" Text="Excluir" >
                            <ItemStyle Height="10px" Width="10px" />
                            </asp:ButtonField>
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="Usuarios" runat="server" ConnectionString="" ProviderName="" SelectCommand=""></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
