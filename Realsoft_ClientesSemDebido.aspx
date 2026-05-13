<%@ Page Title="CLIENTES SEM DEBITOS" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_ClientesSemDebido.aspx.cs" Inherits="_Debitos" %>

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
                        BorderStyle="Solid" Text="Imprimir" OnClick="BtImprimir_Click" />
                    <asp:Button ID="BtExportar" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Exportar" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="3"><h2>
                    LISTA DE CLIENTES SEM DEBITOS</h2></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="DgLista" runat="server" DataSourceID="DEBITOS" 
                        CellPadding="4" ForeColor="#333333" Width="895px">
                        <AlternatingRowStyle BackColor="White" />                        
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="DEBITOS" runat="server" 
                   ConnectionString=""
                   ProviderName="" 
                   SelectCommand=""> 
                  </asp:SqlDataSource>
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
