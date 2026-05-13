<%@ Page Title="RECARGA DE CELULAR" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Recarga.aspx.cs" Inherits="_Recarga" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        RECARGA DE CELULAR</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="8">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#F7F6F3" />
                        <DynamicSelectedStyle BackColor="#5D7B9D" />
                        <Items>
                            <asp:MenuItem ImageUrl="~/Images/3.png" Text="Transações" Value="Transações">
                                <asp:MenuItem ImageUrl="~/Images/3.png" Text="Detalhe Venda" Value="Detalhe Venda"></asp:MenuItem>
                                <asp:MenuItem ImageUrl="~/Images/3.png" Text="Pendentes" Value="Pendentes"></asp:MenuItem>
                                <asp:MenuItem ImageUrl="~/Images/3.png" Text="Lista Vendas" Value="Lista Vendas"></asp:MenuItem>
                                <asp:MenuItem ImageUrl="~/Images/3.png" Text="Resumo Vendas" Value="Resumo Vendas"></asp:MenuItem>
                                <asp:MenuItem ImageUrl="~/Images/3.png" Text="Relatório Vendas" Value="Relatório Vendas"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/Images/3.png" Text="Consultas" Value="Consultas">
                                <asp:MenuItem ImageUrl="~/Images/3.png" Text="Boleto" Value="Boleto"></asp:MenuItem>
                                <asp:MenuItem ImageUrl="~/Images/3.png" Text="Lista de Boletos" Value="Lista de Boletos"></asp:MenuItem>
                                <asp:MenuItem ImageUrl="~/Images/3.png" Text="Totais por Dia" Value="Totais por Dia"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/Images/3.png" Text="Emissão Boleto Antecipado" Value="Emissão Boleto Antecipado"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#5D7B9D" />
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #C0C0C0; font-weight: bold;">Limite de Credito</td>
                <td class="auto-style1" style="background-color: #C0C0C0; font-weight: bold;">
                    <asp:Label ID="LbCredito" runat="server" ForeColor="SteelBlue" Text="0,00"></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #C0C0C0; font-weight: bold;">Limite Disponível</td>
                <td class="auto-style1" style="background-color: #C0C0C0; font-weight: bold;">
                    <asp:Label ID="LbDisponivel" runat="server" ForeColor="SteelBlue" Text="0,00"></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #C0C0C0; font-weight: bold;">Antecipado</td>
                <td class="auto-style1" style="background-color: #C0C0C0; font-weight: bold;">
                    <asp:Label ID="LbAntecipado" runat="server" ForeColor="#660066" Text="0,00"></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #C0C0C0; font-weight: bold;">Valor Aberto</td>
                <td class="auto-style1" style="background-color: #C0C0C0; font-weight: bold;">
                    <asp:Label ID="LbValorAberto" runat="server" ForeColor="Red" Text="0,00"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="8">
                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="TabDetalhesVenda" runat="server">
                        </asp:View>
                        <asp:View ID="TabPendente" runat="server">
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                        </asp:View>
                        <asp:View ID="View4" runat="server">
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="5">&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>


