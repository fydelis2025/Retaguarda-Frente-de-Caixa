<%@ Page Title="LOG" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Log.aspx.cs" Inherits="_Log" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        REGISTRO DO SISTEMA</h2>
    <p>
        &nbsp;</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td align="right">
                    <asp:Button ID="BtConsultar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Consultar" OnClick="BtConsultar_Click" />
                </td>
            </tr>
            <tr>
                <td>Login</td>
                <td>
                    <asp:TextBox ID="TxLogin" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="327px"></asp:TextBox>
                </td>
                <td>Descrição</td>
                <td>
                    <asp:TextBox ID="TxDescricao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="278px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="DgLog" runat="server" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="904px" DataSourceID="Log">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="Log" runat="server" ProviderName="" SelectCommand="" ConnectionString=""></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
