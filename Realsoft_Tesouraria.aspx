<%@ Page Title="Administração Financeira" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Tesouraria.aspx.cs" Inherits="_Tesouraria" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
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
    $(document).ready(function () {
        $("#<%=TxDataInicial.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%d/%m/%y",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
        $("#<%=TxDataFinal.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%d/%m/%y ",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>
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
        TESOURARIA</h2>
    <p>
        Data Inicial&nbsp;
        <asp:TextBox ID="TxDataInicial" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="156px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="BtCalendario" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" OnClick="BtCalendario_Click"  />
                &nbsp;Data Final&nbsp;
        <asp:TextBox ID="TxDataFinal" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="156px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="BtCalendario0" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" OnClick="BtCalendario0_Click"  />
                &nbsp;
        <asp:Button ID="BtBuscar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Buscar" OnClick="BtBuscar_Click" Width="63px" />
    &nbsp;<asp:Button ID="BtVisualizar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Visualizar" OnClick="BtVisualizar_Click1" Width="84px" />
    &nbsp;</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td align="center" style="font-size: large; font-weight: bold; background-position: center">TOTAL DA MOVIMENTAÇÃO NO PERÍODO</td>
            </tr>
            <tr>
                <td align="right">AVISTA:
                    <asp:Label ID="LbAvista" runat="server" ForeColor="Red" Text="0,00"></asp:Label>
&nbsp;| TEF:
                    <asp:Label ID="LbTef" runat="server" ForeColor="Red" Text="0,00"></asp:Label>
&nbsp;| CREDITO POS:
                    <asp:Label ID="LbCredPOS" runat="server" ForeColor="Red" Text="0,00"></asp:Label>
&nbsp;| DEBITO POS:
                    <asp:Label ID="LbDbPOS" runat="server" ForeColor="Red" Text="0,00"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <asp:GridView ID="DgLista" runat="server" CellPadding="4" GridLines="None" Width="913px" DataSourceID="Tesouraria" AllowPaging="True" ForeColor="#333333" PageSize="20">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="Tesouraria" runat="server" ConnectionString="" ProviderName="" SelectCommand=""></asp:SqlDataSource>
        </p>
    </asp:Content>
