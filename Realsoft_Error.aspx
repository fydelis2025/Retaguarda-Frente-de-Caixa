<%@ Page Title="ERROR" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Error.aspx.cs" Inherits="_Error" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        realsoft</h2>
    <p>
        <asp:Label ID="LbError" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" align="center">
        <asp:Image ID="ImgError" runat="server" ImageUrl="~/Images/erro.jpg"  />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

