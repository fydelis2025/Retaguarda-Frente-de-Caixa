<%@ Page Title="CONTAS A PAGAR" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_ContasPagar.aspx.cs" Inherits="_ContasPagar" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 333px;
        }
        .auto-style3 {
            height: 26px;
            width: 333px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            width: 333px;
            height: 31px;
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
            ifFormat: "%Y/%m/%d %H:%M",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
        $("#<%=TxDataVencimento.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d %H:%M",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>
<script language="javascript" type="text/javascript">
    function ClearUI() {
        $find("textValidator").hide();
    }
    function IsValid() {
        var textbox = $get("TextBox1");
        if (textbox.value == "") {
            return false;
        }
        else
            return true;
    }
    function ClosePopup() {
        if (IsValid()) {
            $find('modalwithinput').hide();
            alert("You have given your name");
        }
    }
</script>

    <script type="text/javascript">
        function OpenDepartamento() {
            myWindow = window.open('Realsoft_Departamento.aspx', 'DEPARTAMENTO', 'width=800,height=400, scrollbars=no,resizable=no')
            myWindow.focus()
            return false;
        }
    </script>
        <script type="text/javascript">
            function OpenPlanodeContas() {
                myWindow = window.open('Realsoft_PlanodeContas.aspx', 'PLANO DE CONTAS', 'width=800,height=400, scrollbars=no,resizable=no')
                myWindow.focus()
                return false;
            }
    </script>

    <h2>
        realsoft - contas a pagar</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtNovo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Novo" OnClick="BtNovo_Click" />
                    <asp:Button ID="BtGravar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Gravar" OnClick="BtGravar_Click" />
                    <asp:Button ID="BtListar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Listar Contas" Width="101px" OnClick="BtListar_Click" />
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Nome /Razão Social</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxDescricao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="283px"></asp:TextBox>
                </td>
                <td class="auto-style1">Departamento</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="CbDepartamento" runat="server" Height="16px" Width="218px">
                    </asp:DropDownList>
                &nbsp;<asp:ImageButton ID="BtDepartamento" runat="server" ImageUrl="~/images/database-icon.png" onClientClick="return OpenDepartamento()" OnClick="BtDepartamento_Click" />
                </td>
            </tr>
            <tr>
                <td>Nº Documento</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxDocumento" runat="server" BorderColor="Red" BorderStyle="Solid" Width="283px"></asp:TextBox>
                </td>
                <td>Plano de Contas</td>
                <td>
                    <asp:DropDownList ID="CbPlanoContas" runat="server" Height="16px" Width="218px">
                    </asp:DropDownList>
                &nbsp;<asp:ImageButton ID="BtPlanos" runat="server" ImageUrl="~/images/database-icon.png" OnClientClick="return OpenPlanodeContas()" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Data de Emissão</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxDataEmissao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="218px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="BtCalendario" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" OnClick="BtCalendario_Click" />
                </td>
                <td class="auto-style4">Vencimento</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxDataVencimento" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="178px"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="BtCalVencimento" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" OnClick="BtCalVencimento_Click" />
                </td>
            </tr>
            <tr>
                <td>Valor do documento</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxValor" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="283px"></asp:TextBox>
                </td>
                <td>Parcelamento</td>
                <td>
                    <asp:DropDownList ID="CbParcela" runat="server" Width="218px">
                        <asp:ListItem Value="A VISTA"></asp:ListItem>
                        <asp:ListItem Value="A PRAZO"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Nº de Parcelas</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxNumero" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="218px"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="BtGerarParcelas" runat="server" Height="24px" ImageUrl="~/Images/48.png" Width="31px" OnClick="BtGerarParcelas_Click" />
                </td>
                <td class="auto-style4">Total</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxTotal" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="218px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="DgLista" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" Width="905px" DataSourceID="NumeroParcelas" AllowPaging="True">
                        <AlternatingRowStyle BackColor="PaleGoldenrod"  />
                        <Columns>
                            <asp:ButtonField ButtonType="Image" CommandName="Ativo" HeaderText="Status" ImageUrl="~/Images/exclamation-mark-red-icon.png" Text="Status">
                            <ItemStyle Height="10px" Width="10px" />
                            </asp:ButtonField>
                            <asp:ButtonField ButtonType="Image" CommandName="Baixar" HeaderText="Baixar" ImageUrl="~/Images/Save.png">
                            <ItemStyle Height="10px" Width="10px" />
                            </asp:ButtonField>
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="NumeroParcelas" runat="server" ConnectionString="" ProviderName="" SelectCommand=""></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
