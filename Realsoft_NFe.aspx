<%@ Page Title="NFe" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Realsoft_NFe.aspx.cs" Inherits="_NFe" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    <style type="text/css">
    .auto-style1 {
        height: 42px;
    }
        .auto-style7 {
            width: 5%;
        }
        .auto-style10 {
            width: 62px;
        }
        .auto-style12 {
            width: 75%;
        }
        #ImportarXML {
            width: 659px;
        }
        .auto-style13 {
            width: 62px;
            height: 25px;
        }
        .auto-style14 {
            width: 75%;
            height: 25px;
        }
        .auto-style15 {
            height: 25px;
        }
        .auto-style16 {
            width: 5%;
            height: 25px;
        }
        </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <script type="text/javascript" src="Scripts/Realsoft_Jquery-1.js"></script>
<script src="Scripts/Realsoft_Jquery-2.js" type="text/javascript"></script>
<link href="Scripts/Realsoft_Jquery-3.js" rel="stylesheet" type="text/css" />
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />

    <h2>
        NF-E</h2>
    
<p>
    <table style="width: 99%;">
        <tr>
            <td class="auto-style1" colspan="2">
                Situação portal NFe:&nbsp;
                <asp:Label ID="LbSituacao" runat="server" ForeColor="Red"></asp:Label>
            </td>
            
            <td class="auto-style1" colspan="2" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">Chave NFe</td>
            <td class="auto-style14">
                <asp:FileUpload runat="server" ID="ImportXML" ToolTip="ImportarXML" BorderStyle="Solid" BorderColor="SteelBlue" Width="670px" /></td>
            <td colspan="2" align="center" class="auto-style15">
                <asp:Button ID="BtAssinar" runat="server" Text="Assinar" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtAssinar_Click" ForeColor="Red" />
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12" align="center">
                <asp:Button ID="BtBaixarXML" runat="server" Text="Baixar XML" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtAssinar_Click" />
                <asp:Button ID="BtConsultarXML" runat="server" Text="Consultar NF-e" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtAssinar_Click" />
                <asp:Button ID="BtTransmitir" runat="server" Text="Transmitir NF-e" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtAssinar_Click" />
                <asp:Button ID="BtCancelar" runat="server" Text="Cancelar NF-e" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtAssinar_Click" />
                <asp:Button ID="BtInutilizar" runat="server" Text="Inutilizar NF-e" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtAssinar_Click" />
                </td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>

            <td colspan="4">                
                
                &nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>

