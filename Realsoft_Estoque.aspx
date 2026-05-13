<%@ Page Title="ESTOQUE" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Estoque.aspx.cs" Inherits="_Estoque" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        ESTOQUE DE PRODUTOS</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image3" runat="server" Height="79px" ImageUrl="~/images/bling-estoque.png" Width="282px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4" style="color: WHITE; background-color: STEELBLUE; font-weight: bold;">OÇÃO DE PESQUISA</td>
            </tr>
            <tr>
                <td>Oção</td>
                <td>
                    <asp:RadioButton ID="RdGeral" runat="server" Text="Geral" />
                    <asp:RadioButton ID="RdPeriodo" runat="server" Text="Período" />
                </td>
                <td align="right">
                    &nbsp;</td>
                <td align="right">
                    <asp:Button ID="BtBuscar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Buscar" OnClick="BtBuscar_Click" />
                </td>
            </tr>
            <tr>
                <td>CODIGO BARRAS</td>
                <td>
                    <asp:TextBox ID="TxCodigo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="285px"></asp:TextBox>
                </td>
                <td>DESCRIÇÃO</td>
                <td>
                    <asp:TextBox ID="TxDescricao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>PERÍODO INICIAL</td>
                <td>
                    <asp:TextBox ID="TxPeriodoInicial" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="224px"></asp:TextBox>
                </td>
                <td>FINAL</td>
                <td>
                    <asp:TextBox ID="TxPeriodoFinal" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="224px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="color: WHITE; background-color: STEELBLUE; font-weight: bold;">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <rsweb:ReportViewer ID="RptEstoque" runat="server" Visible="False" Width="907px">
                    </rsweb:ReportViewer>
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
