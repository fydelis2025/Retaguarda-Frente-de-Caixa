<%@ Page Title="PRODUTOS PESAVEIS" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Realsoft_ProdutosFracionados.aspx.cs" Inherits="_ProdutosFracionados" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Relatório de produtos pesáveis</h2>
    <p>
        &nbsp;</p>
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="913px">
        <LocalReport DisplayName="Produtos Pesaveis">
        </LocalReport>
    </rsweb:ReportViewer>
</asp:Content>

