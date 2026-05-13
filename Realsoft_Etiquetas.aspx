<%@ Page Title="ETIQUETAS" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Etiquetas.aspx.cs" Inherits="_Etiquetas" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .auto-style2 {
        }
        .auto-style7 {
            width: 11%;
        }
        .auto-style8 {
            height: 30px;
            width: 13%;
        }
        .auto-style11 {
            width: 334px;
            margin-left: 40px;
        }
        .auto-style14 {
            height: 37px;
        }
        .auto-style15 {
            width: 230px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        ETIQUETAS DE CODIGO DE BARRAS&nbsp;</h2>
    <p>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style7" rowspan="4">
                    <asp:RadioButtonList ID="RdLista" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="135px" Height="154px">
                        <asp:ListItem Selected="True">ARGOX</asp:ListItem>
                        <asp:ListItem>ZEBRA</asp:ListItem>
                        <asp:ListItem> TLP 2844</asp:ListItem>
                        <asp:ListItem>COMUM</asp:ListItem>
                        <asp:ListItem>GODEX</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style15" rowspan="4">
                    <asp:ListBox ID="ListBox1" runat="server" Height="152px" Width="209px"></asp:ListBox>
                </td>
                <td class="auto-style2" colspan="3"></td>
                <td align="right" class="auto-style8" valign="baseline">
                    <asp:Button ID="BtBuscar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="OK" Width="39px" OnClick="BtBuscar_Click" />
                    <asp:Button ID="BtImprimir" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Imprimir" OnClick="BtImprimir_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Codigo 
                    <asp:TextBox ID="TxCodigoBarras" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="144px"></asp:TextBox>
&nbsp;
                    </td>
                <td class="auto-style14" colspan="3">Descrição
                    <asp:TextBox ID="TxCodigoBarras0" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="242px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" align="center" style="font-size: 21px; font-weight: bold">
                    RELAÇÃO DE ITENS PARA IMPRESSÃO</td>
            </tr>
        </table>
</p>
    
                    <asp:GridView ID="DgItem" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="913px" GridLines="Horizontal" Height="42px" DataSourceID="ETIQUETAS" AllowPaging="True" PageSize="30">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="ETIQUETAS" runat="server" ConnectionString="" ProviderName="" SelectCommand=""></asp:SqlDataSource>
                </asp:Content>


