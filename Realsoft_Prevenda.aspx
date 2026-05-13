<%@ Page Title="PREVENDA" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Prevenda.aspx.cs" Inherits="_PreVenda" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    
    <style type="text/css">
        .style1
        {
            height: 25px;
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
        
    function OpenPlanodeContas() {
        myWindow = window.open('Realsoft_MercadoriaPrevenda.aspx', 'MERCADORIAS', 'width=1024,height=600, scrollbars=yes,resizable=no')
        myWindow.focus()
        return false;
    }
    </script>
    <script type="text/javascript">

        function rptprevenda() {
            myWindow = window.open('Realsoft_ImprimePrevenda.aspx', 'PREVENDA', 'width=800,height=400, scrollbars=yes,resizable=no')
            myWindow.focus()
            return false;
        }
    </script>
    
    <script type="text/javascript">

        function historicoprevenda() {
            myWindow = window.open('Realsoft_HistoricoClientePrevenda.aspx', 'HISTORICO', 'width=1040,height=600, scrollbars=yes,resizable=no')
            myWindow.focus()
            return false;
        }
    </script>   
    <script type="text/javascript">

        function devolucaoprevenda() {
            myWindow = window.open('Realsoft_DevolucaoPrev.aspx', 'DEVOLUÇÃO', 'width=1040,height=600, scrollbars=yes,resizable=no')
            myWindow.focus()
            return false;
        }
    </script>   
    <h2>
        realsoft - PREVENDA</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="4">
                    <asp:Button ID="BtNovo" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Novo" onclick="BtNovo_Click" Width="59px" />
                    <asp:Button ID="BtAdicionar" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Gravar" Width="65px" OnClick="BtAdicionar_Click" />
                    <asp:Button ID="BtConsultarMercadoria" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Consultar" Width="84px" onClientClick="return OpenPlanodeContas()" />
                    <asp:Button ID="BtVisualizar" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Visualizar" onClientClick="return rptprevenda()" OnClick="BtVisualizar_Click"/>
                    <asp:Button ID="BtHistorico" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Histórico" onClientClick="return historicoprevenda()" />
                    <asp:Button ID="BtDevolucao" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Devolução" onClientClick="return devolucaoprevenda()" />
                </td>
            </tr>
            <tr>
                <td>
                    CPF/CNPJ</td>
                <td>
                    <asp:TextBox ID="TxCpfCNPJ" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="248px"></asp:TextBox>
                    <asp:ImageButton ID="BtConsultarCliente" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" onclick="BtConsultarCliente_Click" 
                        style="margin-bottom: 0px" Width="29px" />
                </td>
                <td>
                    NUMERO PREVENDA</td>
                <td>
                    <asp:TextBox ID="TxPrevenda" runat="server" BorderColor="Red" 
                        BorderStyle="Solid" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    CLIENTE</td>
                <td class="style1">
                    <asp:Label ID="LbCliente" runat="server" ForeColor="#CC3300" Visible="False"></asp:Label>
                    </td>
                <td class="style1">
                    </td>
                <td class="style1">
                    </td>
            </tr>
            <tr>
                <td>
                    CODIGO ITEM</td>
                <td>
                                       
                    <asp:TextBox ID="TxCodigoItem" runat="server" BorderColor="Red" 
                        BorderStyle="Solid" Width="248px"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="BtConsultar" runat="server" Height="17px" 
                        ImageUrl="~/Images/106.png" onclick="BtConsultar_Click" 
                        style="margin-bottom: 0px" Width="29px" />
                        
                </td>
                <td>
                    DESCRIÇÃO</td>
                <td>
                    <asp:TextBox ID="TxDescricao" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    QUANTIDADE</td>
                <td>
                    <asp:TextBox ID="TxQuantidade" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="248px" OnTextChanged="TxQuantidade_TextChanged"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="BtCalcular" runat="server" Height="24px" 
                        ImageUrl="~/Images/save.png" onclick="BtCalcular_Click" 
                        style="margin-bottom: 0px" Width="24px" />
                </td>
                <td>
                    VALOR UNITÁRIO</td>
                <td>
                    <asp:TextBox ID="TxPreco" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    TOTAL ITEM</td>
                <td>
                    <asp:TextBox ID="TxTotalItem" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="248px"></asp:TextBox>
                </td>
                <td>
                    TOTAL PREVENDA</td>
                <td>
                    <asp:TextBox ID="TxTotalPrevenda" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    RELAÇÃO DE PRE-VENDAS</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="2" ForeColor="Black" Width="909px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" DataSourceID="PREVENDA" OnRowCommand="GridView1_RowCommand">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:ButtonField ButtonType="Image" CommandName="Remover" HeaderText="Excluir" ImageUrl="~/Images/Excluir.png" Text="Remover" />
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
                    <asp:SqlDataSource ID="PREVENDA" runat="server" ConnectionString="" ProviderName="" SelectCommand=""></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
