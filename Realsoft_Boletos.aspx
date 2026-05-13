<%@ Page Title="BOLETO BANCARIO" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Boletos.aspx.cs" Inherits="_Boletos" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
        .auto-style2 {
            height: 25px;
            width: 202px;
        }
        .auto-style3 {
            width: 202px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            width: 202px;
            height: 24px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
        <script type="text/javascript" src="Scripts/Realsoft_Jquery-1.js"></script>
<script src="Scripts/Realsoft_Jquery-2.js" type="text/javascript"></script>
<link href="Scripts/Realsoft_Jquery-3.js" rel="stylesheet" type="text/css" />
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
    $(document).ready(function () {
        $("#<%=TxDataEmissao.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%d/%m/%y ",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "Br",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
        $("#<%=TxDataVencimento.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%d/%m/%y ",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "Br",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
        $("#<%=TxDataDocumento.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%d/%m/%y ",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "Br",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
        $("#<%=TxDataProcessamento.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%d/%m/%y ",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "Br",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>

    <script type = "text/javascript">
        function isNumeric(keyCode) {
            return ((keyCode >= 48 && keyCode <= 57) || keyCode == 8)
        }
    </script>
    <script type = "text/javascript">
        function isAlpha(keyCode) {
            return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8)
        }
    </script> 
    <script type = "text/javascript">
        function isAlphaNumeric(keyCode) {
            return ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 && keyCode <= 90) || keyCode == 8)
        }
    </script>

    <script type = "text/javascript">
        function ProximoCampo(keyCode) {
            if (keyCode = 13) {

                alert('O CPF INFORMADO É VÁLIDO.');
            }
        }
    </script>
    <script type="text/javascript">

        function OpenNovoBanco() {
            myWindow = window.open('Realsoft_Banco.aspx', 'BANCO', 'width=800,height=600, scrollbars=yes,resizable=no')
            myWindow.focus()
            return false;
        }
    </script>
    <h2>
        BOLETO BANCÁRIO</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="81px" ImageUrl="~/Images/logo-boleto.png" Width="93px" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td align="right">
                    <asp:Button ID="BtNovo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtNovo_Click" Text="Novo" />
                    <asp:Button ID="BtGravar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Gravar" OnClick="BtGravar_Click" Enabled="False" />
                    <asp:Button ID="BtImpressao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtImpressao_Click" Text="Imprimir" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4" style="color: white; background-color: steelblue">DADOS DO DOCUMENTO</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Sequencial</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxSeguencial" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="Red" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style1">Data Emissão</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TxDataEmissao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="158px" ToolTip="Favor inserir o formato dd/MM/yyyy"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="BtDataEmissao" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" OnClick="BtDataEmissao_Click" />
                </td>
            </tr>
            <tr>
                <td>Data Vencimento</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxDataVencimento" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="158px" Height="17px" ToolTip="Favor inserir o formato dd/MM/yyyy"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="BtDataVencimento" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" OnClick="BtDataVencimento_Click" />
                </td>
                <td>Data do Documento</td>
                <td>
                    <asp:TextBox ID="TxDataDocumento" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="158px" ToolTip="Favor inserir o formato dd/MM/yyyy"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="BtDataDocumento" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" OnClick="BtDataDocumento_Click" />
                </td>
            </tr>
            <tr>
                <td>Data Processamento</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxDataProcessamento" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="158px" ToolTip="Favor inserir o formato dd/MM/yyyy"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="BtDataProcessamento" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" OnClick="BtDataProcessamento_Click" />
                </td>
                <td>Número</td>
                <td>
                    <asp:TextBox ID="TxNumero" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="Red" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Valor</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxValor" runat="server" BorderColor="Red" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" style="color: white; background-color: steelblue">DADOS DO CEDENTE</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4">
&nbsp;</td>
            </tr>
            <tr>
                <td>BANCO</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="CbBanco" runat="server" Width="209px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:ImageButton ID="BtBanco" runat="server" ImageUrl="~/Images/8.png" Height="32px" Width="32px" OnClientClick="return OpenNovoBanco(); " />
                    <asp:ImageButton ID="BtConsultarBanco" runat="server" ImageUrl="~/Images/10.png" Height="32px" Width="32px" OnClick="BtConsultarBanco_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>ACEITE</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="CbAceite" runat="server" Width="209px">
                        <asp:ListItem>SIM</asp:ListItem>
                        <asp:ListItem>NAO</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>CARTEIRA</td>
                <td>
                    <asp:TextBox ID="TxCarteira" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>DOCUMENTO</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxDocumento" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
                <td>NOME</td>
                <td>
                    <asp:TextBox ID="TxNomeCedente" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>AGENCIA</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxAgencia" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
                <td>CONTA</td>
                <td>
                    <asp:TextBox ID="TxConta" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>DV CONTA</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxPVConta" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
                <td>INSTRUÇÃO</td>
                <td>
                    <asp:TextBox ID="TxInstrucao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" style="color: white; background-color: steelblue">DADOS DO CLIENTE / SACADO</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>NOME</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxNome" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
                <td>CPF/CNPJ</td>
                <td>   
                    <asp:TextBox ID="TxCPF" runat="server" BorderColor="Red" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderStyle="Solid" Width="201px" Height="18px" ToolTip="Favor informar o cpf sem nenhum tipo de pontuação ou caractere especiais"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="BtConsultar" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" onclick="BtConsultar_Click" 
                        style="margin-bottom: 0px" Width="29px" />
                        
                </td>
            </tr>
            <tr>
                <td>ENDEREÇO</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxEndereco" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
                <td>BAIRRO</td>
                <td>
                    <asp:TextBox ID="TxBairro" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>CIDADE</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxCidade" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
                <td>ESTADO</td>
                <td>
                    <asp:TextBox ID="TxEstado" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>CEP</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxCep" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Width="209px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
