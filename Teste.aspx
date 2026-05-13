<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Realsoft.master" CodeFile="Teste.aspx.cs" Inherits="Teste" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div id="container">
        <div id="header">
            <h1><a href="/">Realsoft</a></h1>
            <h2>Realsoft</h2>
            <div class="clear">
            </div>
        </div>
        <div id="nav">
            <ul>
                <li class="nav-search">
                    <form method="get" class="searchform" action="#">
                        <p>
                            &nbsp;
                    </form>
                        </li>
                    <asp:Menu ID="MenuPrincipal" runat="server" CssClass="menu" 
                    EnableViewState="false" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem Text="Cadastro" Value="Cadastro">
                                <asp:MenuItem NavigateUrl="~/Realsoft_Agenda.aspx" Text="Agenda" Value="Agenda"></asp:MenuItem>
                                <asp:MenuItem Text="Cliente" Value="Cliente">
                                    <asp:MenuItem NavigateUrl="~/Realsoft_Clientes.aspx" Text="Novo" Value="Novo"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Realsoft_ListaClientes.aspx" Text="Listar Clientes" Value="Listar Clientes"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Realsoft_CRM.aspx" Text="CRM" Value="CRM"></asp:MenuItem>
                                <asp:MenuItem Text="Fornecedor" Value="Fornecedor">
                                    <asp:MenuItem NavigateUrl="~/Realsoft_Fornecedor.aspx" Text="Novo" Value="Novo"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Mercadorias" Value="Mercadorias">
                                    <asp:MenuItem NavigateUrl="~/Realsoft_Mercadorias.aspx" Text="Novo" 
                                    Value="Novo"></asp:MenuItem>
                                    <asp:MenuItem Text="Listar Mercadorias" Value="Listar Mercadorias" NavigateUrl="~/Realsoft_ListarMercadorias.aspx"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Realsoft_PrecosAlterados.aspx" Text="Alterar Preços" Value="Alterar Preços"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Pedido" Value="Pedido">
                                    <asp:MenuItem Text="VENDAS" Value="VENDAS" NavigateUrl="~/Realsoft_Pedido.aspx"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Pre-Venda" Value="Pre-Venda" 
                                NavigateUrl="~/Realsoft_Prevenda.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Promoções" Value="Promoções"></asp:MenuItem>
                                <asp:MenuItem Text="Usuarios" Value="Usuarios" 
                                NavigateUrl="~/Realsoft_Usuarios.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="NCM" Value="NCM" NavigateUrl="~/Realsoft_NCM.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Financeiro" Value="Financeiro">
                                <asp:MenuItem Text="Cartão" Value="Cartão">
                                    <asp:MenuItem Text="Ajuste Fatura" Value="Ajuste Fatura"></asp:MenuItem>
                                    <asp:MenuItem Text="Altera Limite" Value="Altera Limite"></asp:MenuItem>
                                    <asp:MenuItem Text="Antecipação de Pagamento" Value="Antecipação de Pagamento"></asp:MenuItem>
                                    <asp:MenuItem Text="Negociação de Débitos" Value="Negociação de Débitos"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Tesouraria" Value="Tesouraria" NavigateUrl="~/Realsoft_Tesouraria.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Vendas ECF" Value="Movimentação" NavigateUrl="~/Realsoft_MovimentacaoECF.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Contas a Pagar" Value="Contas a Pagar" NavigateUrl="~/Realsoft_ContasPagar.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Contas a Receber" Value="Contas a Receber" NavigateUrl="~/Realsoft_ContasReceber.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Movimentação ECf" Value="Movimentação ECf" NavigateUrl="~/Realsoft_Movimentacao.aspx"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Realsoft_Boletos.aspx" Text="Boleto" Value="Boleto"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Contabil" Value="Contabil"></asp:MenuItem>
                            <asp:MenuItem Text="Relatórios" Value="Relatorios">
                                <asp:MenuItem Text="Cartão" Value="Cartão">
                                    <asp:MenuItem NavigateUrl="~/Realsoft_Inadiplentes.aspx" 
                                    Text="Clientes Inadiplentes" Value="Clientes Inadiplentes"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Realsoft_Ativos.aspx" Text="Clientes Ativos" 
                                    Value="Clientes Ativos"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Realsoft_Bloqueados.aspx" 
                                    Text="Clientes Bloqueados" Value="Clientes Bloqueados"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Realsoft_Compras.aspx" Text="Resumo de Compras" 
                                    Value="Resumo de Compras"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Realsoft_Pagamento.aspx" 
                                    Text="Resumo de Pagamento" Value="Resumo de Pagamento"></asp:MenuItem>
                                    <asp:MenuItem Text="Faturas Pagas" Value="Faturas Pagas"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Realsoft_ClientesSemDebido.aspx" 
                                    Text="Clientes Sem Debitos" Value="Clientes Sem Debitos"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Realsoft_Extrato.aspx" Text="Extrato" 
                                    Value="Extrato"></asp:MenuItem>
                                    <asp:MenuItem Text="Fatura" Value="Fatura" NavigateUrl="~/Realsoft_Fatura.aspx"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Etiquetas" Value="Etiquetas" NavigateUrl="~/Realsoft_Etiquetas.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Produtos" Value="Produtos">
                                    <asp:MenuItem NavigateUrl="~/Realsoft_ProdutosFracionados.aspx" Text="Pesaveis" Value="Pesaveis"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Realsoft_Estoque.aspx" Text="Estoque" Value="Estoque"></asp:MenuItem>
                                </asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="NFe" Value="NFe" ToolTip="Emissor NF-e" NavigateUrl="~/Realsoft_CadNFe.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Inventário" Value="Inventário">
                                <asp:MenuItem Text="Novo" Value="Novo" NavigateUrl="~/Realsoft_Inventario.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Relatorio" Value="Relatorio"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Opções" Value="Opções">
                                <asp:MenuItem Text="Bakcup" Value="Bakcup"></asp:MenuItem>
                                <asp:MenuItem Text="Carga para pdv" Value="Carga para pdv" NavigateUrl="~/Realsoft_CargaPdv.aspx" ImageUrl="~/Images/diagram-icon.png"></asp:MenuItem>
                                <asp:MenuItem Text="Log" Value="Log" NavigateUrl="~/Realsoft_Log.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Parametros" Value="Parametros" NavigateUrl="~/Realsoft_Parametros.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Suporte" Value="Suporte" NavigateUrl="~/About.aspx"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Realsoft_HelpDesk.aspx" Text="HelpDesk" Value="HelpDesk"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Ordem Serviço" Value="Ordem Serviço" NavigateUrl="~/Realsoft_OrdemdeServico.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
            </ul>
            <div id="page-intro">
                <h2>REALSOFT ERP</h2>
                <p>
                    Soluções em tecnologia</p>
            </div>
            <div id="body">
                <div class="sidebar">
                </div>
                <div class="clear">
        <table style="width:100%;">
            <tr>
                <td class="auto-style3" colspan="4">
                    <asp:Panel ID="Panel1" runat="server" Visible="False" >
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1" colspan="2">
    <asp:Label ID="LbFilial" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    </td>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Imagem de Segurança"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1" colspan="2">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td rowspan="4" class="auto-style4">
                    <asp:Image ID="ImgAcesso" runat="server" ImageUrl="~/Images/gfdgd (1).png" />
                </td>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TxLogin" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="288px"></asp:TextBox>
                </td>
                <td rowspan="4">
                   <asp:Image id="imgseguranca" runat="server" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TxSenha" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" TextMode="Password" Width="288px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Chave Segurança"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TxCaptcha" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="288px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="BtAcessar" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid"  Text="Acessar" />
                </td>
                <td class="style1">
                    <asp:Label ID="LbStatus" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
                </div>
            </div>
        </div>
    </div>

</asp:Content>



<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">

        .auto-style3 {
            height: 25px;
        }
        .auto-style1 {
            height: 25px;
        }
        .auto-style4 {
            width: 115px;
        }
        .style1
    {
        width: 481px;
    }
    </style>
</asp:Content>




