<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Realsoft_ItensPrevenda.aspx.cs" Inherits="Realsoft_ItensPrevenda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="DgLista" runat="server" CellPadding="4" ForeColor="#333333" DataSourceID="Items" Height="157px" Width="725px" AllowPaging="True" OnRowCommand="DgLista_RowCommand">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:ButtonField ButtonType="Image" CommandName="Excluir" HeaderText="Excluir" ImageUrl="~/Images/Excluir.png" Text="Excluir">
                <HeaderStyle Width="60px" />
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
         <asp:SqlDataSource ID="Items" runat="server" ConnectionString="" ProviderName="" SelectCommand=""></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
