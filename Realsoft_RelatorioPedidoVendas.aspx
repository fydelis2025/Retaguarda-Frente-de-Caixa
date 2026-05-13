<%@ Page Title="IMPRESSÃO PEDIDO DE VENDAS" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Realsoft_RelatorioPedidoVendas.aspx.cs" Inherits="_RelatorioPedidoVendas" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="488px" Width="789px">
    </rsweb:ReportViewer>
    <p>
        &nbsp;</p>
</asp:Content>

