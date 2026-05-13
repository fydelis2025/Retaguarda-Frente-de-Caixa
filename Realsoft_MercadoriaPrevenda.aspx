<%@ Page Title="MERCADORIAS PREVENDA" Language="C#" AutoEventWireup="true" CodeFile="Realsoft_MercadoriaPrevenda.aspx.cs" Inherits="_MercadoriaPrevenda" %>

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
            <td colspan="2" style="background-color: steelblue; font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #FFFFFF;" >PESQUISAR PRODUTOS</td>
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
                
                <asp:TextBox ID="TxCodigo" runat="server" BorderColor="Red" BorderStyle="Solid" Width="165px"></asp:TextBox>
                
            &nbsp;Codigo de Barras
                
                <asp:TextBox ID="TxEAN" runat="server" BorderColor="Red" BorderStyle="Solid" Width="165px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:Button ID="BtConsultar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Consultar" OnClick="BtConsultar_Click" />
&nbsp;<asp:Button ID="BtFechar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtFechar_Click" Text="Fechar" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: steelblue; font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #FFFFFF;">LISTA DE MERCADORIAS</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="DgLista" runat="server" AllowPaging="True" CellPadding="4" Width="1003px" DataSourceID="Mercadorias" GridLines="None" OnRowCommand="DgLista_RowCommand" PageSize="30" ForeColor="#333333" ToolTip="Produtos" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:ButtonField ButtonType="Image" CommandName="Selecionar" ImageUrl="~/Images/onebit_02.png" Text="Selecionar">
                        <ControlStyle Height="24px" Width="24px" />
                        </asp:ButtonField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="Mercadorias" runat="server" ConnectionString="" ProviderName="" SelectCommand=""></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</form>





