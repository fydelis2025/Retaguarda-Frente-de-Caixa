<%@ Page Title="CRM" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_CRM.aspx.cs" Inherits="_CRM" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        CRIAR PROPOSTA</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="4">Volume de vendas até o momento R$
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="0,00"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2"></td>
                <td class="auto-style2" colspan="2" align="right">
                    <asp:Button ID="BtNovo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Novo" OnClick="BtNovo_Click" />
                    <asp:Button ID="BtGravar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Gravar" OnClick="BtGravar_Click" />
                    <asp:Button ID="BtEnviar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Enviar proposta" OnClick="BtEnviar_Click" />
                    <asp:Button ID="BtManutencao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Manutenção" OnClick="BtManutencao_Click" />
                </td>
            </tr>
            <tr>
                <td rowspan="5">
                    <table style="width:100%;">
                        <tr>
                            <td>Todas</td>
                            <td>
                    <asp:Label ID="LbTotal" runat="server" ForeColor="Red" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Elaborando</td>
                            <td>
                    <asp:Label ID="LbElaborando" runat="server" ForeColor="Red" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Aprovadas</td>
                            <td>
                    <asp:Label ID="LbAprovadas" runat="server" ForeColor="Red" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Reprovadas</td>
                            <td>
                    <asp:Label ID="LbReprovadas" runat="server" ForeColor="Red" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Excluídas</td>
                            <td>
                    <asp:Label ID="LbExcluidas" runat="server" ForeColor="Red" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>Cliente</td>
                <td>
                    <asp:TextBox ID="TxCliente" runat="server" BorderColor="Red" BorderStyle="Solid" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td>Contato</td>
                <td>
                    <asp:TextBox ID="TxContato" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>Titulo da proposta</td>
                <td>
                    <asp:TextBox ID="TxTitulo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td>Prazo para entrega</td>
                <td>
                    <asp:DropDownList ID="CbPrazo" runat="server" Width="200px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>60</asp:ListItem>
                        <asp:ListItem>90</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>Validade da Proposta</td>
                <td>
                    <asp:DropDownList ID="CbValidade" runat="server" Width="200px">
                        <asp:ListItem>INDETERMINADO</asp:ListItem>
                        <asp:ListItem>A NEGOCIAR</asp:ListItem>
                        <asp:ListItem>06 - MESES</asp:ListItem>
                        <asp:ListItem>01 - ANO</asp:ListItem>
                        <asp:ListItem>02 - ANOS</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>Nome do projeto</td>
                <td>
                    <asp:TextBox ID="TxProjeto" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>Etapa da venda</td>
                <td>
                    <asp:DropDownList ID="CbEtapa" runat="server" Width="200px">
                        <asp:ListItem>APROVADA</asp:ListItem>
                        <asp:ListItem>ELABORANDO</asp:ListItem>
                        <asp:ListItem>REPROVADA</asp:ListItem>
                        <asp:ListItem>EXCLUIDO</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>Modelo da proposta</td>
                <td>
                    <asp:TextBox ID="TxProposta" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TxEmail" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="7">
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="CRM" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="860px" AllowPaging="True" OnRowCommand="GridView1_RowCommand">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:ButtonField ButtonType="Image" CommandName="Finalizar" HeaderText="Finalizar" ImageUrl="~/Images/Save.png" Text="Finalizar">
                            <HeaderStyle Height="24px" Width="24px" />
                            </asp:ButtonField>
                            <asp:ButtonField ButtonType="Image" CommandName="Excluir" HeaderText="Excluir" ImageUrl="~/Images/Excluir.png" Text="Excluir">
                            <HeaderStyle Height="24px" Width="24px" />
                            </asp:ButtonField>
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>                    
        <asp:SqlDataSource ID="CRM" runat="server" ConnectionString="" ProviderName=""  SelectCommand=""> 
        </asp:SqlDataSource>
                    
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

