<%@ Page Title="SOBRE" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style2 {
            font-weight: bold;
            height: 25px;
        }
        .auto-style3 {
            width: 301px;
        }
        .auto-style4 {
            width: 436px;
        }
        .auto-style5 {
            width: 325px;
        }
        .auto-style6 {
            width: 277px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        realsoft - suporte</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td align="center" class="auto-style2" colspan="2">CHAMADOS</td>
            </tr>
            <tr>
                <td align="center" class="auto-style3" rowspan="2">
                    <asp:Image ID="Image1" runat="server" Height="86px" ImageUrl="~/images/onebit_10.png" Width="112px" />
                </td>
                <td>Para resolver questões técnicas, comerciais ou financeiras, abra um chamado. Após análise, vamos definir a melhor solução para o seu problema</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BtChamados" runat="server" BackColor="White" BorderColor="SteelBlue" BorderStyle="Solid" Text="Abrir Chamados" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td align="center" class="auto-style2" colspan="4">FALE CONOSCO</td>
            </tr>
            <tr>
                <td align="center" class="auto-style6">
                    <asp:Image ID="Image2" runat="server" Height="86px" ImageUrl="~/images/54.png" />
                </td>
                <td class="auto-style5">Entre em contato conosco para resolver seu problema ou duúvida.</td>
                <td align="center">
                    <asp:Image ID="Image3" runat="server" Height="86px" ImageUrl="~/images/70.png" />
                </td>
                <td>Captais ou região metropolitana. (71) 3029-3357</td>
            </tr>
            <tr>
                <td align="center" class="auto-style4" colspan="2">
                    <asp:Button ID="BtChamados0" runat="server" BackColor="White" BorderColor="SteelBlue" BorderStyle="Solid" Text="Iniciar Chat" />
                </td>
                <td align="center" colspan="2">
                    <asp:Button ID="BtChamados1" runat="server" BackColor="White" BorderColor="SteelBlue" BorderStyle="Solid" Text="Enviar Solicitação por Email" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
