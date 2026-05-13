<%@ Page Title="Danfe" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Realsoft_Danfe.aspx.cs" Inherits="_Danfe" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Danfe</h2>
    <br />
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <rsweb:ReportViewer ID="RptDanfe" runat="server" Height="493px" Width="726px">
    </rsweb:ReportViewer>
    <p>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
