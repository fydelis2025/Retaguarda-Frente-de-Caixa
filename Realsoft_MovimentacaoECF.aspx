<%@ Page Title="MOVIMENTACAO ECF" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_MovimentacaoECF.aspx.cs" Inherits="_MovimentacaoECF" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        MOVIMENTAÇÃO DE VENDAS NO ECF</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td>CupomFiscal</td>
                <td>
                    <asp:TextBox ID="TxCupomFiscal" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
&nbsp;EAN
                    <asp:TextBox ID="TxEAN" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="206px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtBuscar" runat="server" BackColor="White" BorderColor="SteelBlue" BorderStyle="Solid" Text="Buscar" Width="92px" OnClick="BtBuscar_Click" />
&nbsp;<asp:Button ID="BtImprimir" runat="server" BackColor="White" BorderColor="SteelBlue" BorderStyle="Solid" Text="Imprimir" Width="92px" />
                </td>
            </tr>
            <tr>
                <td>Descrição </td>
                <td>
                    <asp:TextBox ID="TxMercadoria" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="251px"></asp:TextBox>
                </td>
                <td>Período</td>
                <td>
                    <asp:TextBox ID="TxPerioroInicial" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
&nbsp;/
                    <asp:TextBox ID="TxPeriodoFinal" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="DgMovimentacaoECF" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="909px" DataSourceID="MovimentoECF" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:ButtonField ButtonType="Image" ImageUrl="~/images/flag-green-icon.png" Text="Button" />
                        </Columns>
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
                      <asp:SqlDataSource ID="MovimentoECF" runat="server" ConnectionString="" ProviderName=""  SelectCommand=""> 
                  </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
