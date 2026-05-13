<%@ Page Title="RESUMO DE COMPRAS" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Compras.aspx.cs" Inherits="_Compras" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        FILTRAR RELATORIO
    </h2>
    <p>
        <table style="width: 100%; margin-bottom: 0px;">
            <tr>
                <td>
                    NOME DO CLIENTE</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
                <td>
                    NUMERO DO CARTAO</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    CPF</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="BtBuscar" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Buscar" />
                    <asp:Button ID="BtImprimir" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Imprimir" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="3"><h2>
                    LISTA DE COMPRAS </h2></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" DataSourceID="COMPRAS"
                        GridLines="None" Width="878px" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="COMPRAS" runat ="server" ConnectionString="" ProviderName ="" SelectCommand=""></asp:SqlDataSource>
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

