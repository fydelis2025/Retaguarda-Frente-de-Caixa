<%@ Page Title="SOBRE" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_CadNFe.aspx.cs" Inherits="_CadNFe" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
        .auto-style2 {}
        .auto-style7 {
        }
        .auto-style12 {
            width: 6%;
        }
        .auto-style17 {
            width: 4%;
        }
        .auto-style18 {
            width: 7%;
        }
        .auto-style19 {
            width: 8%;
        }
        .auto-style20 {
            width: 22%;
            height: 25px;
        }
        .auto-style22 {
        }
        .auto-style23 {
            width: 25%;
        }
        .auto-style24 {
            width: 25%;
            height: 25px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        EMISSÃO NF-E&nbsp; - PRODUÇÃO</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td style="background-color: #F7F6F3">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px" OnMenuItemClick="Menu1_MenuItemClick">
                        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#F7F6F3" />
                        <DynamicSelectedStyle BackColor="#5D7B9D" />
                        <Items>
                            <asp:MenuItem ImageUrl="~/Images/1.png" Text="Dados da NF-e" Value="0"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/Images/1.png" Text="Produtos" Value="1"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/Images/1.png" Text="Transporte" Value="2"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/Images/1.png" Text="Totais" Value="3"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#5D7B9D" />
                    </asp:Menu>
                </td>
                <td style="background-color: #F7F6F3">
                    <asp:Menu ID="Menu3" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px" OnMenuItemClick="Menu3_MenuItemClick">
                        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#F7F6F3" />
                        <DynamicSelectedStyle BackColor="#5D7B9D" />
                        <Items>
                            <asp:MenuItem ImageUrl="~/Images/3.png" Text="Novo" Value="Novo"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/Images/3.png" Text="Importar" Value="Importar"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/Images/3.png" Text="Gravar" Value="Gravar"></asp:MenuItem>
                            <asp:MenuItem ImageUrl="~/Images/3.png" Text="Danfe" Value="Danfe"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#5D7B9D" />
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="TabDados" runat="server">
                            <strong>
                            <br />
                                <table style="width: 100%; top: 0px; left: 0px; height: 510px;" class="table">
                                    <tr>
                                        <td colspan="4" style="background-color: #c6c0c0">DADOS DA NF-E</td>
                                    </tr>
                                    <tr>
                                        <td style="font-style: normal">MODELO</td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                        </td>
                                        <td>SERIE</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>DATA EMISSÃO</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            &nbsp;<asp:ImageButton ID="BtDataEmissao" runat="server" Height="24px" ImageUrl="~/Images/cal.png" Width="31px" />
                                            </strong></td>
                                        <td>Nº NF-E</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>TIPO NF-E</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server" Width="130px">
                                            </asp:DropDownList>
                                        </td>
                                        <td><strong>FORMA EMISSÃO</strong></td>
                                        <td><strong>
                                            <asp:DropDownList ID="DropDownList2" runat="server" Width="130px">
                                            </asp:DropDownList>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>FORMA DE PGTO</td>
                                        <td><strong>
                                            <asp:DropDownList ID="DropDownList3" runat="server" Width="130px">
                                            </asp:DropDownList>
                                            </strong></td>
                                        <td>NATUREZA OPERAÇÃO</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>CFOP</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            &nbsp;<asp:ImageButton ID="BtCFOP" runat="server" Height="24px" ImageUrl="~/Images/10.png"  Width="31px" />
                                            </strong></td>
                                        <td>COD. SERVIÇO</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>FINALIDADE EMISSÃO</td>
                                        <td><strong>
                                            <asp:DropDownList ID="DropDownList4" runat="server" Width="130px">
                                            </asp:DropDownList>
                                            </strong></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="background-color: #c6c0c0" class="auto-style1">DESTINATÁRIO / REMETENTE</td>
                                    </tr>
                                    <tr>
                                        <td>CPF/CNPJ</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            &nbsp;<asp:ImageButton ID="BtCFOP0" runat="server" Height="24px" ImageUrl="~/Images/10.png"  Width="31px" />
                                            </strong></td>
                                        <td>RAZÃO SOCIAL</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox9" runat="server" Width="150px" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>FANTASIA</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox10" runat="server" Width="150px" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                        <td>IE</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox11" runat="server" Width="150px" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>LOGADOURO</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox12" runat="server" Width="150px" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                        <td>NUMERO</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox13" runat="server" Width="150px" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>COMPLEMENTO</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox14" runat="server" Width="150px" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                        <td>BAIRRO</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox15" runat="server" Width="150px" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>CEP</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox16" runat="server" Width="150px" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                        <td>UF</td>
                                        <td><strong>
                                            <asp:DropDownList ID="DropDownList6" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>CIDADE</td>
                                        <td><strong>
                                            <asp:DropDownList ID="DropDownList7" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            </strong></td>
                                        <td>IBGE</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox19" runat="server" Width="150px" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>TELEFONE</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox20" runat="server" Width="150px" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                        <td>PAIS</td>
                                        <td><strong>
                                            <asp:DropDownList ID="DropDownList5" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>EMAIL</td>
                                        <td><strong>
                                            <asp:TextBox ID="TextBox21" runat="server" Width="150px" BorderStyle="Solid" BorderColor="SteelBlue"></asp:TextBox>
                                            </strong></td>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4"><strong>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Local de retirada diferente do emitente" />
                                            &nbsp;
                                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Local de entrega diferente do destinatário" />
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </strong>
                        </asp:View>
                        <asp:View ID="TabProdutos" runat="server">
                            <strong>
                            <table class="table" style="width: 100%; top: 0px; left: 0px;">
                                <tr>
                                    <td colspan="4" style="background-color: #c6c0c0">INFORMAÇÕES DO PRODUTO</td>
                                </tr>
                                <tr>
                                    <td style="font-style: normal">CODIGO</td>
                                    <td>
                                        <asp:TextBox ID="TextBox59" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                        &nbsp;<strong><asp:ImageButton ID="BtCFOP1" runat="server" Height="24px" ImageUrl="~/Images/10.png" Width="31px" />
                                        </strong></td>
                                    <td>CODIGO BARRAS</td>
                                    <td><strong>
                                        <asp:TextBox ID="TextBox60" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="187px"></asp:TextBox>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td>DESCRIÇÃO</td>
                                    <td><strong>
                                        <asp:TextBox ID="TextBox61" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="278px"></asp:TextBox>
                                        &nbsp;</strong></td>
                                    <td>QUANTIDADE</td>
                                    <td><strong>
                                        <asp:TextBox ID="TextBox62" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td>PREÇO </td>
                                    <td><strong>
                                        <asp:TextBox ID="TextBox78" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                        </strong></td>
                                    <td><strong>VALOR LIQUIDO</strong></td>
                                    <td><strong>
                                        <asp:TextBox ID="TextBox79" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4"><strong>&nbsp; 
                                        <asp:Menu ID="Menu2" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" OnMenuItemClick="Menu2_MenuItemClick" Orientation="Horizontal" StaticSubMenuIndent="10px">
                                            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                            <DynamicMenuStyle BackColor="#F7F6F3" />
                                            <DynamicSelectedStyle BackColor="#5D7B9D" />
                                            <Items>
                                                <asp:MenuItem ImageUrl="~/Images/1.png" Text="ISSQN" Value="0"></asp:MenuItem>
                                                <asp:MenuItem ImageUrl="~/Images/1.png" Text="PIS" Value="1"></asp:MenuItem>
                                                <asp:MenuItem ImageUrl="~/Images/1.png" Text="COFINS" Value="2"></asp:MenuItem>
                                            </Items>
                                            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                                            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                            <StaticSelectedStyle BackColor="#5D7B9D" />
                                        </asp:Menu>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <asp:MultiView ID="MultiView2" runat="server">
                                            <asp:View ID="SSQN" runat="server"></asp:View>
                                            <asp:View ID="PIS" runat="server"></asp:View>
                                            <asp:View ID="COFINS" runat="server"></asp:View>
                                        </asp:MultiView>
                                    </td>
                                </tr>
                            </table>
                            </strong>
                        </asp:View>
                        <asp:View ID="TabTransporte" runat="server">
                            <strong>
                                <span>TRANSPORTE</span>
                            </strong>
                        </asp:View>
                        <asp:View ID="TabTotais" runat="server">
                            <strong>
                                <table class="table" style="width: 100%; top: 0px; left: 0px;">
                                    <tr>
                                        <td colspan="4" style="background-color: #c6c0c0">TOTAIS DA NF-E</td>
                                        <td colspan="2" style="background-color: #c6c0c0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="font-style: normal" class="auto-style12">BASE CALC ICMS</td>
                                        <td class="auto-style19">
                                            <asp:TextBox ID="TextBox27" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18">VALOR ICMS</td>
                                        <td style="margin-left: 40px" class="auto-style17"><strong>
                                            <asp:TextBox ID="TextBox28" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                        <td class="auto-style22">TOTAL PRODUTOS</td>
                                        <td class="auto-style23"><strong>
                                            <asp:TextBox ID="TextBox50" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">BASE CALC ICMS ST</td>
                                        <td class="auto-style19"><strong>
                                            <asp:TextBox ID="TextBox29" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            &nbsp;</strong></td>
                                        <td class="auto-style18">VALOR ICMS ST</td>
                                        <td class="auto-style17"><strong>
                                            <asp:TextBox ID="TextBox30" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                        <td class="auto-style22">TOTAL SERVIÇOS</td>
                                        <td class="auto-style23"><strong>
                                            <asp:TextBox ID="TextBox51" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">VALOR FRETE</td>
                                        <td class="auto-style19"><strong>
                                            <asp:TextBox ID="TextBox46" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                        <td class="auto-style18">VALOR SEGURO</td>
                                        <td class="auto-style17"><strong>
                                            <asp:TextBox ID="TextBox48" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                        <td class="auto-style22">DESCONTOS</td>
                                        <td class="auto-style23"><strong>
                                            <asp:TextBox ID="TextBox52" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">DESP. ACESSÓRIAS</td>
                                        <td class="auto-style19"><strong>
                                            <asp:TextBox ID="TextBox47" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                        <td class="auto-style18">VALOR TOTAL IPI</td>
                                        <td class="auto-style17"><strong>
                                            <asp:TextBox ID="TextBox31" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                        <td class="auto-style22">BASE CALC ISS</td>
                                        <td class="auto-style23"><strong>
                                            <asp:TextBox ID="TextBox53" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">VALOR</td>
                                        <td class="auto-style19"><strong>
                                            <asp:TextBox ID="TextBox32" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            &nbsp;</strong></td>
                                        <td class="auto-style18">PIS</td>
                                        <td class="auto-style17"><strong>
                                            <asp:TextBox ID="TextBox33" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                        <td class="auto-style22">TOTAL NF</td>
                                        <td class="auto-style23"><strong>
                                            <asp:TextBox ID="TextBox54" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">COFINS</td>
                                        <td class="auto-style19"><strong>
                                            <asp:TextBox ID="TextBox49" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td class="auto-style22">VALOR ISS</td>
                                        <td class="auto-style23"><strong>
                                            <asp:TextBox ID="TextBox55" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td class="auto-style22">&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" colspan="4" style="background-color: #c6c0c0">TIPO DE CALCULO TRIBUTÁRIO</td>
                                        <td class="auto-style1" colspan="2" style="background-color: #c6c0c0">LISTA DE PARCELAMENTO</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4"><strong>&nbsp;</strong><asp:CheckBox ID="CheckBox3" runat="server" Text="Somar IPI na base de calculo" />
                                            <strong>&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox4" runat="server" Text="Somar Frete no IPI" />
                                            &nbsp;<asp:CheckBox ID="CheckBox5" runat="server" Text="Redução IPI  na ST" />
                                            <br />
                                            <asp:CheckBox ID="CheckBox6" runat="server" Text="Somar frete na base de calculo" />
                                            &nbsp;<asp:CheckBox ID="CheckBox7" runat="server" Text="Não calcular redução  para ST" />
                                            </strong></td>
                                        <td colspan="2">VALAOR POR EXTENSO<br />
                                            <asp:TextBox ID="TextBox56" TextMode="MultiLine" runat="server" Height="46px" Width="292px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2" colspan="4" style="background-color: #c6c0c0">OBSERVAÇÃO</td>
                                        <td class="auto-style7" colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2" colspan="4" rowspan="3"><strong>
                                            <asp:TextBox ID="TextBox57" runat="server" Height="46px" TextMode="MultiLine" Width="496px"></asp:TextBox>
                                            </strong></td>
                                        <td class="auto-style20">Forma Pgto</td>
                                        <td class="auto-style24">
                                            <asp:DropDownList ID="DropDownList8" runat="server" Width="150px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">Vencimento</td>
                                        <td class="auto-style23"><strong>
                                            <asp:TextBox ID="TextBox58" runat="server" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td class="auto-style22" colspan="2" rowspan="4">
                                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="334px">
                                                <AlternatingRowStyle BackColor="White" />
                                                <FooterStyle BackColor="#CCCC99" />
                                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                <RowStyle BackColor="#F7F7DE" />
                                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                                <SortedDescendingHeaderStyle BackColor="#575357" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4"><strong>&nbsp; </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                        <td class="auto-style17">&nbsp;</td>
                                    </tr>
                            </table>
                            </strong>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
            </table>
    </p>
    <p>

    </p>
    <p>

        <table style="width:100%;">
            <tr>
                <td style="background-color: #c6c0c0">Protocolo</td>
                <td style="background-color: #c6c0c0"><strong __designer:mapid="61c">
                                            <asp:TextBox ID="TextBox22" runat="server" Width="109px" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                <td style="background-color: #c6c0c0">Data Envio</td>
                <td style="background-color: #c6c0c0"><strong __designer:mapid="61c">
                                            <asp:TextBox ID="TextBox23" runat="server" Width="121px" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                <td style="background-color: #c6c0c0">Valor Total NF-e</td>
                <td style="background-color: #c6c0c0"><strong __designer:mapid="61c">
                                            <asp:TextBox ID="TextBox24" runat="server" Width="85px" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                <td style="background-color: #c6c0c0">Total ICMS</td>
                <td style="background-color: #c6c0c0"><strong __designer:mapid="61c">
                                            <asp:TextBox ID="TextBox25" runat="server" Width="85px" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
                <td style="background-color: #c6c0c0">Total St</td>
                <td style="background-color: #c6c0c0"><strong __designer:mapid="61c">
                                            <asp:TextBox ID="TextBox26" runat="server" Width="85px" BorderColor="SteelBlue" BorderStyle="Solid"></asp:TextBox>
                                            </strong></td>
            </tr>
        </table>

    </p>
</asp:Content>
