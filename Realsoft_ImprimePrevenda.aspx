<%@ Page Language="C#" Title="IMPRESSÃO PREVENDA" AutoEventWireup="true" CodeFile="Realsoft_ImprimePrevenda.aspx.cs" Inherits="_ImprimePrevenda" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <rsweb:ReportViewer ID="RptPrevenda" runat="server" Height="333px" Width="779px" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
            <LocalReport ReportPath="ReportPrevenda.rdlc">
            </LocalReport>
        </rsweb:ReportViewer>
    
    </div>
    </form>
</body>
</html>