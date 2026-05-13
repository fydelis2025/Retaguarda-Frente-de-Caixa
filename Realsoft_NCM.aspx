<%@ Page Title="NCM" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_NCM.aspx.cs" Inherits="_RealsoftNCM" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style4 {
            width: 297px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 147px;
        }
        .auto-style6 {
            width: 269px;
        }
        .auto-style7 {
            height: 26px;
            width: 269px;
        }
        .auto-style10 {
            height: 26px;
            width: 94px;
        }
        .auto-style11 {
            width: 94px;
            height: 21px;
        }
        .auto-style12 {
            width: 297px;
            height: 21px;
        }
        .auto-style13 {
            width: 147px;
            height: 21px;
        }
        .auto-style14 {
            width: 269px;
            height: 21px;
        }
        .auto-style15 {
        }
        .auto-style17 {
            width: 297px;
        }
        .auto-style18 {
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
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
    <h2>
        &quot;CADASTRO NCM</h2>
    <table __designer:mapid="ff" style="width:99%; height: 381px;">
        <tr __designer:mapid="100">
            <td __designer:mapid="101" class="auto-style15" colspan="2">
                <asp:Image ID="Image1" runat="server" Height="102px" ImageUrl="~/Images/ncm.png" Width="127px" />
            </td>
            <td __designer:mapid="103" class="auto-style18" colspan="2">&nbsp;</td>
        </tr>
        <tr __designer:mapid="100">
            <td __designer:mapid="101" class="auto-style15">&nbsp;</td>
            <td __designer:mapid="102" class="auto-style17">&nbsp;</td>
            <td __designer:mapid="103" class="auto-style18">&nbsp;</td>
            <td __designer:mapid="104" class="auto-style6" align="right">
                <asp:Button runat="server" Text="Novo" BorderColor="SteelBlue" BorderStyle="Solid" ID="BtNovo" OnClick="BtNovo_Click"></asp:Button>
                <asp:Button runat="server" Text="Gravar" BorderColor="SteelBlue" BorderStyle="Solid" ID="BtGravar" OnClick="BtGravar_Click"></asp:Button>
                <asp:Button runat="server" Text="Consultar" BorderColor="SteelBlue" BorderStyle="Solid" ID="BtConsultar" OnClick="BtConsultar_Click"></asp:Button>
            </td>
        </tr>
        <tr __designer:mapid="107">
            <td __designer:mapid="108" class="auto-style15">&nbsp;</td>
            <td __designer:mapid="109" class="auto-style17">
                &nbsp;</td>
            <td __designer:mapid="10b" class="auto-style18">&nbsp;</td>
            <td __designer:mapid="10c" class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="107">
            <td __designer:mapid="108" class="auto-style15">Codigo</td>
            <td __designer:mapid="109" class="auto-style17">
                <asp:TextBox runat="server" BorderColor="Red" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderStyle="Solid" Height="17px" Width="306px" ID="TxCodigoNCM"></asp:TextBox>
            </td>
            <td __designer:mapid="10b" class="auto-style18">Descrição</td>
            <td __designer:mapid="10c" class="auto-style6">
                <asp:TextBox runat="server" BorderColor="Red" BorderStyle="Solid" Height="17px" Width="306px" ID="TxDescricaoNCM"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="10e">
            <td __designer:mapid="10f" class="auto-style10">UN</td>
            <td __designer:mapid="110" class="auto-style4">
                <asp:TextBox runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="306px" ID="TxUnidadeNCM"></asp:TextBox>
            </td>
            <td __designer:mapid="111" class="auto-style5">UF</td>
            <td __designer:mapid="112" class="auto-style7">
                <asp:DropDownList ID="CbUF" runat="server" Height="16px" Width="222px">
                </asp:DropDownList>
            &nbsp;
                <asp:ImageButton ID="BtAdd" runat="server" Height="24px" ImageUrl="~/Images/8.png" ToolTip="Adicionar mais UF ao NCM" Width="24px" OnClick="BtAdd_Click" />
            </td>
        </tr>
        <tr __designer:mapid="10e">
            <td __designer:mapid="10f" class="auto-style15">Aliquota</td>
            <td __designer:mapid="110" class="auto-style17">
                <asp:TextBox runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="306px" ID="TxAliquotaNCM"></asp:TextBox>
            </td>
            <td __designer:mapid="111" class="auto-style18">IPI</td>
            <td __designer:mapid="112" class="auto-style6">
                <asp:TextBox runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="306px" ID="TxIPI"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="10e">
            <td __designer:mapid="10f" class="auto-style15">MVA Orignal</td>
            <td __designer:mapid="110" class="auto-style17">
                <asp:TextBox runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="306px" ID="TxMvOriginal"></asp:TextBox>
            </td>
            <td __designer:mapid="111" class="auto-style18">MVA Ajustada</td>
            <td __designer:mapid="112" class="auto-style6">
                <asp:TextBox runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="17px" Width="306px" ID="TxMvAjustada"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="10e">
            <td __designer:mapid="10f" class="auto-style15">PIS</td>
            <td __designer:mapid="110" class="auto-style17">
                <asp:TextBox runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="306px" ID="TxPIS"></asp:TextBox>
            </td>
            <td __designer:mapid="111" class="auto-style18">CFOP Devolução</td>
            <td __designer:mapid="112" class="auto-style6">
                <asp:TextBox runat="server" BorderColor="SteelBlue" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderStyle="Solid" Height="16px" Width="306px" ID="TxDevolucao"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="10e">
            <td __designer:mapid="10f" class="auto-style15">CFOP Transf.</td>
            <td __designer:mapid="110" class="auto-style17">
                <asp:TextBox runat="server" BorderColor="SteelBlue" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderStyle="Solid" Height="16px" Width="306px" ID="TxTransferencia"></asp:TextBox>
            </td>
            <td __designer:mapid="111" class="auto-style18">Cofins</td>
            <td __designer:mapid="112" class="auto-style6">
                <asp:TextBox runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="306px" ID="TxCofins"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="10e">
            <td __designer:mapid="10f" class="auto-style15">St Tribut.</td>
            <td __designer:mapid="110" class="auto-style17">
                <asp:TextBox runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="306px" ID="TxStTributaria"></asp:TextBox>
            </td>
            <td __designer:mapid="111" class="auto-style18">&nbsp;</td>
            <td __designer:mapid="112" class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="10e">
            <td __designer:mapid="10f" class="auto-style15">&nbsp;</td>
            <td __designer:mapid="110" colspan="3">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="10e">
            <td __designer:mapid="10f" class="auto-style11">OBs</td>
            <td __designer:mapid="110" class="auto-style12">
                <asp:TextBox runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="32px" Width="306px" ID="TxObs" MaxLength="200" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td __designer:mapid="111" class="auto-style13">Descrição<br />
&nbsp;NCM </td>
            <td __designer:mapid="112" class="auto-style14">
                <asp:TextBox runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="32px" Width="306px" ID="TxDescricaoN" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="113">
            <td colspan="4" __designer:mapid="114">
                <asp:GridView runat="server" AllowPaging="True" CellPadding="4" DataSourceID="Mercadorias" ForeColor="#333333" Width="925px" ID="GridView1">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                    <Columns>
                        <asp:ButtonField ButtonType="Image" CommandName="Excluir" HeaderText="Excluir" ImageUrl="~/Images/Excluir.png" Text="Excluir">
                        <HeaderStyle Width="70px" />
                        </asp:ButtonField>
                    </Columns>
                    <EditRowStyle BackColor="#999999"></EditRowStyle>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>
                    <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>
                    <SortedAscendingCellStyle BackColor="#E9E7E2">
                    </SortedAscendingCellStyle>
                    <SortedAscendingHeaderStyle BackColor="#506C8C">
                    </SortedAscendingHeaderStyle>
                    <SortedDescendingCellStyle BackColor="#FFFDF8">
                    </SortedDescendingCellStyle>
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE">
                    </SortedDescendingHeaderStyle>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="Mercadorias"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
