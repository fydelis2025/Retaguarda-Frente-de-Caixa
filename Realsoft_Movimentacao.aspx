<%@ Page Title="SOBRE" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Movimentacao.aspx.cs" Inherits="_Movimentacao" %>

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
        $("#<%=TxInicial.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%d/%m/%y",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
        $("#<%=TxFinal.ClientID %>").dynDateTime({
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
        MOVIMENTAÇÃO ECF</h2>
    <p>
        Periodo Inicial&nbsp;
                    <asp:TextBox ID="TxInicial" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
&nbsp;<asp:ImageButton ID="BtCalendario" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" OnClick="BtCalendario_Click"  />
                &nbsp;Período Final
                    <asp:TextBox ID="TxFinal" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
&nbsp;<asp:ImageButton ID="BtCalendario0" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" OnClick="BtCalendario0_Click"  />
                &nbsp;<asp:Button ID="BtBuscar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Buscar" OnClick="BtBuscar_Click" />
    &nbsp;<asp:Button ID="BtVisualizar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Visualizar Impressão"  />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="914px" DataSourceID="MovimentacaoECF" AllowPaging="True" PageSize="30">
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
        <asp:SqlDataSource ID="MovimentacaoECF" runat="server" ConnectionString="" ProviderName=""  SelectCommand=""> 
        </asp:SqlDataSource>
</p>
</asp:Content>

