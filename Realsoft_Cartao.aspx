<%@ Page Title="CARTAO" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Cartao.aspx.cs" Inherits="_Cartao" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

     <script type="text/javascript">

        function Proposta() {
            myWindow = window.open('Realsoft_Proposta.aspx', 'PROPOSTA', 'width=700,height=600, scrollbars=yes,resizable=no')
            myWindow.focus()
            return false;
        }
    </script>   
    <h2>
        realsoft</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Button ID="BtGerar" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" onclick="BtGerar_Click" Text="Gerar Cartão" />
                    </td>
                <td colspan="3">
                    <asp:Button ID="BtGerar0" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" onclick="BtGerar_Click" Text="Consultar SPC" />
                    <asp:Button ID="BtProposta" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" onClientClick="return Proposta()" Text="Imprimir Proposta" />
                    </td>
            </tr>
            <tr>
                <td>
                    CLIENTE</td>
                <td>
                    <asp:TextBox ID="TxCliente" runat="server" BorderColor="Red" 
                        BorderStyle="Solid" Width="332px"></asp:TextBox>
                </td>
                <td>
                    CPF</td>
                <td>
                    <asp:TextBox ID="TxCPF" runat="server" BorderColor="Red" 
                        BorderStyle="Solid" Width="333px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    NUMEROCARTAO</td>
                <td>
                    <asp:TextBox ID="TxNumeroCartao" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="333px"></asp:TextBox>
                </td>
                <td>
                    EMISSAO</td>
                <td>
                    <asp:TextBox ID="TxEmissao" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="333px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    OPERADOR</td>
                <td>
                    <asp:TextBox ID="TxOperador" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="333px"></asp:TextBox>
                </td>
                <td>
                    Limite</td>
                <td>
                    <asp:TextBox ID="TxLimite" runat="server" BorderColor="Red" 
                        BorderStyle="Solid" Width="333px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Lime com Parcela</td>
                <td>
                    <asp:TextBox ID="TxLimiteParcela" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="333px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
