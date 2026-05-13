<%@ Page Title="SOBRE" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Parametros.aspx.cs" Inherits="_Parametros" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            }
        .auto-style11 {
        height: 23px;
        width: 86px;
    }
    .auto-style14 {
        width: 141px;
    }
    .auto-style16 {
        height: 23px;
        width: 141px;
    }
    .auto-style18 {
        height: 23px;
        width: 253px;
    }
    .auto-style19 {
        width: 913px;
    }
    .auto-style20 {
        width: 663px;
    }
    .auto-style21 {
        height: 23px;
        width: 663px;
    }
    .auto-style22 {
        height: 23px;
        width: 308px;
    }
        .auto-style23 {
            width: 141px;
            height: 21px;
        }
        .auto-style24 {
            width: 663px;
            height: 21px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        PARAMETRIZAÇÃO DO SISTEMA</h2>
    <table class="auto-style19">
        <tr>
            <td colspan="4" style="color: white; background-color: steelblue; font-weight: bold;" align="center">PARAMETROS SMS</td>
        </tr>
        <tr>
            <td class="auto-style14">LOGIN</td>
            <td class="auto-style20" colspan="3">
                <asp:TextBox ID="TxLoginSMS" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">PASSWORD</td>
            <td class="auto-style20" colspan="3">
                <asp:TextBox ID="TxSenhaSMS" runat="server" TextMode="Password" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">MENSAGEM</td>
            <td class="auto-style20" colspan="3">
                <asp:TextBox ID="TxMensagemSMS" runat="server" TextMode="Password" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">TITULO</td>
            <td class="auto-style24" colspan="3">
                <asp:TextBox ID="TxTituloSMS" runat="server" TextMode="Password" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="color: white; background-color: steelblue; font-weight: bold;" align="center">PARAMETROS EMAIL</td>
        </tr>
        <tr>
            <td class="auto-style14">EMAIL PRINCIPAL</td>
            <td class="auto-style20" colspan="3">
                <asp:TextBox ID="TxEmail" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">PASSWORD</td>
            <td class="auto-style20" colspan="3">
                <asp:TextBox ID="TxSenhaEmail" runat="server" TextMode="Password" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">MENSAGEM</td>
            <td class="auto-style24" colspan="3">
                <asp:TextBox ID="TxMensagemEmail" runat="server" TextMode="Password" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">ASSUNTO</td>
            <td class="auto-style24" colspan="3">
                <asp:TextBox ID="TxTituloEmail" runat="server" TextMode="Password" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="4" style="color: white; background-color: steelblue; font-weight: bold;" align="center">NOTA FISCAL ELETRONICA</td>
        </tr>
        <tr>
            <td class="auto-style16">RAZÃO SOCIAL</td>
            <td class="auto-style21" colspan="3">
                <asp:TextBox ID="TxCertificadoRazaoSocial" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">CNPJ</td>
            <td class="auto-style21" colspan="3">
                <asp:TextBox ID="TxCertificadoCNPJ" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" align="center" colspan="4" style="color: white; background-color: steelblue; font-weight: bold;">CONFIGURAR MENU DO PAINEL DE CONTROLE</td>
        </tr>
        <tr>
            <td class="auto-style16">CPF/CNPJ</td>
            <td class="auto-style18">
                <asp:TextBox ID="TxCertificado0" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="200px"></asp:TextBox>
            &nbsp;</td>
            <td class="auto-style11">RAZÃO SOCIAL</td>
            <td class="auto-style22">
                <asp:TextBox ID="TxCertificado1" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>

