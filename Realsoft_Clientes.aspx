<%@ Page Title="CLIENTES" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Clientes.aspx.cs" Inherits="_Clientes" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.1, Version=10.1.5.0, Culture=neutral, PublicKeyToken=940cfcde86f32efd" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxScheduler.v10.1, Version=10.1.5.0, Culture=neutral, PublicKeyToken=940cfcde86f32efd" namespace="DevExpress.Web.ASPxScheduler" tagprefix="dxwschs" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <h2>
        cadastro de clientes</h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="2">
                    <asp:Label ID="LbStatus" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="BtNovo" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Novo" onclick="BtNovo_Click" />
                    <asp:Button ID="BtGravar" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Gravar" onclick="BtGravar_Click" />
                    <asp:Button ID="BtCartao" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Cartão" onclick="BtCartao_Click" />
                    <asp:Button ID="BtProposta" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Text="Proposta" 
                        PostBackUrl="~/Realsoft_Proposta.aspx" />
                </td>
            </tr>
            <tr>
                <td>
                    NOME</td>
                <td>
                    <asp:TextBox ID="TxCliente" runat="server" BorderColor="Red" 
                        BorderStyle="Solid" Width="250px" MaxLength="50"></asp:TextBox>
                </td>
                <td>
                    CPF</td>
                <td>
                    <asp:TextBox ID="TxCPF" runat="server" onpaste = "return false;" BorderColor="Red" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    PESSOA</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="CBPessoa" runat="server" Width="259px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    FILIAL</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="CbFilial" runat="server" Width="259px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    NOME PAI</td>
                <td>
                    <asp:TextBox ID="TxPai" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px" MaxLength="50"></asp:TextBox>
                </td>
                <td>
                    NOME MAE</td>
                <td>
                    <asp:TextBox ID="TxMae" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    SEXO</td>
                <td>
                    <asp:DropDownList ID="CbSexo" runat="server" Width="259px">
                    </asp:DropDownList>
                </td>
                <td>
                    ESTADO CIVIL</td>
                <td>
                    <asp:DropDownList ID="CbEstadoCivil" runat="server" Width="259px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    RG</td>
                <td>
                    <asp:TextBox ID="TxRG" runat="server" onpaste = "return false;" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
                <td>
                    ORGÃO EMISSOR</td>
                <td>
                    <asp:TextBox ID="TxOrgaoEmissor" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    DATA EXPEDIÇÃO</td>
                <td>
                    &nbsp;<dx:ASPxDateEdit ID="TxDataExpedicao" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" DateOnError="Undo" EditFormat="Date" HorizontalAlign="NotSet" PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" RenderIFrameForPopupElements="Default" SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" Width="257px">
<CalendarProperties DayNameFormat="Short" FirstDayOfWeek="Default">
<ControlStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ControlStyle>

<PrevYearImage Align="NotSet"></PrevYearImage>

<PrevMonthImage Align="NotSet"></PrevMonthImage>

<NextMonthImage Align="NotSet"></NextMonthImage>

<NextYearImage Align="NotSet"></NextYearImage>

<FastNavPrevYearImage Align="NotSet"></FastNavPrevYearImage>

<FastNavNextYearImage Align="NotSet"></FastNavNextYearImage>

<LoadingPanelImage Align="NotSet"></LoadingPanelImage>

<DayHeaderStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DayHeaderStyle>

<WeekNumberStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</WeekNumberStyle>

<DayStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DayStyle>

<DaySelectedStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DaySelectedStyle>

<DayOtherMonthStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DayOtherMonthStyle>

<DayWeekendStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DayWeekendStyle>

<DayOutOfRangeStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DayOutOfRangeStyle>

<TodayStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</TodayStyle>

<ButtonStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<DisabledStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DisabledStyle>

<PressedStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</PressedStyle>

<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ButtonStyle>

<HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HeaderStyle>

<FooterStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FooterStyle>

<FastNavStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavStyle>

<FastNavMonthAreaStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavMonthAreaStyle>

<FastNavYearAreaStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavYearAreaStyle>

<FastNavMonthStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<SelectedStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</SelectedStyle>

<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavMonthStyle>

<FastNavYearStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<SelectedStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</SelectedStyle>

<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavYearStyle>

<FastNavFooterStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavFooterStyle>

<ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ReadOnlyStyle>

<FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FocusedStyle>

<InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</InvalidStyle>

<Style HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Style>
</CalendarProperties>

<MaskHintStyle Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</MaskHintStyle>

<DropDownButton ImagePosition="Left" Position="Right">
<Image Align="NotSet"></Image>
</DropDownButton>

<ButtonEditEllipsisImage Align="NotSet"></ButtonEditEllipsisImage>

<ButtonStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<DisabledStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DisabledStyle>

<PressedStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</PressedStyle>

<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ButtonStyle>

<NullTextStyle HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</NullTextStyle>

<ValidationSettings ErrorDisplayMode="ImageWithText" Display="Static" ErrorTextPosition="Right">
<ErrorImage Align="NotSet"></ErrorImage>

<ErrorFrameStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default" ImageSpacing="4px">
    <ErrorTextPaddings PaddingLeft="4px" />
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ErrorFrameStyle>
</ValidationSettings>

<ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ReadOnlyStyle>

<FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FocusedStyle>

<InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</InvalidStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>

<DisabledStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DisabledStyle>
                    </dx:ASPxDateEdit>
                </td>
                <td>
                    DATA NASCIMENTO</td>
                <td>
                    <dx:ASPxDateEdit ID="TxDataNascimento" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" DateOnError="Undo" EditFormat="Date" HorizontalAlign="NotSet" PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" RenderIFrameForPopupElements="Default" SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" Width="257px">
<CalendarProperties DayNameFormat="Short" FirstDayOfWeek="Default">
<ControlStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ControlStyle>

<PrevYearImage Align="NotSet"></PrevYearImage>

<PrevMonthImage Align="NotSet"></PrevMonthImage>

<NextMonthImage Align="NotSet"></NextMonthImage>

<NextYearImage Align="NotSet"></NextYearImage>

<FastNavPrevYearImage Align="NotSet"></FastNavPrevYearImage>

<FastNavNextYearImage Align="NotSet"></FastNavNextYearImage>

<LoadingPanelImage Align="NotSet"></LoadingPanelImage>

<DayHeaderStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DayHeaderStyle>

<WeekNumberStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</WeekNumberStyle>

<DayStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DayStyle>

<DaySelectedStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DaySelectedStyle>

<DayOtherMonthStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DayOtherMonthStyle>

<DayWeekendStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DayWeekendStyle>

<DayOutOfRangeStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DayOutOfRangeStyle>

<TodayStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</TodayStyle>

<ButtonStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<DisabledStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DisabledStyle>

<PressedStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</PressedStyle>

<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ButtonStyle>

<HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HeaderStyle>

<FooterStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FooterStyle>

<FastNavStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavStyle>

<FastNavMonthAreaStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavMonthAreaStyle>

<FastNavYearAreaStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavYearAreaStyle>

<FastNavMonthStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<SelectedStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</SelectedStyle>

<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavMonthStyle>

<FastNavYearStyle Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
<SelectedStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</SelectedStyle>

<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavYearStyle>

<FastNavFooterStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FastNavFooterStyle>

<ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ReadOnlyStyle>

<FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FocusedStyle>

<InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</InvalidStyle>

<Style HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Style>
</CalendarProperties>

<MaskHintStyle Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</MaskHintStyle>

<DropDownButton ImagePosition="Left" Position="Right">
<Image Align="NotSet"></Image>
</DropDownButton>

<ButtonEditEllipsisImage Align="NotSet"></ButtonEditEllipsisImage>

<ButtonStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<DisabledStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DisabledStyle>

<PressedStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</PressedStyle>

<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ButtonStyle>

<NullTextStyle HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</NullTextStyle>

<ValidationSettings ErrorDisplayMode="ImageWithText" Display="Static" ErrorTextPosition="Right">
<ErrorImage Align="NotSet"></ErrorImage>

<ErrorFrameStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default" ImageSpacing="4px">
    <ErrorTextPaddings PaddingLeft="4px" />
<HoverStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HoverStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ErrorFrameStyle>
</ValidationSettings>

<ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ReadOnlyStyle>

<FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FocusedStyle>

<InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</InvalidStyle>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>

<DisabledStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DisabledStyle>
                    </dx:ASPxDateEdit>
                </td>
            </tr>
            <tr>
                <td>
                    CEP</td>
                <td>
                    <asp:TextBox ID="TxCep" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="168px"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="BtCep" runat="server" Height="24px" ImageUrl="~/Images/10.png" Width="31px" OnClick="BtCep_Click" />
                </td>
                <td>
                    LOGRADOURO</td>
                <td>
                    <asp:TextBox ID="TxLogradouro" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    NUMERO</td>
                <td>
                    <asp:TextBox ID="TxNumero" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
                <td>
                    COMPLEMENTO</td>
                <td>
                    <asp:TextBox ID="TxComplemento" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    REFERENCIA</td>
                <td>
                    <asp:TextBox ID="TxReferencia" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
                <td>
                    BAIRRO</td>
                <td>
                    <asp:TextBox ID="TxBairro" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    CIDADE</td>
                <td>
                    <asp:TextBox ID="TxCidade" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
                <td>
                    UF</td>
                <td>
                    <asp:TextBox ID="TxUF" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    DDD</td>
                <td>
                    <asp:TextBox ID="TxDDD" runat="server" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
                <td>
                    TELEFONE</td>
                <td>
                    <asp:TextBox ID="TxTelefone" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    NOME CONTATO</td>
                <td>
                    <asp:TextBox ID="TxContato" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px" MaxLength="30"></asp:TextBox>
                </td>
                <td>
                    TELEFONE CONTATO</td>
                <td>
                    <asp:TextBox ID="TxTelefoneContato" onkeydown = "return isNumeric(event.keyCode);" onpaste = "return false;" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    EMAIL</td>
                <td>
                    <asp:TextBox ID="TxEmail" runat="server" BorderColor="SteelBlue" 
                        BorderStyle="Solid" Width="250px"></asp:TextBox>
                </td>
                <td>
                    DIA VENCIMENTO CARTAO</td>
                <td>
                    <asp:DropDownList ID="CbDiaVencimento" runat="server" Width="259px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>