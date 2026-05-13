<%@ Page Title="PRECOS" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_PrecosAlterados.aspx.cs" Inherits="_PrecosAlterados" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        realsoft - ALTERAÇÃO DE PREÇOS</h2>
    <p>
        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="BtBuscar" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Buscar" OnClick="BtBuscar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    DESCRIÇÃO</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TxDescricao" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="327px"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    CODIGO DE BARRAS</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TxCodigoBarras" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Preço</td>
                <td>
                    <asp:TextBox ID="TxPreco" runat="server" BorderColor="Red" 
                        BorderStyle="Solid" Width="210px"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="BtSalvar" runat="server" ImageUrl="~/Images/Save.png" OnClick="BtSalvar_Click" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="DgPrecos" runat="server" CellPadding="4" ForeColor="#333333" 
                        DataSourceID="AlteraPRECOS" AllowPaging="True" 
                        AutoGenerateColumns="False" Width="871px" 
                        BackImageUrl="~/Images/logomarca.jpg" OnSelectedIndexChanged="DgPrecos_SelectedIndexChanged" OnRowUpdated="DgPrecos_RowUpdated1" OnRowCommand="DgPrecos_RowCommand" PageSize="30">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" />
                            <asp:BoundField DataField="EAN" HeaderText="EAN" />
                            <asp:BoundField DataField="MERCADORIA" HeaderText="DESCRIÇÃO"></asp:BoundField>
                            <asp:BoundField DataField="PRECOCUSTO" HeaderText="PRECO CUSTO" />
                            <asp:BoundField DataField="PRECOVENDA" HeaderText="PRECO VENDA" />
                            <asp:ButtonField ButtonType="Image" ImageUrl="~/Images/Save.png"  CommandName="Salvar" Text="Salvar">
                            <HeaderStyle Height="20px" Width="20px" />
                            <ItemStyle Height="20px" Width="20px" />
                            </asp:ButtonField>
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
                    <asp:SqlDataSource ID="AlteraPRECOS" runat="server" UpdateCommand="" OnUpdated="AlteraPRECOS_Updated">
                    </asp:SqlDataSource>                                        
                    
                 </td>
            </tr>
        </table>
</p>
</asp:Content>
