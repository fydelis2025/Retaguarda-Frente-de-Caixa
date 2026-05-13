<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Realsoft_DevolucaoPrev.aspx.cs" Inherits="Realsoft_DevolucaoPrev" %>

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
            <td colspan="2" style="background-color: steelblue; font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #FFFFFF;" >DEVOLUÇÃO DA PRE-VENDA</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2"><asp:Button ID="BtCancelado" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Cancelado" OnClick="BtCancelado_Click" />
                
                <asp:Button ID="BtFinalizar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="A Finalizar" OnClick="BtFinalizar_Click" />
                
                <asp:Button ID="BtImprimir" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Imprimir" OnClick="BtImprimir_Click" />
                
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">Número da Prevenda
                <asp:TextBox ID="TxPrevenda" runat="server" BorderColor="Red" BorderStyle="Solid" Width="178px"></asp:TextBox>
            &nbsp;
                CPF
                <asp:TextBox ID="TxCPF" runat="server" BorderColor="Red" BorderStyle="Solid" Width="178px"></asp:TextBox>
            &nbsp;<asp:Button ID="BtConsultar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Consultar" OnClick="BtConsultar_Click" />
                
            &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: steelblue; font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #FFFFFF;">PREVENDAS</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="DgLista" runat="server" AllowPaging="True" CellPadding="4" Width="1013px" DataSourceID="Mercadorias" OnRowCommand="DgLista_RowCommand" ForeColor="#333333" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:ButtonField ButtonType="Image" CommandName="Itens" ImageUrl="~/Images/onebit_02.png" Text="Itens" HeaderText="Itens">
                        <ControlStyle Height="24px" Width="24px" />
                        <HeaderStyle Width="80px" />
                        </asp:ButtonField>
                        <asp:ButtonField ButtonType="Image" CommandName="Excluir" HeaderText="Cancelar" ImageUrl="~/Images/Excluir.png" Text="Excluir">
                        <HeaderStyle Width="80px" />
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
