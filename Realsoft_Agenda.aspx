<%@ Page Title="AGENDA TELEFONICA" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Agenda.aspx.cs" Inherits="_Agenda" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {}
        .auto-style3 {
            height: 26px;
            width: 32%;
        }
        .auto-style5 {
            height: 25px;
        }
        .auto-style7 {
        }
        .auto-style8 {
            height: 26px;
            width: 10%;
        }
        .auto-style11 {
            width: 32%;
        }
        .auto-style12 {
            height: 26px;
            width: 49%;
        }
        .auto-style13 {
        }
        .auto-style14 {
            width: 49%;
        }
        .auto-style15 {
            height: 26px;
            width: 60px;
        }
        .auto-style16 {
            height: 30px;
        }
        .auto-style17 {
            width: 32%;
            height: 30px;
        }
        .auto-style18 {
            width: 60px;
            height: 30px;
        }
        .auto-style19 {
            width: 49%;
            height: 30px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <script type = "text/javascript">
        function isNumeric(keyCode)
        {
            return ((keyCode >= 48 && keyCode <= 57) || keyCode == 8)
        }
    </script>
    <script type = "text/javascript">
        function isAlpha(keyCode)
        {
            return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8)
        }
    </script> 
    <script type = "text/javascript">
        function isAlphaNumeric(keyCode)
        {
            return ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 && keyCode <= 90) || keyCode == 8)
        }
    </script>

    <script type = "text/javascript">
        function ProximoCampo(keyCode) {
            if (keyCode = 13)
            {
                
            }            
        }
    </script>

    <h2>
        AGENDA TELEFONICA</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="107px" ImageUrl="~/Images/mundo.jpg" Width="124px" />
                </td>
                <td class="auto-style13" colspan="2">
                    <asp:Image ID="Image2" runat="server" Height="107px" ImageUrl="~/Images/adw.jpg" Width="275px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="BtNovo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Novo" OnClick="BtNovo_Click" />
                    <asp:Button ID="BtGravar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Gravar" OnClick="BtGravar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">NOME</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxNome" runat="server" BorderColor="Red" BorderStyle="Solid" Width="247px"></asp:TextBox>
                </td>                
                <td class="auto-style13">TELEFONE</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TxTelefone" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="247px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">CELULAR</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxCelular" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="247px"></asp:TextBox>
                </td>
                <td class="auto-style15">EMAIL</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TxEmailAgenda" runat="server" onkeydown = "return ProximoCampo(event.keyCode);" BorderColor="SteelBlue" BorderStyle="Solid" Width="247px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="4" style="color: white; background-color: steelblue; font-weight: bold;">CONGIRURAÇÃO DO SMS</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">Parametro Torpedo SMS</td>
                <td class="auto-style18"></td>
                <td class="auto-style19">
                    <asp:Button ID="BtEnviarTorpedo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Enviar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Mensagem</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxNome3" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="247px"></asp:TextBox>
                </td>
                <td class="auto-style15">Titulo</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TxNome4" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="247px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Saldo</td>
                <td class="auto-style11">
                    <asp:Label ID="LbSaldoSMS" runat="server"></asp:Label>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4" style="color: white; background-color: steelblue; font-weight: bold;">CONFIGURAÇÃO DO EMAIL</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">Parametro envio de Email</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="BtEmail" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Enviar" OnClick="BtEmail_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Email</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxEmail" runat="server" BorderColor="Red" BorderStyle="Solid" Width="247px"></asp:TextBox>
                </td>
                <td class="auto-style13">Para</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TxPara" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="247px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Copia</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxCopia" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="247px"></asp:TextBox>
                </td>
                <td class="auto-style13">Assunto</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TxAssunto" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="247px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Mensagem</td>
                <td class="auto-style2" colspan="3">
                    <asp:TextBox ID="TxMensagem" TextMode="MultiLine" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="56px" Width="658px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
