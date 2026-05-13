<%@ Page Title="Administração Financeira" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_AdministracaoFinanceira.aspx.cs" Inherits="_AdmFinanc" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style10 {
            width: 60%;
        }
        .auto-style11 {
            width: 358px;
        }
        .auto-style12 {
            height: 25px;
        }
        .auto-style13 {
            width: 60%;
            height: 25px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style12" style="background-color: #F7F6F3" colspan="2">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" Orientation="Horizontal" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#E3EAEB" />
                        <DynamicSelectedStyle BackColor="#1C5E55" />
                        <Items>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Administração" Value="1"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Sintegra" Value="2"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Cep" Value="3"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Boletos" Value="4"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Consulta SPC" Value="5"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Receita Federal" Value="6"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/images/1.png" Text="Serasa Experian" Value="7"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#1C5E55" />
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="background-color: #F7F6F3">Saldo SMS:
                                    <asp:Label ID="LbSaldo" runat="server" Text="0"></asp:Label>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>


