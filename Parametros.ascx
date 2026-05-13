<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Parametros.ascx.cs" Inherits="Parametros" %>
<style type="text/css">
    .auto-style1 {
        height: 23px;
    }
    .auto-style4 {
        height: 23px;
        width: 183px;
    }
    .auto-style5 {
        height: 23px;
        width: 81%;
    }
    .auto-style8 {
        width: 183px;
    }
    .auto-style9 {
        width: 81%;
    }
</style>

<table style="width:100%;">
    <tr>
        <td colspan="2" style="color: white; background-color: steelblue">PARAMETROS SMS</td>
    </tr>
    <tr>
        <td class="auto-style8">LOGIN</td>
        <td class="auto-style9">
            <asp:TextBox ID="TxLoginSMS" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">PASSWORD</td>
        <td class="auto-style9">
            <asp:TextBox ID="TxSenhaSMS" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="color: white; background-color: steelblue">PARAMETROS EMAIL</td>
    </tr>
    <tr>
        <td class="auto-style8">EMAIL PRINCIPAL</td>
        <td class="auto-style9">
            <asp:TextBox ID="TxEmail" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">PASSWORD</td>
        <td class="auto-style9">
            <asp:TextBox ID="TxSenhaEmail" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1" colspan="2" style="color: white; background-color: steelblue">NOTA FISCAL ELETRONICA</td>
    </tr>
    <tr>
        <td class="auto-style4">CAMINHO CERTIFICADO</td>
        <td class="auto-style5">
            <asp:TextBox ID="TxCertificado" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
    </tr>
</table>

