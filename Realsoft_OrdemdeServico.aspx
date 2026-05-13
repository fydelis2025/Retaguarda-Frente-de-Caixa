<%@ Page Title="ORDEM DE SERVIÇO" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_OrdemdeServico.aspx.cs" Inherits="_OrdemdeServico" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            height: 30px;
            width: 319px;
        }
        .auto-style4 {
            width: 319px;
        }
        .auto-style5 {
            height: 29px;
            width: 319px;
        }
        .auto-style6 {
            height: 30px;
            width: 297px;
        }
        .auto-style7 {
            height: 30px;
            width: 74px;
        }
        .auto-style8 {
            width: 74px;
        }
        .auto-style9 {
            height: 29px;
            width: 74px;
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

                validacampo();
            }
        }
    </script>
    <h2>
        ORDEM DE SERVIÇO</h2>
    <p>
        <table style="width: 98%;">
            <tr>
                <td class="auto-style7">Situação</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="CbSituacao" runat="server">
                        <asp:ListItem>ABERTO</asp:ListItem>
                        <asp:ListItem>FINALIZADO</asp:ListItem>
                        <asp:ListItem>PENDENTE</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td align="center" class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style1" colspan="2" align="right">
                    <asp:Button ID="BtNovo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Novo" OnClick="BtNovo_Click" />
                    <asp:Button ID="BtGravar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Gravar" OnClick="BtGravar_Click" />
                    <asp:Button ID="BtNovo0" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Histórico" />
                    <asp:Button ID="BtImprimir" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Imprimir" OnClick="BtImprimir_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">CPF </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TxCliente" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="Red" BorderStyle="Solid" Width="211px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="BtConsultarCPF" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" style="margin-bottom: 0px" Width="29px" OnClick="BtConsultarCPF_Click" />
                        
                    <br />
                    <asp:Label ID="LbCliente" runat="server" ForeColor="Red"></asp:Label>
                        
                </td>
                <td>Fone</td>
                <td>
                    <asp:TextBox ID="TxFone" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Contato</td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TxContato" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="211px"></asp:TextBox>
                </td>
                <td>Endereço</td>
                <td>
                    <asp:TextBox ID="TxEndereco" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="363px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Bairro</td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TxBairro" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="211px"></asp:TextBox>
                </td>
                <td>Cidade</td>
                <td>
                    <asp:TextBox ID="TxCidadade" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">UF</td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TxUF" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                </td>
                <td>Equipamento</td>
                <td>
                    <asp:TextBox ID="TxEquipamento" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="363px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Problema</td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TxProblema" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="350px"></asp:TextBox>
                </td>
                <td>Solução</td>
                <td>
                    <asp:TextBox ID="TxSolucao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="17px" Width="362px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Tecnico</td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TxTecnico" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="350px"></asp:TextBox>
                </td>
                <td>Número</td>
                <td>
                    <asp:Label ID="LbOrdemServico" runat="server" Font-Size="X-Large" ForeColor="Red" Text="000000" Font-Bold="True" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style4" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="bold" colspan="5" style="color: WHITE; background-color: STEELBLUE">Relação dos produtos</td>
            </tr>
            <tr>
                <td class="auto-style8">Código</td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TxCodigo" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="Red" BorderStyle="Solid" Width="275px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="BtConsultar" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" style="margin-bottom: 0px" Width="29px" />
                        
                </td>
                <td>Descrição</td>
                <td>
                    <asp:TextBox ID="TxDescricao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="363px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">UN</td>
                <td class="auto-style5" colspan="2">
                    <asp:TextBox ID="TxUnidade" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="71px"></asp:TextBox>
&nbsp;</td>
                <td class="auto-style2">Quantidade</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxQuantidade" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="71px">1</asp:TextBox>
&nbsp; <asp:ImageButton ID="BtCalcular" runat="server" Height="24px" 
                        ImageUrl="~/Images/save.png" style="margin-bottom: 0px" Width="24px" OnClick="BtCalcular_Click" ToolTip="Insere novo produto" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Preço</td>
                <td class="auto-style5" colspan="2">
                    <asp:TextBox ID="TxPreco" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="71px">0,00</asp:TextBox>
                </td>
                <td class="auto-style2">Total Liquido</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxTotalLiquido" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="71px">0,00</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Acrescimo</td>
                <td class="auto-style5" colspan="2">
                    <asp:TextBox ID="TxAcrescimo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="71px">0,00</asp:TextBox>
                </td>
                <td class="auto-style2">Desconto</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxDesconto" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="71px">0,00</asp:TextBox>
&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style9">Mão Obra</td>
                <td class="auto-style5" colspan="2">
                    <asp:TextBox ID="TxMaoObra" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="71px">0,00</asp:TextBox>
                </td>
                <td class="auto-style2">Total Geral</td>
                <td class="auto-style2">&nbsp;<asp:TextBox ID="TxTotalGeral" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="71px">0,00</asp:TextBox>
&nbsp; <asp:ImageButton ID="BtCalcularTotalNF" runat="server" Height="24px" 
                        ImageUrl="~/Images/save.png" style="margin-bottom: 0px" Width="24px" OnClick="BtCalcularTotalNF_Click" ToolTip="Calcular total da NF " />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="5">
                    <asp:GridView ID="DgLista" runat="server" CellPadding="4" ForeColor="#333333" DataSourceID="ORDEM" GridLines="None" Width="883px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:ButtonField ButtonType="Image" CommandName="Excluir" HeaderText="Excluir" ImageUrl="~/Images/Excluir.png" Text="Excluir" >
                            <HeaderStyle Width="70px" />
                            </asp:ButtonField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="ORDEM" runat="server" ConnectionString="" ProviderName="" SelectCommand=""></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
