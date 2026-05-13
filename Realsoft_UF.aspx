<%@ Page Title="LISTA UF" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Realsoft_UF.aspx.cs" Inherits="_UF" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 367px;
        }
        .auto-style2 {
            width: 134px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        &nbsp;</h2>
    <p>
        <table style="width:47%;">
            <tr>
                <td class="auto-style2">NCM</td>
                <td class="auto-style1">
                    <asp:Label ID="LbCodigoNCM" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                </td>
                <td align="center">
                    <asp:ImageButton ID="BtGravar" runat="server" ImageUrl="~/images/7.png" OnClick="BtGravar_Click" />
                </td>
            </tr>
        </table>
    </p>
    <asp:CheckBoxList ID="ChUF" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Height="133px" RepeatDirection="Horizontal" Width="590px" CssClass="page" RepeatLayout="Flow">
    </asp:CheckBoxList>
    <p>
        &nbsp;</p>
</asp:Content>
