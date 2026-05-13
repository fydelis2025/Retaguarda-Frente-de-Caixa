<%@ Page Title="PLANO DE CONTAS" Language="C#" AutoEventWireup="true" CodeFile="Realsoft_PlanodeContas.aspx.cs" Inherits="_PlanodeContas" %>

<head>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
            width: 155px;
        }
        .auto-style2 {
            height: 29px;
            width: 155px;
        }
        .auto-style3 {
            width: 290px;
        }
        .auto-style4 {
            height: 27px;
            width: 290px;
        }
        .auto-style5 {
            height: 29px;
            width: 290px;
        }
        .auto-style6 {
            width: 155px;
        }
    </style>
</head>




<form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2"  style="background-color: steelblue; font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #FFFFFF;" >PLANO DE CONTAS&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Descrição</td>
            <td class="auto-style4">
                <asp:TextBox ID="TxDescricao" runat="server" BorderColor="Red" BorderStyle="Solid" Width="356px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style5">
                <asp:Button ID="BtNovo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Novo" OnClick="BtNovo_Click" />
                <asp:Button ID="BtSalvar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Salvar" OnClick="BtSalvar_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: steelblue; font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #FFFFFF;">LISTA</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="DgLista" runat="server" AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" Width="508px" DataSourceID="Departamento" >
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:ButtonField ButtonType="Image" CommandName="Editar" HeaderText="Editar" ImageUrl="~/Images/database-icon.png" Text="Editar" />
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
                <asp:SqlDataSource ID="Departamento" runat="server" ConnectionString="" ProviderName="" SelectCommand=""></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</form>




