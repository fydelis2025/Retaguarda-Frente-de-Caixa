<%@ Page Title="PROPOSTA" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Realsoft_Proposta.aspx.cs" Inherits="_Proposta" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        &nbsp;</h2>
    <p>
       <asp:ScriptManager runat="server"></asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer2" runat="server" Height="595px" Width="673px">
            <LocalReport DisplayName="Proposta">
            </LocalReport>
        </rsweb:ReportViewer></p>
    <p>
        &nbsp;</p>
</asp:Content>
