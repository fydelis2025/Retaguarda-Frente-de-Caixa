<%@ Page Title="CLIENTE INADIPLENTES" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Inadiplentes.aspx.cs" Inherits="_Inadiplentes" %>

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
                    <asp:TextBox ID="TxCliente" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
                <td>
                    NUMERO DO CARTAO</td>
                <td>
                    <asp:TextBox ID="TxNumeroCartao" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    CPF</td>
                <td>
                    <asp:TextBox ID="TxCPF" runat="server" BorderColor="SteelBlue" 
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
                        BorderStyle="Solid" Text="Buscar" onclick="BtBuscar_Click" />
                    <asp:Button ID="BtImprimir" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Imprimir" OnClick="BtImprimir_Click" />
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

                </td>
            </tr>
        </table>
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="3"><h2>
                    LISTA DE CLIENTES Inadiplentes</h2></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="DgLista" runat="server" CellPadding="4" ForeColor="#333333" DataSourceID="INADIPLENTES"
                        Width="895px" AllowPaging="True" AutoGenerateColumns="False" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" />
                            <asp:BoundField DataField="LIMITE" HeaderText="LIMITE" />
                            <asp:BoundField DataField="FATURA" HeaderText="FATURA" />
                            <asp:BoundField DataField="JUROS" HeaderText="JUROS" />
                            <asp:BoundField DataField="VENC. ABERTO" HeaderText="VENCIMENTO" />
                            <asp:BoundField DataField="FATURA1" HeaderText="FATURA ABERTO" />
                            <asp:BoundField DataField="DIAS" HeaderText="TOTAL ATRAZO" />
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
                    
                    <asp:SqlDataSource ID="INADIPLENTES" runat="server"
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
