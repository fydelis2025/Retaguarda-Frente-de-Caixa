<%@ Page Title="PROPOSTA" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Realsoft_CodigoEAN.aspx.cs" Inherits="_CodigoEAN" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        GERAR CODIGO EAN</h2>
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>CODIGO PAIS</td>
            <td>
                <asp:TextBox ID="txtCountryCode" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="160px" Enabled="False">789</asp:TextBox>
            </td>
            <td>
                <asp:Button ID="butDraw" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="butDraw_Click" Text="Gerar Codigo EAN" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">CODIGO FABRICA</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtManufacturerCode" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="160px"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:Button ID="BtImprimir" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtImprimir_Click" Text="Imprimir" />
            </td>
        </tr>
        <tr>
            <td>COIDO PRODUTO</td>
            <td>
                <asp:TextBox ID="txtProductCode" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="160px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>DIGITO CHECKSUM</td>
            <td>
                <asp:TextBox ID="txtChecksumDigit" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="160px">8</asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>ESCALA FATOR</td>
            <td>
                <asp:DropDownList ID="cboScale" runat="server">
                    <asp:ListItem>0,8</asp:ListItem>
                    <asp:ListItem>0,9</asp:ListItem>
                    <asp:ListItem Selected="True">1,0</asp:ListItem>
                    <asp:ListItem>1,1</asp:ListItem>
                    <asp:ListItem>1,2</asp:ListItem>
                    <asp:ListItem>1,3</asp:ListItem>
                    <asp:ListItem>1,4</asp:ListItem>
                    <asp:ListItem>1,5</asp:ListItem>
                    <asp:ListItem>1,6</asp:ListItem>
                    <asp:ListItem>1,7</asp:ListItem>
                    <asp:ListItem>1,8</asp:ListItem>
                    <asp:ListItem>1,9</asp:ListItem>
                    <asp:ListItem>2,0</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Image ID="picBarcode" runat="server" Height="181px" Width="249px" ImageUrl="~/Images/ean.png"  />
            </td>
        </tr>
    </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
