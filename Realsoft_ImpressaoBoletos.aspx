<%@ Page Title="BOLETOS" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Realsoft_ImpressaoBoletos.aspx.cs" Inherits="_ImpressaoBoletos" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        &nbsp;</h2>
    <p>
        <iframe runat="server" src="/Boletos/Boleto" width="700" height="1024" scrolling="no" frameborder="0"></iframe></p>
    
    <p>
        &nbsp;</p>
</asp:Content>

