<%@ Page Title="HISTORICO DE PREVENDAS" Language="C#" AutoEventWireup="true" CodeFile="Realsoft_HistoricoClientePrevenda.aspx.cs" Inherits="_HistoricoClientePrevenda" %>

<head>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
            }
        .auto-style2 {
            height: 29px;
            }
        .auto-style3 {
            width: 290px;
        }
        .auto-style6 {
        }
        </style>
</head>




<form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" style="background-color: steelblue; font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #FFFFFF;" >PESQUISAR PREVENDA</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">CPF&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxDescricao" runat="server" BorderColor="Red" BorderStyle="Solid" Width="446px"></asp:TextBox>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">Período Inicial&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxDescricao0" runat="server" BorderColor="Red" BorderStyle="Solid" Width="165px"></asp:TextBox>
                
                &nbsp;Período Final
                
                <asp:TextBox ID="TxDescricao1" runat="server" BorderColor="Red" BorderStyle="Solid" Width="165px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:Button ID="BtConsultar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Consultar" />
&nbsp;<asp:Button ID="BtFechar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"  Text="Fechar" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: steelblue; font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #FFFFFF;">HISTÓRICO DE PREVENDAS</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="DgLista" runat="server" AllowPaging="True" CellPadding="4" Width="1003px" DataSourceID="PREVENDA" GridLines="None" ForeColor="#333333" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ButtonField ButtonType="Image" CommandName="Selecionar" ImageUrl="~/Images/onebit_02.png" Text="Selecionar">
                        <ControlStyle Height="24px" Width="24px" />
                        </asp:ButtonField>
                    </Columns>
                    <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" ForeColor="Navy" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="PREVENDA" runat="server" ConnectionString="" ProviderName="" SelectCommand=""></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</form>





