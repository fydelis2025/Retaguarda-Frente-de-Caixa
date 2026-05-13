<%@ Page Title="MANUTENÇÃO CRM" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_ManutencaoCRM.aspx.cs" Inherits="_ManutencaoCRM" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        manutenção crm</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Opções</td>
                <td>
                    <asp:RadioButton ID="RdElaborando" runat="server" ForeColor="SteelBlue" Text="Elaborando" />
&nbsp;<asp:RadioButton ID="RdFinalizado" runat="server" ForeColor="SteelBlue" Text="Finalizado" />
&nbsp;<asp:RadioButton ID="RdReprovado" runat="server" ForeColor="SteelBlue" Text="Reprovado" />
                </td>
                <td>
                    <asp:Button ID="BtConsultar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Consultar" OnClick="BtConsultar_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>CLIENTE</td>
                <td>
                    <asp:TextBox ID="TxCliente" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="284px"></asp:TextBox>
                </td>
                <td>TITULO PROPOSTA</td>
                <td>
                    <asp:TextBox ID="TxTitulo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>PERÍODO INICIAL</td>
                <td>
                    <asp:TextBox ID="TxInicial" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="184px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="BtDataInicial" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" />
                </td>
                <td>PERIODO FINAL</td>
                <td>
                    <asp:TextBox ID="TxFinal" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="152px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="BtDataFinal" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridView1" DataSourceID="CRM" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="903px" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
                    <asp:SqlDataSource ID="CRM" runat="server" ConnectionString="" ProviderName=""  SelectCommand=""> 
                    </asp:SqlDataSource>
                    
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
