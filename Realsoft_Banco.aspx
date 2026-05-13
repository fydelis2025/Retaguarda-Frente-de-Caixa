<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Realsoft_Banco.aspx.cs" Inherits="_Banco" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            height: 26px;
            width: 26%;
        }
        .auto-style4 {
        }
        .auto-style5 {
            width: 26%;
        }
        .auto-style7 {
            height: 26px;
            width: 10%;
        }
        .auto-style11 {
            height: 26px;
            width: 284px;
        }
        .auto-style12 {
            width: 284px;
        }
        .auto-style15 {
            height: 23px;
        }
        .auto-style16 {
            width: 21%;
        }
        .auto-style17 {
            height: 26px;
            width: 21%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:74%;">
            <tr>
                <td class="auto-style4" colspan="4" style="color: white; background-color: steelblue">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style5">
                    <asp:ImageButton ID="BtNovo" runat="server" ImageUrl="~/Images/8.png" OnClick="BtNovo_Click" ToolTip="Salvar" />
                    <asp:ImageButton ID="BtGravar" runat="server" ImageUrl="~/Images/7.png" OnClick="BtGravar_Click" ToolTip="Gravar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">NOME</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxNome" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="276px"></asp:TextBox>
                </td>
                <td class="auto-style17">BANCO</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxBanco" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">AGENCIA</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxAgencia" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="276px"></asp:TextBox>
                </td>
                <td class="auto-style17">CONTA</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxConta" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">DIGITO</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TxDigito" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="276px"></asp:TextBox>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="4" style="color: white; background-color: steelblue">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" class="auto-style15">
                    <asp:GridView ID="DgLista" runat="server" DataSourceID="BANCO" CellPadding="4" ForeColor="#333333" GridLines="None" Width="786px" AllowPaging="True" OnRowCommand="DgLista_RowCommand">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:ButtonField ButtonType="Image" CommandName="Excluir" ImageUrl="~/Images/Excluir.png" Text="Excluir">
                            <HeaderStyle Height="32px" Width="32px" />
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
                    
        <asp:SqlDataSource ID="BANCO" runat="server" ConnectionString="" ProviderName=""  SelectCommand=""> 
        </asp:SqlDataSource>
                    
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
