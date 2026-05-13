<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Realsoft_ClientesPrevenda.aspx.cs" Inherits="Realsoft_ClientesPrevenda" %>

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
            <td colspan="2" style="background-color: steelblue; font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #FFFFFF;" >PESQUISAR CLIENTES</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">Descrição
                <asp:TextBox ID="TxDescricao" runat="server" BorderColor="Red" BorderStyle="Solid" Width="446px"></asp:TextBox>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">Codigo&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:TextBox ID="TxDescricao0" runat="server" BorderColor="Red" BorderStyle="Solid" Width="165px"></asp:TextBox>
                
            &nbsp;Codigo de Barras
                
                <asp:TextBox ID="TxDescricao1" runat="server" BorderColor="Red" BorderStyle="Solid" Width="165px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:Button ID="BtConsultar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Consultar" />
&nbsp;<asp:Button ID="BtFechar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Fechar" OnClick="BtFechar_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: steelblue; font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #FFFFFF;">LISTA DE CLIENTES</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="DgLista" runat="server" AllowPaging="True" BackColor="White" BorderColor="#E7E7FF" BorderWidth="1px" CellPadding="3" Width="1003px" DataSourceID="LISTACLIENTE" BorderStyle="None" GridLines="Horizontal" OnRowCommand="DgLista_RowCommand" >
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:ButtonField ButtonType="Image" CommandName="Selecionar" ImageUrl="~/Images/onebit_02.png" Text="Selecionar">
                        <ControlStyle Height="24px" Width="24px" />
                        </asp:ButtonField>
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" ForeColor="#F7F7F7" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
            <asp:SqlDataSource ID="LISTACLIENTE" runat="server" ConnectionString="" ProviderName=""  SelectCommand=""> 
        </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</form>






