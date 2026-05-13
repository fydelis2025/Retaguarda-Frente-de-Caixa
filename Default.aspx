<%@ Page Title="REALSOFT" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        width: 481px;
    }
    .style2
    {
        }
        .auto-style1 {
            height: 25px;
        }
        .auto-style2 {
            height: 21px;
        }
        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            width: 115px;
        }
        .auto-style5 {
            width: 12px;
        }
        .auto-style6 {
            width: 108px;
        }
        .auto-style7 {
            width: 108px;
            height: 21px;
        }
        .auto-style8 {
            font-weight: bold;
            width: 430px;
        }
        .auto-style9 {
            height: 21px;
            width: 430px;
        }
        .auto-style10 {
            width: 430px;
        }
        </style>
    </asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent" >
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3" colspan="4">
                    <asp:Panel ID="Panel1" runat="server" Visible="False" >
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1" colspan="2">
    <asp:Label ID="LbFilial" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    </td>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Imagem de Segurança"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style1" colspan="2">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td rowspan="4" class="auto-style4">
                    <asp:Image ID="ImgAcesso" runat="server" ImageUrl="~/Images/gfdgd (1).png" />
                </td>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TxLogin" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="288px"></asp:TextBox>
                </td>
                <td rowspan="4">
                   <asp:Image id="imgseguranca" runat="server" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TxSenha" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" TextMode="Password" Width="288px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Chave Segurança"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TxCaptcha" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="288px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="BtAcessar" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" onclick="BtAcessar_Click" Text="Acessar" />
                </td>
                <td class="style1">
                    <asp:Label ID="LbStatus" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Panel ID="PHistorico" runat="server" Visible="False">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style8" style="color: #FFFFFF; background-color: steelblue">Histórico de contas a pagar</td>
                    <td class="bold" style="color: white; background-color: steelblue">Histórico de contas a receber</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:GridView ID="DgPagar" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="430px" DataSourceID="ContasPagar">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:ButtonField ButtonType="Image" CommandName="Pagar" ImageUrl="~/Images/Save.png" Text="Pagar" />
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
                        <asp:SqlDataSource ID="ContasPagar" runat="server" ConnectionString="" SelectCommand="" ProviderName=""></asp:SqlDataSource>
                    </td>
                    <td class="auto-style2">
                        <asp:GridView ID="DgReceber" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="430px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:ButtonField ButtonType="Image" CommandName="Receber" ImageUrl="~/Images/Save.png" Text="Receber" />
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
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="LbPagar" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LbReceber" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="color: white; background-color: steelblue" class="auto-style10">BOLETOS VENCIDOS</td>
                    <td style="color: white; background-color: steelblue">BOLETOS PAGOS</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style5" rowspan="3">
                                    <asp:Image ID="ImgAtencaoVencidos" runat="server" ImageUrl="~/images/atencao.png" Visible="False" />
                                </td>
                                <td class="auto-style6">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    <asp:Label ID="LbTotalVencimento" runat="server" Text="Total" Visible="False"></asp:Label>
                                </td>
                                <td align="center" class="auto-style2">
                                    <asp:Label ID="LbTotalVencidos" runat="server" Text="0" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td align="center">
                                    <asp:Button ID="BtVerificarBoletos" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Text="Verificar" Visible="False" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style2">
                        <table style="width:100%;">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
    </asp:Panel>
    <p>
        &nbsp;</p>
    </p>
</asp:Content>
