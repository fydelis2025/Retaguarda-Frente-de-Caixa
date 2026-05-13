<%@ Page Title="LISTA DE CLIENTES" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Realsoft_ListaClientes.aspx.cs" Inherits="_ListaClientes" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .auto-style1 {
        height: 25px;
    }
</style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        LISTA DE CLIENTES</h2>
    <p>
        <table style="width: 100%;">
            <tr>
                <td colspan="4">&nbsp;&nbsp;
                    <asp:Button ID="BtConsultar1" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Histórico de Pgto" />
                    <asp:Button ID="BtConsultar2" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Histórico de compra" />
                    <asp:Button ID="BtConsultar3" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Limite de compra" />
                </td>
            </tr>
            <tr>
                <td>Nome</td>
                <td>
                    <asp:TextBox ID="TxNome" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="278px"></asp:TextBox>
                </td>
                <td>CPF</td>
                <td>
                    <asp:TextBox ID="TxNome0" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="278px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Numero do Cartao</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TxNome1" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="278px"></asp:TextBox>
                </td>
                <td class="auto-style1">Empresa</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TxNome2" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="278px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="BtConsultar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Consultar" />
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="914px" DataSourceID="LISTACLIENTE" AllowPaging="True" PageSize="20">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ButtonField ButtonType="Image" CommandName="Selecionar" ImageUrl="~/Images/onebit_02.png" Text="Selecionar">
                <ControlStyle Height="24px" Width="24px" />
                </asp:ButtonField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="LISTACLIENTE" runat="server" ConnectionString="" ProviderName=""  SelectCommand=""> 
        </asp:SqlDataSource>
    </p>
</asp:Content>
