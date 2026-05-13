<%@ Page Title="MERCADORIAS" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Realsoft_Mercadorias.aspx.cs" Inherits="_Mercadorias" %>

<%@ Register assembly="DevExpress.Web.v10.1, Version=10.1.5.0, Culture=neutral, PublicKeyToken=940cfcde86f32efd" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.1, Version=10.1.5.0, Culture=neutral, PublicKeyToken=940cfcde86f32efd" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v10.1, Version=10.1.5.0, Culture=neutral, PublicKeyToken=940cfcde86f32efd" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v10.1, Version=10.1.5.0, Culture=neutral, PublicKeyToken=940cfcde86f32efd" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.1, Version=10.1.5.0, Culture=neutral, PublicKeyToken=940cfcde86f32efd" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v10.1, Version=10.1.5.0, Culture=neutral, PublicKeyToken=940cfcde86f32efd" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<%@ Register assembly="DevExpress.XtraCharts.v10.1.Web, Version=10.1.5.0, Culture=neutral, PublicKeyToken=940cfcde86f32efd" namespace="DevExpress.XtraCharts.Web" tagprefix="dxchartsui" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        height: 26px;
    }
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
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
        realsoft - Produtos</h2>
    <p>
        <table style="width: 100%;">
            <tr>
                <td colspan="3">
                    <asp:Label ID="LbStatus" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td style="margin-left: 40px">
                    &nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxButton ID="BtNovo" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" HorizontalAlign="NotSet" ImagePosition="Left" OnClick="BtNovo_Click" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" Text="Novo" VerticalAlign="NotSet" Width="100px" Wrap="Default">
                        <Image Align="NotSet">
                        </Image>
                        <CheckedStyle>
                            <BackgroundImage Repeat="Repeat">
                            </BackgroundImage>
                            <Border BorderStyle="NotSet">
                            </Border>
                            <BorderLeft BorderStyle="NotSet">
                            </BorderLeft>
                            <BorderTop BorderStyle="NotSet">
                            </BorderTop>
                            <BorderRight BorderStyle="NotSet">
                            </BorderRight>
                            <BorderBottom BorderStyle="NotSet">
                            </BorderBottom>
                        </CheckedStyle>
                        <PressedStyle>
                            <BackgroundImage Repeat="Repeat">
                            </BackgroundImage>
                            <Border BorderStyle="NotSet">
                            </Border>
                            <BorderLeft BorderStyle="NotSet">
                            </BorderLeft>
                            <BorderTop BorderStyle="NotSet">
                            </BorderTop>
                            <BorderRight BorderStyle="NotSet">
                            </BorderRight>
                            <BorderBottom BorderStyle="NotSet">
                            </BorderBottom>
                        </PressedStyle>
                        <HoverStyle>
                            <BackgroundImage Repeat="Repeat">
                            </BackgroundImage>
                            <Border BorderStyle="NotSet">
                            </Border>
                            <BorderLeft BorderStyle="NotSet">
                            </BorderLeft>
                            <BorderTop BorderStyle="NotSet">
                            </BorderTop>
                            <BorderRight BorderStyle="NotSet">
                            </BorderRight>
                            <BorderBottom BorderStyle="NotSet">
                            </BorderBottom>
                        </HoverStyle>
                        <FocusRectBorder BorderStyle="NotSet">
                        </FocusRectBorder>
                        <BackgroundImage Repeat="Repeat">
                        </BackgroundImage>
                        <Border BorderStyle="NotSet">
                        </Border>
                        <BorderLeft BorderStyle="NotSet">
                        </BorderLeft>
                        <BorderTop BorderStyle="NotSet">
                        </BorderTop>
                        <BorderRight BorderStyle="NotSet">
                        </BorderRight>
                        <BorderBottom BorderStyle="NotSet">
                        </BorderBottom>
                        <DisabledStyle>
                            <BackgroundImage Repeat="Repeat">
                            </BackgroundImage>
                            <Border BorderStyle="NotSet">
                            </Border>
                            <BorderLeft BorderStyle="NotSet">
                            </BorderLeft>
                            <BorderTop BorderStyle="NotSet">
                            </BorderTop>
                            <BorderRight BorderStyle="NotSet">
                            </BorderRight>
                            <BorderBottom BorderStyle="NotSet">
                            </BorderBottom>
                        </DisabledStyle>
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="BtListar" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" HorizontalAlign="NotSet" ImagePosition="Left" OnClick="BtListar_Click" SpriteCssFilePath="~/App_Themes/BlackGlass/{0}/sprite.css" Text="Listar" VerticalAlign="NotSet" Width="100px" Wrap="Default">
                        <Image Align="NotSet">
                        </Image>
                        <CheckedStyle>
                            <BackgroundImage Repeat="Repeat">
                            </BackgroundImage>
                            <Border BorderStyle="NotSet">
                            </Border>
                            <BorderLeft BorderStyle="NotSet">
                            </BorderLeft>
                            <BorderTop BorderStyle="NotSet">
                            </BorderTop>
                            <BorderRight BorderStyle="NotSet">
                            </BorderRight>
                            <BorderBottom BorderStyle="NotSet">
                            </BorderBottom>
                        </CheckedStyle>
                        <PressedStyle>
                            <BackgroundImage Repeat="Repeat">
                            </BackgroundImage>
                            <Border BorderStyle="NotSet">
                            </Border>
                            <BorderLeft BorderStyle="NotSet">
                            </BorderLeft>
                            <BorderTop BorderStyle="NotSet">
                            </BorderTop>
                            <BorderRight BorderStyle="NotSet">
                            </BorderRight>
                            <BorderBottom BorderStyle="NotSet">
                            </BorderBottom>
                        </PressedStyle>
                        <HoverStyle>
                            <BackgroundImage Repeat="Repeat">
                            </BackgroundImage>
                            <Border BorderStyle="NotSet">
                            </Border>
                            <BorderLeft BorderStyle="NotSet">
                            </BorderLeft>
                            <BorderTop BorderStyle="NotSet">
                            </BorderTop>
                            <BorderRight BorderStyle="NotSet">
                            </BorderRight>
                            <BorderBottom BorderStyle="NotSet">
                            </BorderBottom>
                        </HoverStyle>
                        <FocusRectBorder BorderStyle="NotSet">
                        </FocusRectBorder>
                        <BackgroundImage Repeat="Repeat">
                        </BackgroundImage>
                        <Border BorderStyle="NotSet">
                        </Border>
                        <BorderLeft BorderStyle="NotSet">
                        </BorderLeft>
                        <BorderTop BorderStyle="NotSet">
                        </BorderTop>
                        <BorderRight BorderStyle="NotSet">
                        </BorderRight>
                        <BorderBottom BorderStyle="NotSet">
                        </BorderBottom>
                        <DisabledStyle>
                            <BackgroundImage Repeat="Repeat">
                            </BackgroundImage>
                            <Border BorderStyle="NotSet">
                            </Border>
                            <BorderLeft BorderStyle="NotSet">
                            </BorderLeft>
                            <BorderTop BorderStyle="NotSet">
                            </BorderTop>
                            <BorderRight BorderStyle="NotSet">
                            </BorderRight>
                            <BorderBottom BorderStyle="NotSet">
                            </BorderBottom>
                        </DisabledStyle>
                    </dx:ASPxButton>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Image ID="Image3" runat="server" Height="79px" ImageUrl="~/images/bling-estoque.png" Width="282px" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4" style="font-size: large; font-weight: bold; background-color: STEELBLUE; color: WHITE;">
                    ESTOQUE</td>
                </tr>
            <tr>
                <td>CODIGO BARRAS</td>
                <td>
                    <asp:TextBox ID="TxCodigo0" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="285px"></asp:TextBox>
                </td>
                <td>DESCRIÇÃO</td>
                <td>
                    <asp:TextBox ID="TxDescricao1" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>PERÍODO INICIAL</td>
                <td>
                    <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" DateOnError="Undo" EditFormat="Date" HorizontalAlign="NotSet" PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" RenderIFrameForPopupElements="Default" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css">
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

<HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default" Spacing="1px">
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

<FooterStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default" Spacing="17px">
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

<ButtonStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default" Cursor="pointer" Width="11px">
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
                <td>PERIODO FINAL</td>
                <td>
                    <dx:ASPxDateEdit ID="ASPxDateEdit2" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" DateOnError="Undo" EditFormat="Date" HorizontalAlign="NotSet" PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" RenderIFrameForPopupElements="Default" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css">
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

<HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default" Spacing="1px">
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

<FooterStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default" Spacing="17px">
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

<ButtonStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default" Cursor="pointer" Width="11px">
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
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4" style="font-size: large; font-weight: bold; background-color: STEELBLUE; color: WHITE;">
                    NIVEL DE ESTQOUE ATUAL</td>
            </tr>
            <tr>
                <td colspan="4">
                    <dx:ASPxGridView ID="DgProduto" runat="server" AutoGenerateColumns="False" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Glass/{0}/styles.css" CssPostfix="Glass" DataSourceID="SqlDataSource1" Width="909px">
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="ID" FixedStyle="None" SortOrder="None" UnboundType="Bound" VisibleIndex="0" ReadOnly="True">
                                <PropertiesTextEdit>
                                    <MaskSettings IncludeLiterals="All" />
                                    <MaskHintStyle Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </MaskHintStyle>
                                    <NullTextStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </NullTextStyle>
                                    <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </ReadOnlyStyle>
                                    <FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </FocusedStyle>
                                    <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </InvalidStyle>
                                    <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right">
                                        <ErrorImage Align="NotSet">
                                        </ErrorImage>
                                        <ErrorFrameStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ErrorFrameStyle>
                                    </ValidationSettings>
                                    <Style HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </Style>
                                </PropertiesTextEdit>
                                <Settings AllowAutoFilter="Default" AllowAutoFilterTextInputTimer="Default" AllowDragDrop="Default" AllowGroup="Default" AllowHeaderFilter="Default" AllowSort="Default" AutoFilterCondition="Default" FilterMode="Value" GroupInterval="Default" ShowFilterRowMenu="Default" ShowInFilterControl="Default" SortMode="Default" />
                                <EditFormSettings CaptionLocation="Default" Visible="False" />
                                <EditCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditCellStyle>
                                <FilterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FilterCellStyle>
                                <EditFormCaptionStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditFormCaptionStyle>
                                <HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                <BackgroundImage Repeat="Repeat" />
                                <Border BorderStyle="NotSet" />
                                </HeaderStyle>
                                <CellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </CellStyle>
                                <FooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FooterCellStyle>
                                <GroupFooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </GroupFooterCellStyle>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="EAN" FixedStyle="None" SortOrder="None" UnboundType="Bound" VisibleIndex="1">
                                <PropertiesTextEdit>
                                    <MaskSettings IncludeLiterals="All" />
                                    <MaskHintStyle Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </MaskHintStyle>
                                    <NullTextStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </NullTextStyle>
                                    <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </ReadOnlyStyle>
                                    <FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </FocusedStyle>
                                    <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </InvalidStyle>
                                    <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right">
                                        <ErrorImage Align="NotSet">
                                        </ErrorImage>
                                        <ErrorFrameStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ErrorFrameStyle>
                                    </ValidationSettings>
                                    <Style HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </Style>
                                </PropertiesTextEdit>
                                <Settings AllowAutoFilter="Default" AllowAutoFilterTextInputTimer="Default" AllowDragDrop="Default" AllowGroup="Default" AllowHeaderFilter="Default" AllowSort="Default" AutoFilterCondition="Default" FilterMode="Value" GroupInterval="Default" ShowFilterRowMenu="Default" ShowInFilterControl="Default" SortMode="Default" />
                                <EditFormSettings CaptionLocation="Default" Visible="Default" />
                                <EditCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditCellStyle>
                                <FilterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FilterCellStyle>
                                <EditFormCaptionStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditFormCaptionStyle>
                                <HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                <BackgroundImage Repeat="Repeat" />
                                <Border BorderStyle="NotSet" />
                                </HeaderStyle>
                                <CellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </CellStyle>
                                <FooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FooterCellStyle>
                                <GroupFooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </GroupFooterCellStyle>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="MERCADORIA" FixedStyle="None" SortOrder="None" UnboundType="Bound" VisibleIndex="2">
                                <PropertiesTextEdit>
                                    <MaskSettings IncludeLiterals="All" />
                                    <MaskHintStyle Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </MaskHintStyle>
                                    <NullTextStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </NullTextStyle>
                                    <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </ReadOnlyStyle>
                                    <FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </FocusedStyle>
                                    <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </InvalidStyle>
                                    <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right">
                                        <ErrorImage Align="NotSet">
                                        </ErrorImage>
                                        <ErrorFrameStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ErrorFrameStyle>
                                    </ValidationSettings>
                                    <Style HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </Style>
                                </PropertiesTextEdit>
                                <Settings AllowAutoFilter="Default" AllowAutoFilterTextInputTimer="Default" AllowDragDrop="Default" AllowGroup="Default" AllowHeaderFilter="Default" AllowSort="Default" AutoFilterCondition="Default" FilterMode="Value" GroupInterval="Default" ShowFilterRowMenu="Default" ShowInFilterControl="Default" SortMode="Default" />
                                <EditFormSettings CaptionLocation="Default" Visible="Default" />
                                <EditCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditCellStyle>
                                <FilterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FilterCellStyle>
                                <EditFormCaptionStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditFormCaptionStyle>
                                <HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                <BackgroundImage Repeat="Repeat" />
                                <Border BorderStyle="NotSet" />
                                </HeaderStyle>
                                <CellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </CellStyle>
                                <FooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FooterCellStyle>
                                <GroupFooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </GroupFooterCellStyle>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataProgressBarColumn FieldName="ENTRADA" FixedStyle="None" SortOrder="None" UnboundType="Bound" VisibleIndex="3">
                                <PropertiesProgressBar Height="" Width="">
                                    <IndicatorStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </IndicatorStyle>
                                    <Style HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </Style>
                                </PropertiesProgressBar>
                                <Settings AllowAutoFilter="Default" AllowAutoFilterTextInputTimer="Default" AllowDragDrop="Default" AllowGroup="Default" AllowHeaderFilter="Default" AllowSort="Default" AutoFilterCondition="Default" FilterMode="Value" GroupInterval="Default" ShowFilterRowMenu="Default" ShowInFilterControl="Default" SortMode="Default" />
                                <EditFormSettings CaptionLocation="Default" Visible="Default" />
                                <EditCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditCellStyle>
                                <FilterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FilterCellStyle>
                                <EditFormCaptionStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditFormCaptionStyle>
                                <HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                <BackgroundImage Repeat="Repeat" />
                                <Border BorderStyle="NotSet" />
                                </HeaderStyle>
                                <CellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </CellStyle>
                                <FooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FooterCellStyle>
                                <GroupFooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </GroupFooterCellStyle>
                            </dx:GridViewDataProgressBarColumn>
                            <dx:GridViewDataProgressBarColumn FieldName="SAIDA" FixedStyle="None" SortOrder="None" UnboundType="Bound" VisibleIndex="4">
                                <PropertiesProgressBar Height="" Width="">
                                    <IndicatorStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </IndicatorStyle>
                                    <Style HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </Style>
                                </PropertiesProgressBar>
                                <Settings AllowAutoFilter="Default" AllowAutoFilterTextInputTimer="Default" AllowDragDrop="Default" AllowGroup="Default" AllowHeaderFilter="Default" AllowSort="Default" AutoFilterCondition="Default" FilterMode="Value" GroupInterval="Default" ShowFilterRowMenu="Default" ShowInFilterControl="Default" SortMode="Default" />
                                <EditFormSettings CaptionLocation="Default" Visible="Default" />
                                <EditCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditCellStyle>
                                <FilterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FilterCellStyle>
                                <EditFormCaptionStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditFormCaptionStyle>
                                <HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                <BackgroundImage Repeat="Repeat" />
                                <Border BorderStyle="NotSet" />
                                </HeaderStyle>
                                <CellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </CellStyle>
                                <FooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FooterCellStyle>
                                <GroupFooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </GroupFooterCellStyle>
                            </dx:GridViewDataProgressBarColumn>
                            <dx:GridViewDataProgressBarColumn FieldName="ESTOQUEATUAL" FixedStyle="None" SortOrder="None" UnboundType="Bound" VisibleIndex="5">
                                <PropertiesProgressBar Height="" Width="">
                                    <IndicatorStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </IndicatorStyle>
                                    <Style HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </Style>
                                </PropertiesProgressBar>
                                <Settings AllowAutoFilter="Default" AllowAutoFilterTextInputTimer="Default" AllowDragDrop="Default" AllowGroup="Default" AllowHeaderFilter="Default" AllowSort="Default" AutoFilterCondition="Default" FilterMode="Value" GroupInterval="Default" ShowFilterRowMenu="Default" ShowInFilterControl="Default" SortMode="Default" />
                                <EditFormSettings CaptionLocation="Default" Visible="Default" />
                                <EditCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditCellStyle>
                                <FilterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FilterCellStyle>
                                <EditFormCaptionStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditFormCaptionStyle>
                                <HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                <BackgroundImage Repeat="Repeat" />
                                <Border BorderStyle="NotSet" />
                                </HeaderStyle>
                                <CellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </CellStyle>
                                <FooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FooterCellStyle>
                                <GroupFooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </GroupFooterCellStyle>
                            </dx:GridViewDataProgressBarColumn>
                            <dx:GridViewDataTextColumn FieldName="PRECOCUSTO" FixedStyle="None" SortOrder="None" UnboundType="Bound" VisibleIndex="6">
                                <PropertiesTextEdit>
                                    <MaskSettings IncludeLiterals="All" />
                                    <MaskHintStyle Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </MaskHintStyle>
                                    <NullTextStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </NullTextStyle>
                                    <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </ReadOnlyStyle>
                                    <FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </FocusedStyle>
                                    <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </InvalidStyle>
                                    <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right">
                                        <ErrorImage Align="NotSet">
                                        </ErrorImage>
                                        <ErrorFrameStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ErrorFrameStyle>
                                    </ValidationSettings>
                                    <Style HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </Style>
                                </PropertiesTextEdit>
                                <Settings AllowAutoFilter="Default" AllowAutoFilterTextInputTimer="Default" AllowDragDrop="Default" AllowGroup="Default" AllowHeaderFilter="Default" AllowSort="Default" AutoFilterCondition="Default" FilterMode="Value" GroupInterval="Default" ShowFilterRowMenu="Default" ShowInFilterControl="Default" SortMode="Default" />
                                <EditFormSettings CaptionLocation="Default" Visible="Default" />
                                <EditCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditCellStyle>
                                <FilterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FilterCellStyle>
                                <EditFormCaptionStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditFormCaptionStyle>
                                <HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                <BackgroundImage Repeat="Repeat" />
                                <Border BorderStyle="NotSet" />
                                </HeaderStyle>
                                <CellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </CellStyle>
                                <FooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FooterCellStyle>
                                <GroupFooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </GroupFooterCellStyle>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="PRECOVENDA" FixedStyle="None" SortOrder="None" UnboundType="Bound" VisibleIndex="7">
                                <PropertiesTextEdit>
                                    <MaskSettings IncludeLiterals="All" />
                                    <MaskHintStyle Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </MaskHintStyle>
                                    <NullTextStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </NullTextStyle>
                                    <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </ReadOnlyStyle>
                                    <FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </FocusedStyle>
                                    <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </InvalidStyle>
                                    <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right">
                                        <ErrorImage Align="NotSet">
                                        </ErrorImage>
                                        <ErrorFrameStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ErrorFrameStyle>
                                    </ValidationSettings>
                                    <Style HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                    </Style>
                                </PropertiesTextEdit>
                                <Settings AllowAutoFilter="Default" AllowAutoFilterTextInputTimer="Default" AllowDragDrop="Default" AllowGroup="Default" AllowHeaderFilter="Default" AllowSort="Default" AutoFilterCondition="Default" FilterMode="Value" GroupInterval="Default" ShowFilterRowMenu="Default" ShowInFilterControl="Default" SortMode="Default" />
                                <EditFormSettings CaptionLocation="Default" Visible="Default" />
                                <EditCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditCellStyle>
                                <FilterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FilterCellStyle>
                                <EditFormCaptionStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </EditFormCaptionStyle>
                                <HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                <BackgroundImage Repeat="Repeat" />
                                <Border BorderStyle="NotSet" />
                                </HeaderStyle>
                                <CellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </CellStyle>
                                <FooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </FooterCellStyle>
                                <GroupFooterCellStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </GroupFooterCellStyle>
                            </dx:GridViewDataTextColumn>
                        </Columns>
<SettingsBehavior ColumnResizeMode="Disabled" SortMode="Default"></SettingsBehavior>

<SettingsPager Mode="ShowPager" Position="Bottom" SEOFriendly="Disabled" EllipsisMode="InsideNumeric" RenderMode="Classic">
<AllButton>
<Image Align="NotSet"></Image>
</AllButton>

<FirstPageButton>
<Image Align="NotSet"></Image>
</FirstPageButton>

<LastPageButton>
<Image Align="NotSet"></Image>
</LastPageButton>

<NextPageButton>
<Image Align="NotSet"></Image>
</NextPageButton>

<PrevPageButton>
<Image Align="NotSet"></Image>
</PrevPageButton>
</SettingsPager>

<SettingsEditing Mode="EditFormAndDisplayRow" NewItemRowPosition="Top" PopupEditFormHorizontalAlign="RightSides" PopupEditFormVerticalAlign="Below"></SettingsEditing>

<Settings ShowGroupFooter="Hidden" VerticalScrollBarStyle="Standard" ShowStatusBar="Auto" ShowFilterBar="Hidden" GridLines="Both"></Settings>

<SettingsCustomizationWindow PopupHorizontalAlign="RightSides" PopupVerticalAlign="BottomSides"></SettingsCustomizationWindow>

<SettingsLoadingPanel Mode="ShowAsPopup" ImagePosition="Left"></SettingsLoadingPanel>

<SettingsDetail ExportMode="None"></SettingsDetail>

<Images spritecssfilepath="~/App_Themes/Glass/{0}/sprite.css">
<LoadingPanelOnStatusBar Align="NotSet" url="~/App_Themes/Glass/GridView/gvLoadingOnStatusBar.gif"></LoadingPanelOnStatusBar>

<CollapsedButton Align="NotSet"></CollapsedButton>

<ExpandedButton Align="NotSet"></ExpandedButton>

<DetailCollapsedButton Align="NotSet"></DetailCollapsedButton>

<DetailExpandedButton Align="NotSet"></DetailExpandedButton>

<HeaderFilter Align="NotSet"></HeaderFilter>

<HeaderActiveFilter Align="NotSet"></HeaderActiveFilter>

<HeaderSortDown Align="NotSet"></HeaderSortDown>

<HeaderSortUp Align="NotSet"></HeaderSortUp>

<DragAndDropArrowDown Align="NotSet"></DragAndDropArrowDown>

<DragAndDropArrowUp Align="NotSet"></DragAndDropArrowUp>

<DragAndDropColumnHide Align="NotSet"></DragAndDropColumnHide>

<ParentGroupRows Align="NotSet"></ParentGroupRows>

<FilterRowButton Align="NotSet"></FilterRowButton>

<CustomizationWindowClose Align="NotSet"></CustomizationWindowClose>

<PopupEditFormWindowClose Align="NotSet"></PopupEditFormWindowClose>

<WindowResizer Align="NotSet"></WindowResizer>

<FilterBuilderClose Align="NotSet"></FilterBuilderClose>

<LoadingPanel Align="NotSet" url="~/App_Themes/Glass/GridView/Loading.gif"></LoadingPanel>
</Images>

<ImagesEditors>
<CalendarPrevYear Align="NotSet"></CalendarPrevYear>

<CalendarPrevMonth Align="NotSet"></CalendarPrevMonth>

<CalendarNextMonth Align="NotSet"></CalendarNextMonth>

<CalendarNextYear Align="NotSet"></CalendarNextYear>

<CalendarFastNavPrevYear Align="NotSet"></CalendarFastNavPrevYear>

<CalendarFastNavNextYear Align="NotSet"></CalendarFastNavNextYear>

<CheckBoxChecked Align="NotSet"></CheckBoxChecked>

<CheckBoxUnchecked Align="NotSet"></CheckBoxUnchecked>

<CheckBoxUndefined Align="NotSet"></CheckBoxUndefined>

<RadioButtonChecked Align="NotSet"></RadioButtonChecked>

<RadioButtonUnchecked Align="NotSet"></RadioButtonUnchecked>

<RadioButtonUndefined Align="NotSet"></RadioButtonUndefined>

<ButtonEditEllipsis Align="NotSet"></ButtonEditEllipsis>

<DropDownEditDropDown Align="NotSet"></DropDownEditDropDown>

<ImageEmpty Align="NotSet"></ImageEmpty>

<ListEditItem Align="NotSet"></ListEditItem>

<SpinEditIncrement Align="NotSet"></SpinEditIncrement>

<SpinEditDecrement Align="NotSet"></SpinEditDecrement>

<SpinEditLargeIncrement Align="NotSet"></SpinEditLargeIncrement>

<SpinEditLargeDecrement Align="NotSet"></SpinEditLargeDecrement>

<LoadingPanel Align="NotSet"></LoadingPanel>
</ImagesEditors>

<ImagesFilterControl>
<AddButton Align="NotSet"></AddButton>

<AddButtonHot Align="NotSet"></AddButtonHot>

<RemoveButton Align="NotSet"></RemoveButton>

<RemoveButtonHot Align="NotSet"></RemoveButtonHot>

<AddCondition Align="NotSet"></AddCondition>

<AddGroup Align="NotSet"></AddGroup>

<RemoveGroup Align="NotSet"></RemoveGroup>

<GroupTypeAnd Align="NotSet"></GroupTypeAnd>

<GroupTypeOr Align="NotSet"></GroupTypeOr>

<GroupTypeNotAnd Align="NotSet"></GroupTypeNotAnd>

<GroupTypeNotOr Align="NotSet"></GroupTypeNotOr>

<OperationAnyOf Align="NotSet"></OperationAnyOf>

<OperationBeginsWith Align="NotSet"></OperationBeginsWith>

<OperationBetween Align="NotSet"></OperationBetween>

<OperationContains Align="NotSet"></OperationContains>

<OperationDoesNotContain Align="NotSet"></OperationDoesNotContain>

<OperationDoesNotEqual Align="NotSet"></OperationDoesNotEqual>

<OperationEndsWith Align="NotSet"></OperationEndsWith>

<OperationEquals Align="NotSet"></OperationEquals>

<OperationGreater Align="NotSet"></OperationGreater>

<OperationGreaterOrEqual Align="NotSet"></OperationGreaterOrEqual>

<OperationIsNotNull Align="NotSet"></OperationIsNotNull>

<OperationIsNull Align="NotSet"></OperationIsNull>

<OperationLess Align="NotSet"></OperationLess>

<OperationLessOrEqual Align="NotSet"></OperationLessOrEqual>

<OperationLike Align="NotSet"></OperationLike>

<OperationNoneOf Align="NotSet"></OperationNoneOf>

<OperationNotBetween Align="NotSet"></OperationNotBetween>

<OperationNotLike Align="NotSet"></OperationNotLike>

<LoadingPanel Align="NotSet" url="~/App_Themes/Glass/Editors/Loading.gif"></LoadingPanel>
</ImagesFilterControl>

<Styles cssfilepath="~/App_Themes/Glass/{0}/styles.css" csspostfix="Glass">
<Disabled>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Disabled>

<Customization HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Customization>

<PopupEditForm HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</PopupEditForm>

<Table HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Table>

<Header HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default" imagespacing="5px" sortingimagespacing="5px">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>
</Header>

<GroupRow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</GroupRow>

<FocusedGroupRow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</FocusedGroupRow>

<Row HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</Row>

<RowHotTrack HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</RowHotTrack>

<DetailRow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</DetailRow>

<DetailCell HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DetailCell>

<PreviewRow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</PreviewRow>

<EmptyDataRow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</EmptyDataRow>

<AlternatingRow Enabled="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</AlternatingRow>

<SelectedRow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</SelectedRow>

<FocusedRow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</FocusedRow>

<FilterRow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</FilterRow>

<Cell HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Cell>

<Footer HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Footer>

<GroupFooter HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</GroupFooter>

<GroupPanel HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</GroupPanel>

<HeaderPanel HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HeaderPanel>

<PagerTopPanel HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</PagerTopPanel>

<PagerBottomPanel HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</PagerBottomPanel>

<DetailButton HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DetailButton>

<CustomizationWindow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</CustomizationWindow>

<CustomizationWindowCloseButton Wrap="Default">
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
</CustomizationWindowCloseButton>

<CustomizationWindowContent HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</CustomizationWindowContent>

<CustomizationWindowHeader HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</CustomizationWindowHeader>

<PopupEditFormWindow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</PopupEditFormWindow>

<PopupEditFormWindowCloseButton Wrap="Default">
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
</PopupEditFormWindowCloseButton>

<PopupEditFormWindowContent HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</PopupEditFormWindowContent>

<PopupEditFormWindowHeader HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</PopupEditFormWindowHeader>

<FilterBuilderCloseButton Wrap="Default">
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
</FilterBuilderCloseButton>

<FilterBuilderHeader HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterBuilderHeader>

<FilterBuilderMainArea HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</FilterBuilderMainArea>

<FilterBuilderButtonArea HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</FilterBuilderButtonArea>

<LoadingPanel HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</LoadingPanel>

<LoadingDiv>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</LoadingDiv>

<CommandColumn HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</CommandColumn>

<CommandColumnItem HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</CommandColumnItem>

<InlineEditCell HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</InlineEditCell>

<FilterCell HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterCell>

<InlineEditRow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</InlineEditRow>

<EditFormDisplayRow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</EditFormDisplayRow>

<EditingErrorRow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</EditingErrorRow>

<EditForm HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</EditForm>

<EditFormCell HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</EditFormCell>

<EditFormTable HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</EditFormTable>

<EditFormColumnCaption HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</EditFormColumnCaption>

<TitlePanel HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</TitlePanel>

<StatusBar HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</StatusBar>

<FilterBar HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterBar>

<FilterBarLink HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterBarLink>

<FilterBarCheckBoxCell HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterBarCheckBoxCell>

<FilterBarImageCell HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterBarImageCell>

<FilterBarExpressionCell HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterBarExpressionCell>

<FilterBarClearButtonCell HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterBarClearButtonCell>

<FilterPopupWindow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterPopupWindow>

<FilterPopupItemsArea HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterPopupItemsArea>

<FilterPopupButtonPanel HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterPopupButtonPanel>

<FilterPopupItem HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterPopupItem>

<FilterPopupActiveItem HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterPopupActiveItem>

<FilterPopupSelectedItem HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterPopupSelectedItem>

<FilterRowMenu HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<GutterBackgroundImage Repeat="Repeat"></GutterBackgroundImage>

<SeparatorBackgroundImage Repeat="Repeat"></SeparatorBackgroundImage>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FilterRowMenu>

<FilterRowMenuItem HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<DropDownButtonStyle>
<CheckedStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</CheckedStyle>

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
</DropDownButtonStyle>

<CheckedStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</CheckedStyle>

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
</FilterRowMenuItem>
</Styles>

<StylesPager>
<Button HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</Button>

<DisabledButton HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</DisabledButton>

<CurrentPageNumber HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</CurrentPageNumber>

<PageNumber HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</PageNumber>

<Summary HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</Summary>

<Ellipsis HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</Ellipsis>
</StylesPager>

<StylesEditors>
<Style HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Style>

<ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ReadOnlyStyle>

<ReadOnly HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ReadOnly>

<CheckEdit HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</CheckEdit>

<ListBox HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ListBox>

<ListBoxItem HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</ListBoxItem>

<RadioButtonList HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</RadioButtonList>

<IncrementButtonStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</IncrementButtonStyle>

<SpinEditIncrementButton HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</SpinEditIncrementButton>

<DecrementButtonStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</DecrementButtonStyle>

<SpinEditDecrementButton HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</SpinEditDecrementButton>

<LargeIncrementButtonStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</LargeIncrementButtonStyle>

<SpinEditLargeIncrementButton HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</SpinEditLargeIncrementButton>

<LargeDecrementButtonStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</LargeDecrementButtonStyle>

<SpinEditLargeDecrementButton HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</SpinEditLargeDecrementButton>

<Label HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Label>

<Hyperlink HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Hyperlink>

<Image HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Image>

<Memo HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Memo>

<TextBox HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</TextBox>

<ButtonEdit HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ButtonEdit>

<ButtonEditButton HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</ButtonEditButton>

<Calendar HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Calendar>

<CalendarDayHeader Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarDayHeader>

<CalendarWeekNumber Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarWeekNumber>

<CalendarDay Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarDay>

<CalendarDayOtherMonth Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarDayOtherMonth>

<CalendarDaySelected Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarDaySelected>

<CalendarDayWeekEnd Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarDayWeekEnd>

<CalendarDayOutOfRange Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarDayOutOfRange>

<CalendarToday Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarToday>

<CalendarHeader HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default" spacing="1px">
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
</CalendarHeader>

<CalendarFooter HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</CalendarFooter>

<CalendarButton HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</CalendarButton>

<CalendarFastNav Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarFastNav>

<CalendarFastNavMonthArea Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarFastNavMonthArea>

<CalendarFastNavYearArea Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarFastNavYearArea>

<CalendarFastNavMonth Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarFastNavMonth>

<CalendarFastNavYear Wrap="Default" HorizontalAlign="NotSet" VerticalAlign="NotSet">
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
</CalendarFastNavYear>

<CalendarFastNavFooter HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</CalendarFastNavFooter>

<MaskHint Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</MaskHint>

<ProgressBar HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default" height="25px">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ProgressBar>

<ProgressBarIndicator>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ProgressBarIndicator>

<DropDownWindow HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DropDownWindow>

<ColorTable>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ColorTable>

<ColorTableCell>
<ColorBorder BorderStyle="NotSet"></ColorBorder>

<ColorBorderLeft BorderStyle="NotSet"></ColorBorderLeft>

<ColorBorderTop BorderStyle="NotSet"></ColorBorderTop>

<ColorBorderRight BorderStyle="NotSet"></ColorBorderRight>

<ColorBorderBottom BorderStyle="NotSet"></ColorBorderBottom>

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

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ColorTableCell>

<ColorIndicator>
<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ColorIndicator>

<DisplayColorIndicator>
<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</DisplayColorIndicator>

<Focused HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Focused>

<NullText HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</NullText>

<Invalid HorizontalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</Invalid>

<LoadingPanel HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</LoadingPanel>

<LoadingDiv>
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</LoadingDiv>
</StylesEditors>

<StylesFilterControl>
<Table HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</Table>

<PropertyName HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</PropertyName>

<GroupType HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</GroupType>

<Operation HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</Operation>

<Value HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</Value>

<ImageButton HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
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
</ImageButton>
</StylesFilterControl>

<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
                    </dx:ASPxGridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="" SelectCommand=""></asp:SqlDataSource>
                </td>
                </tr>
            <tr>
                <td colspan="4">
                    <dx:ASPxPopupControl ID="_Produtos_" runat="server" ClientIDMode="AutoID" CloseAction="OuterMouseClick" CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" CssPostfix="Office2003Blue" DragElement="Header" EnableHotTrack="False" PopupAction="LeftMouseClick" PopupHorizontalAlign="NotSet" PopupVerticalAlign="NotSet" RenderIFrameForPopupElements="Default" ResizingMode="Live" ShowSizeGrip="Auto" SpriteCssFilePath="~/App_Themes/Office2003Blue/{0}/sprite.css" Width="902px" HeaderText="Produto" Height="303px">
<CloseButtonImage Align="NotSet"></CloseButtonImage>

<FooterImage Align="NotSet"></FooterImage>

<HeaderImage Align="NotSet"></HeaderImage>

<SizeGripImage Align="NotSet"></SizeGripImage>

<CloseButtonStyle Wrap="Default">
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
</CloseButtonStyle>

<ContentStyle HorizontalAlign="NotSet" VerticalAlign="Top" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</ContentStyle>

<FooterStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FooterStyle>

<HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                        <Paddings PaddingRight="6px" />
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HeaderStyle>

<ModalBackgroundStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</ModalBackgroundStyle>
<ContentCollection>
<dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActivateTabPageAction="Click" ActiveTabIndex="0" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Glass/{0}/styles.css" CssPostfix="Glass" Height="383px" LoadingPanelImagePosition="Left" TabAlign="Left" TabPosition="Top" TabSpacing="0px" Width="880px">
        <TabPages>
            <dx:TabPage Text="Geral">
                <ActiveTabImage Align="NotSet">
                </ActiveTabImage>
                <TabImage Align="NotSet">
                </TabImage>
                <ActiveTabStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                    <HoverStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </HoverStyle>
                    <BackgroundImage Repeat="Repeat" />
                    <Border BorderStyle="NotSet" />
                    <BorderLeft BorderStyle="NotSet" />
                    <BorderTop BorderStyle="NotSet" />
                    <BorderRight BorderStyle="NotSet" />
                    <BorderBottom BorderStyle="NotSet" />
                </ActiveTabStyle>
                <TabStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                    <HoverStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </HoverStyle>
                    <BackgroundImage Repeat="Repeat" />
                    <Border BorderStyle="NotSet" />
                    <BorderLeft BorderStyle="NotSet" />
                    <BorderTop BorderStyle="NotSet" />
                    <BorderRight BorderStyle="NotSet" />
                    <BorderBottom BorderStyle="NotSet" />
                </TabStyle>
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <table style="width: 100%;">
                            <tr>
                                <td>CODIGO</td>
                                <td>
                                    <asp:TextBox ID="TxCodigo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Enabled="False" Width="250px"></asp:TextBox>
                                </td>
                                <td>CODIGO BARRAS</td>
                                <td>
                                    <asp:TextBox ID="TxCodigoBarras" runat="server" BorderColor="Red" BorderStyle="Solid" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;" Width="237px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>DESCRIÇÃO</td>
                                <td>
                                    <asp:TextBox ID="TxDescricao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="250px"></asp:TextBox>
                                </td>
                                <td>QUANTIDADE</td>
                                <td>
                                    <asp:TextBox ID="TxQuantidade" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" onpaste="return false;" Width="236px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>PESO</td>
                                <td>
                                    <asp:TextBox ID="TxPeso" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" onpaste="return false;" Width="83px"></asp:TextBox>
                                    &nbsp;CONVERSÃO
                                    <asp:TextBox ID="TxConversao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" onpaste="return false;" Width="81px"></asp:TextBox>
                                </td>
                                <td>VALIDADE</td>
                                <td>
                                    <asp:TextBox ID="TxValidade" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" onpaste="return false;" Width="151px"></asp:TextBox>
                                    &nbsp;UN
                                    <asp:DropDownList ID="CbUnidadeMedida" runat="server" Height="16px" Width="61px">
                                        <asp:ListItem>UN</asp:ListItem>
                                        <asp:ListItem>KG</asp:ListItem>
                                        <asp:ListItem>CX</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>FRACIONADO</td>
                                <td>
                                    <asp:CheckBox ID="ChPesavel" runat="server" BorderColor="SteelBlue" BorderStyle="None" Text="Pesavel" Width="76px" />
                                    &nbsp;<dx:ASPxButton ID="BtGerarCodigo" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2003Olive/{0}/styles.css" CssPostfix="Office2003Olive" HorizontalAlign="NotSet" ImagePosition="Left" OnClick="BtGerarCodigo_Click" SpriteCssFilePath="~/App_Themes/Office2003Olive/{0}/sprite.css" Text="Gerar" ToolTip="Gerar Código" VerticalAlign="NotSet" Width="100px" Wrap="Default">
                                        <Image Align="NotSet">
                                        </Image>
                                        <CheckedStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </CheckedStyle>
                                        <PressedStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </PressedStyle>
                                        <HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </HoverStyle>
                                        <FocusRectBorder BorderStyle="NotSet" />
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                        <DisabledStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </DisabledStyle>
                                    </dx:ASPxButton>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>SITUAÇÃO</td>
                                <td>
                                    <asp:CheckBox ID="ChAtivo" runat="server" BorderColor="SteelBlue" BorderStyle="None" ForeColor="Red" Text="Ativo" Width="93px" />
                                </td>
                                <td>CODIGO FORNEC</td>
                                <td>
                                    <asp:TextBox ID="TxCodigoFornecedor" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="218px"></asp:TextBox>
                                    &nbsp;<asp:ImageButton ID="BtBuscarFornecedor" runat="server" Height="24px" ImageUrl="~/Images/10.png" OnClick="BtBuscarFornecedor_Click" Width="31px" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="LbFornecedor" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" style="font-size: large; font-weight: bold; background-color: STEELBLUE; color: WHITE;">GRUPOS/FAMILIA</td>
                            </tr>
                            <tr>
                                <td>ORIGEM</td>
                                <td>
                                    <dx:ASPxComboBox ID="CbOrigem" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" DropDownStyle="DropDownList" EnableSynchronization="Default" HorizontalAlign="NotSet" IncrementalFilteringMode="None" LoadingPanelImagePosition="Top" PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" RenderIFrameForPopupElements="Default" SelectedIndex="0" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" ValueType="System.String" Width="250px">
                                        <Items>
                                            <dx:ListEditItem Selected="True" Text="0 - NACIONAL" Value="0 - NACIONAL" />
                                            <dx:ListEditItem Text="1 - ESTRANGEIRA IMPORTAÇÃO DIRETA" Value="1 - ESTRANGEIRA IMPORTAÇÃO DIRETA" />
                                            <dx:ListEditItem Text="2 - ESTRANGEIRA ADQUIRIDA NO MERCADO" Value="2 - ESTRANGEIRA ADQUIRIDA NO MERCADO" />
                                        </Items>
                                        <ItemImage Align="NotSet">
                                        </ItemImage>
                                        <ItemStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <SelectedStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </SelectedStyle>
                                        <HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </HoverStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                        </ItemStyle>
                                        <ListBoxStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ListBoxStyle>
                                        <LoadingPanelImage Align="NotSet" Url="~/App_Themes/SoftOrange/Editors/Loading.gif">
                                        </LoadingPanelImage>
                                        <LoadingPanelStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </LoadingPanelStyle>
                                        <DropDownButton ImagePosition="Left" Position="Right">
                                            <Image Align="NotSet">
                                            </Image>
                                        </DropDownButton>
                                        <ButtonEditEllipsisImage Align="NotSet">
                                        </ButtonEditEllipsisImage>
                                        <ButtonStyle Cursor="pointer" HorizontalAlign="NotSet" VerticalAlign="NotSet" Width="11px" Wrap="Default">
                                            <DisabledStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </DisabledStyle>
                                            <PressedStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </PressedStyle>
                                            <HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ButtonStyle>
                                        <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithText" ErrorTextPosition="Right">
                                            <ErrorImage Align="NotSet">
                                            </ErrorImage>
                                            <ErrorFrameStyle HorizontalAlign="NotSet" ImageSpacing="4px" VerticalAlign="NotSet" Wrap="Default">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <HoverStyle>
                                                    <BackgroundImage Repeat="Repeat" />
                                                    <Border BorderStyle="NotSet" />
                                                    <BorderLeft BorderStyle="NotSet" />
                                                    <BorderTop BorderStyle="NotSet" />
                                                    <BorderRight BorderStyle="NotSet" />
                                                    <BorderBottom BorderStyle="NotSet" />
                                                </HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </ErrorFrameStyle>
                                        </ValidationSettings>
                                        <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ReadOnlyStyle>
                                        <FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </FocusedStyle>
                                        <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </InvalidStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                        <DisabledStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </DisabledStyle>
                                    </dx:ASPxComboBox>
                                </td>
                                <td>GRUPO</td>
                                <td>
                                    <dx:ASPxComboBox ID="CbGrupo" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" DropDownStyle="DropDownList" EnableSynchronization="Default" HorizontalAlign="NotSet" IncrementalFilteringMode="None" LoadingPanelImagePosition="Top" PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" RenderIFrameForPopupElements="Default" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" ValueType="System.String" Width="250px">
                                        <ItemImage Align="NotSet">
                                        </ItemImage>
                                        <ItemStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <SelectedStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </SelectedStyle>
                                        <HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </HoverStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                        </ItemStyle>
                                        <ListBoxStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ListBoxStyle>
                                        <LoadingPanelImage Align="NotSet" Url="~/App_Themes/SoftOrange/Editors/Loading.gif">
                                        </LoadingPanelImage>
                                        <LoadingPanelStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </LoadingPanelStyle>
                                        <DropDownButton ImagePosition="Left" Position="Right">
                                            <Image Align="NotSet">
                                            </Image>
                                        </DropDownButton>
                                        <ButtonEditEllipsisImage Align="NotSet">
                                        </ButtonEditEllipsisImage>
                                        <ButtonStyle Cursor="pointer" HorizontalAlign="NotSet" VerticalAlign="NotSet" Width="11px" Wrap="Default">
                                            <DisabledStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </DisabledStyle>
                                            <PressedStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </PressedStyle>
                                            <HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ButtonStyle>
                                        <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithText" ErrorTextPosition="Right">
                                            <ErrorImage Align="NotSet">
                                            </ErrorImage>
                                            <ErrorFrameStyle HorizontalAlign="NotSet" ImageSpacing="4px" VerticalAlign="NotSet" Wrap="Default">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <HoverStyle>
                                                    <BackgroundImage Repeat="Repeat" />
                                                    <Border BorderStyle="NotSet" />
                                                    <BorderLeft BorderStyle="NotSet" />
                                                    <BorderTop BorderStyle="NotSet" />
                                                    <BorderRight BorderStyle="NotSet" />
                                                    <BorderBottom BorderStyle="NotSet" />
                                                </HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </ErrorFrameStyle>
                                        </ValidationSettings>
                                        <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ReadOnlyStyle>
                                        <FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </FocusedStyle>
                                        <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </InvalidStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                        <DisabledStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </DisabledStyle>
                                    </dx:ASPxComboBox>
                                </td>
                            </tr>
                            <tr>
                                <td>SUB GRUPO</td>
                                <td>
                                    <dx:ASPxComboBox ID="CbSubGrupo" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" DropDownStyle="DropDownList" EnableSynchronization="Default" HorizontalAlign="NotSet" IncrementalFilteringMode="None" LoadingPanelImagePosition="Top" PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" RenderIFrameForPopupElements="Default" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" ValueType="System.String" Width="250px">
                                        <ItemImage Align="NotSet">
                                        </ItemImage>
                                        <ItemStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <SelectedStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </SelectedStyle>
                                        <HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </HoverStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                        </ItemStyle>
                                        <ListBoxStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ListBoxStyle>
                                        <LoadingPanelImage Align="NotSet" Url="~/App_Themes/SoftOrange/Editors/Loading.gif">
                                        </LoadingPanelImage>
                                        <LoadingPanelStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </LoadingPanelStyle>
                                        <DropDownButton ImagePosition="Left" Position="Right">
                                            <Image Align="NotSet">
                                            </Image>
                                        </DropDownButton>
                                        <ButtonEditEllipsisImage Align="NotSet">
                                        </ButtonEditEllipsisImage>
                                        <ButtonStyle Cursor="pointer" HorizontalAlign="NotSet" VerticalAlign="NotSet" Width="11px" Wrap="Default">
                                            <DisabledStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </DisabledStyle>
                                            <PressedStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </PressedStyle>
                                            <HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ButtonStyle>
                                        <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithText" ErrorTextPosition="Right">
                                            <ErrorImage Align="NotSet">
                                            </ErrorImage>
                                            <ErrorFrameStyle HorizontalAlign="NotSet" ImageSpacing="4px" VerticalAlign="NotSet" Wrap="Default">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <HoverStyle>
                                                    <BackgroundImage Repeat="Repeat" />
                                                    <Border BorderStyle="NotSet" />
                                                    <BorderLeft BorderStyle="NotSet" />
                                                    <BorderTop BorderStyle="NotSet" />
                                                    <BorderRight BorderStyle="NotSet" />
                                                    <BorderBottom BorderStyle="NotSet" />
                                                </HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </ErrorFrameStyle>
                                        </ValidationSettings>
                                        <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ReadOnlyStyle>
                                        <FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </FocusedStyle>
                                        <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </InvalidStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                        <DisabledStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </DisabledStyle>
                                    </dx:ASPxComboBox>
                                </td>
                                <td>FAMILIA</td>
                                <td>
                                    <dx:ASPxComboBox ID="CbFamilia" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" DropDownStyle="DropDownList" EnableSynchronization="Default" HorizontalAlign="NotSet" IncrementalFilteringMode="None" LoadingPanelImagePosition="Top" PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" RenderIFrameForPopupElements="Default" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" ValueType="System.String" Width="250px">
                                        <ItemImage Align="NotSet">
                                        </ItemImage>
                                        <ItemStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <SelectedStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </SelectedStyle>
                                        <HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </HoverStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                        </ItemStyle>
                                        <ListBoxStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ListBoxStyle>
                                        <LoadingPanelImage Align="NotSet" Url="~/App_Themes/SoftOrange/Editors/Loading.gif">
                                        </LoadingPanelImage>
                                        <LoadingPanelStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </LoadingPanelStyle>
                                        <DropDownButton ImagePosition="Left" Position="Right">
                                            <Image Align="NotSet">
                                            </Image>
                                        </DropDownButton>
                                        <ButtonEditEllipsisImage Align="NotSet">
                                        </ButtonEditEllipsisImage>
                                        <ButtonStyle Cursor="pointer" HorizontalAlign="NotSet" VerticalAlign="NotSet" Width="11px" Wrap="Default">
                                            <DisabledStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </DisabledStyle>
                                            <PressedStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </PressedStyle>
                                            <HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ButtonStyle>
                                        <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithText" ErrorTextPosition="Right">
                                            <ErrorImage Align="NotSet">
                                            </ErrorImage>
                                            <ErrorFrameStyle HorizontalAlign="NotSet" ImageSpacing="4px" VerticalAlign="NotSet" Wrap="Default">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <HoverStyle>
                                                    <BackgroundImage Repeat="Repeat" />
                                                    <Border BorderStyle="NotSet" />
                                                    <BorderLeft BorderStyle="NotSet" />
                                                    <BorderTop BorderStyle="NotSet" />
                                                    <BorderRight BorderStyle="NotSet" />
                                                    <BorderBottom BorderStyle="NotSet" />
                                                </HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </ErrorFrameStyle>
                                        </ValidationSettings>
                                        <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ReadOnlyStyle>
                                        <FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </FocusedStyle>
                                        <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </InvalidStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                        <DisabledStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </DisabledStyle>
                                    </dx:ASPxComboBox>
                                </td>
                            </tr>
                            <tr>
                                <td>SEÇÃO</td>
                                <td>
                                    <dx:ASPxComboBox ID="CbSecao" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" DropDownStyle="DropDownList" EnableSynchronization="Default" HorizontalAlign="NotSet" IncrementalFilteringMode="None" LoadingPanelImagePosition="Top" PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" RenderIFrameForPopupElements="Default" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" ValueType="System.String" Width="250px">
                                        <ItemImage Align="NotSet">
                                        </ItemImage>
                                        <ItemStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                        <SelectedStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </SelectedStyle>
                                        <HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </HoverStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                        </ItemStyle>
                                        <ListBoxStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ListBoxStyle>
                                        <LoadingPanelImage Align="NotSet" Url="~/App_Themes/SoftOrange/Editors/Loading.gif">
                                        </LoadingPanelImage>
                                        <LoadingPanelStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </LoadingPanelStyle>
                                        <DropDownButton ImagePosition="Left" Position="Right">
                                            <Image Align="NotSet">
                                            </Image>
                                        </DropDownButton>
                                        <ButtonEditEllipsisImage Align="NotSet">
                                        </ButtonEditEllipsisImage>
                                        <ButtonStyle Cursor="pointer" HorizontalAlign="NotSet" VerticalAlign="NotSet" Width="11px" Wrap="Default">
                                            <DisabledStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </DisabledStyle>
                                            <PressedStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </PressedStyle>
                                            <HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </HoverStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ButtonStyle>
                                        <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithText" ErrorTextPosition="Right">
                                            <ErrorImage Align="NotSet">
                                            </ErrorImage>
                                            <ErrorFrameStyle HorizontalAlign="NotSet" ImageSpacing="4px" VerticalAlign="NotSet" Wrap="Default">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <HoverStyle>
                                                    <BackgroundImage Repeat="Repeat" />
                                                    <Border BorderStyle="NotSet" />
                                                    <BorderLeft BorderStyle="NotSet" />
                                                    <BorderTop BorderStyle="NotSet" />
                                                    <BorderRight BorderStyle="NotSet" />
                                                    <BorderBottom BorderStyle="NotSet" />
                                                </HoverStyle>
                                                <BackgroundImage Repeat="Repeat" />
                                                <Border BorderStyle="NotSet" />
                                                <BorderLeft BorderStyle="NotSet" />
                                                <BorderTop BorderStyle="NotSet" />
                                                <BorderRight BorderStyle="NotSet" />
                                                <BorderBottom BorderStyle="NotSet" />
                                            </ErrorFrameStyle>
                                        </ValidationSettings>
                                        <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </ReadOnlyStyle>
                                        <FocusedStyle HorizontalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </FocusedStyle>
                                        <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </InvalidStyle>
                                        <BackgroundImage Repeat="Repeat" />
                                        <Border BorderStyle="NotSet" />
                                        <BorderLeft BorderStyle="NotSet" />
                                        <BorderTop BorderStyle="NotSet" />
                                        <BorderRight BorderStyle="NotSet" />
                                        <BorderBottom BorderStyle="NotSet" />
                                        <DisabledStyle>
                                            <BackgroundImage Repeat="Repeat" />
                                            <Border BorderStyle="NotSet" />
                                            <BorderLeft BorderStyle="NotSet" />
                                            <BorderTop BorderStyle="NotSet" />
                                            <BorderRight BorderStyle="NotSet" />
                                            <BorderBottom BorderStyle="NotSet" />
                                        </DisabledStyle>
                                    </dx:ASPxComboBox>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" style="font-size: large; font-weight: bold; background-color: STEELBLUE; color: WHITE;">PRECIFICAÇÃO</td>
                            </tr>
                            <tr>
                                <td>PREÇO CUSTO</td>
                                <td>
                                    <asp:TextBox ID="TxPrecoCusto" runat="server" BorderColor="#CC6600" BorderStyle="Solid" Width="218px"></asp:TextBox>
                                </td>
                                <td>PREÇO VENDA</td>
                                <td>
                                    <asp:TextBox ID="TxPrecoVenda" runat="server" BorderColor="Red" BorderStyle="Solid" Width="238px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>MARGEM</td>
                                <td>
                                    <asp:TextBox ID="TxMargemSugerido" runat="server" BorderColor="#CC6600" BorderStyle="Solid" Width="218px"></asp:TextBox>
                                    &nbsp;<asp:ImageButton ID="BtCalcular" runat="server" Height="24px" ImageUrl="~/Images/48.png" OnClick="BtCalcular_Click" Width="31px" />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="SITUAÇÃO TRIBUTÁRIA">
                <ActiveTabImage Align="NotSet">
                </ActiveTabImage>
                <TabImage Align="NotSet">
                </TabImage>
                <ActiveTabStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                    <HoverStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </HoverStyle>
                    <BackgroundImage Repeat="Repeat" />
                    <Border BorderStyle="NotSet" />
                    <BorderLeft BorderStyle="NotSet" />
                    <BorderTop BorderStyle="NotSet" />
                    <BorderRight BorderStyle="NotSet" />
                    <BorderBottom BorderStyle="NotSet" />
                </ActiveTabStyle>
                <TabStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                    <HoverStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </HoverStyle>
                    <BackgroundImage Repeat="Repeat" />
                    <Border BorderStyle="NotSet" />
                    <BorderLeft BorderStyle="NotSet" />
                    <BorderTop BorderStyle="NotSet" />
                    <BorderRight BorderStyle="NotSet" />
                    <BorderBottom BorderStyle="NotSet" />
                </TabStyle>
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <table style="width: 100%;">
                            <tr>
                                <td>ICMS</td>
                                <td>
                                    <asp:TextBox ID="TxICMS" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="238px"></asp:TextBox>
                                </td>
                                <td>BASE CALCULO</td>
                                <td>
                                    <asp:TextBox ID="TxBaseCalculo" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="238px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>BASE CST</td>
                                <td>
                                    <asp:TextBox ID="TxBaseCST" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="238px"></asp:TextBox>
                                </td>
                                <td>MVA</td>
                                <td>
                                    <asp:TextBox ID="TxMVA" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;" Width="238px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>IPI</td>
                                <td>
                                    <asp:TextBox ID="TxIPI" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="238px"></asp:TextBox>
                                </td>
                                <td>VALOR PIS</td>
                                <td>
                                    <asp:TextBox ID="TxValorPis" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="238px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>VALOR COFINS</td>
                                <td>
                                    <asp:TextBox ID="TxValorCofins" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="238px"></asp:TextBox>
                                </td>
                                <td>ALIQUOTA</td>
                                <td>
                                    <asp:TextBox ID="TxAliquota" runat="server" BorderColor="Red" BorderStyle="Solid" Width="238px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>MARGEM</td>
                                <td>
                                    <asp:TextBox ID="TxMargem" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="238px"></asp:TextBox>
                                </td>
                                <td>CODIGO NCM</td>
                                <td>
                                    <asp:TextBox ID="TxCodigoNCM" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;" Width="238px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>CFOP</td>
                                <td>
                                    <asp:TextBox ID="TxCFOP" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;" Width="238px"></asp:TextBox>
                                </td>
                                <td>CFOP TRANSFERENCIA</td>
                                <td>
                                    <asp:TextBox ID="TxCFOPTransferencia" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="238px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>CFOP DEVOLUÇÃO</td>
                                <td>
                                    <asp:TextBox ID="TxCFOPDevolucao" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;" Width="238px"></asp:TextBox>
                                </td>
                                <td>SITUAÇÃO TRIBUTÁRIA</td>
                                <td>
                                    <asp:DropDownList ID="CbSituacaoTributaria" runat="server" Height="24px" Width="241px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>PIS COFINS</td>
                                <td>
                                    <asp:DropDownList ID="CbPisCofins" runat="server" Width="242px">
                                        <asp:ListItem>01 TRIBUTAÇÃO NORMAL</asp:ListItem>
                                        <asp:ListItem>04 TRUBUTAÇÃO MONOFÁSICA</asp:ListItem>
                                        <asp:ListItem>05 TRIBUTAÇÃO SUBSTITUIÇÃO TRIBUTARIA</asp:ListItem>
                                        <asp:ListItem>06 TRIBUTAÇÃO ALÍQUOTA ZERO</asp:ListItem>
                                        <asp:ListItem>07 ISENTO</asp:ListItem>
                                        <asp:ListItem>08 NÃO TRIBUTADO</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>CST</td>
                                <td>
                                    <asp:DropDownList ID="CbCST" runat="server" Width="242px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
        <LoadingPanelImage Align="NotSet" Url="~/App_Themes/Glass/Web/Loading.gif">
        </LoadingPanelImage>
        <LoadingPanelStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
            <BackgroundImage Repeat="Repeat" />
            <Border BorderStyle="NotSet" />
            <BorderLeft BorderStyle="NotSet" />
            <BorderTop BorderStyle="NotSet" />
            <BorderRight BorderStyle="NotSet" />
            <BorderBottom BorderStyle="NotSet" />
        </LoadingPanelStyle>
        <ActiveTabImage Align="NotSet">
        </ActiveTabImage>
        <TabImage Align="NotSet">
        </TabImage>
        <Paddings PaddingLeft="0px" />
        <ActiveTabStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
            <HoverStyle>
                <BackgroundImage Repeat="Repeat" />
                <Border BorderStyle="NotSet" />
                <BorderLeft BorderStyle="NotSet" />
                <BorderTop BorderStyle="NotSet" />
                <BorderRight BorderStyle="NotSet" />
                <BorderBottom BorderStyle="NotSet" />
            </HoverStyle>
            <BackgroundImage Repeat="Repeat" />
            <Border BorderStyle="NotSet" />
            <BorderLeft BorderStyle="NotSet" />
            <BorderTop BorderStyle="NotSet" />
            <BorderRight BorderStyle="NotSet" />
            <BorderBottom BorderStyle="NotSet" />
        </ActiveTabStyle>
        <TabStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
            <HoverStyle>
                <BackgroundImage Repeat="Repeat" />
                <Border BorderStyle="NotSet" />
                <BorderLeft BorderStyle="NotSet" />
                <BorderTop BorderStyle="NotSet" />
                <BorderRight BorderStyle="NotSet" />
                <BorderBottom BorderStyle="NotSet" />
            </HoverStyle>
            <BackgroundImage Repeat="Repeat" />
            <Border BorderStyle="NotSet" />
            <BorderLeft BorderStyle="NotSet" />
            <BorderTop BorderStyle="NotSet" />
            <BorderRight BorderStyle="NotSet" />
            <BorderBottom BorderStyle="NotSet" />
        </TabStyle>
        <ContentStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
            <BackgroundImage Repeat="Repeat" />
            <Border BorderColor="#4986A2" BorderStyle="Solid" />
            <BorderLeft BorderStyle="NotSet" />
            <BorderTop BorderStyle="NotSet" />
            <BorderRight BorderStyle="NotSet" />
            <BorderBottom BorderStyle="NotSet" />
        </ContentStyle>
        <BackgroundImage Repeat="Repeat" />
        <Border BorderStyle="NotSet" />
        <BorderLeft BorderStyle="NotSet" />
        <BorderTop BorderStyle="NotSet" />
        <BorderRight BorderStyle="NotSet" />
        <BorderBottom BorderStyle="NotSet" />
        <DisabledStyle>
            <BackgroundImage Repeat="Repeat" />
            <Border BorderStyle="NotSet" />
            <BorderLeft BorderStyle="NotSet" />
            <BorderTop BorderStyle="NotSet" />
            <BorderRight BorderStyle="NotSet" />
            <BorderBottom BorderStyle="NotSet" />
        </DisabledStyle>
    </dx:ASPxPageControl>
    <br />
    <table style="width:100%;">
        <tr>
            <td>
                <dx:ASPxButton ID="BtAtualizar" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" HorizontalAlign="NotSet" ImagePosition="Left" OnClick="BtFornecedor_Click" SpriteCssFilePath="~/App_Themes/BlackGlass/{0}/sprite.css" Text="Atualizar" VerticalAlign="NotSet" Width="100px" Wrap="Default">
                    <Image Align="NotSet">
                    </Image>
                    <CheckedStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </CheckedStyle>
                    <PressedStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </PressedStyle>
                    <HoverStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </HoverStyle>
                    <FocusRectBorder BorderStyle="NotSet" />
                    <BackgroundImage Repeat="Repeat" />
                    <Border BorderStyle="NotSet" />
                    <BorderLeft BorderStyle="NotSet" />
                    <BorderTop BorderStyle="NotSet" />
                    <BorderRight BorderStyle="NotSet" />
                    <BorderBottom BorderStyle="NotSet" />
                    <DisabledStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </DisabledStyle>
                </dx:ASPxButton>
                <dx:ASPxButton ID="BtNew" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" HorizontalAlign="NotSet" ImagePosition="Left" OnClick="BtNew_Click" SpriteCssFilePath="~/App_Themes/BlackGlass/{0}/sprite.css" Text="Novo" VerticalAlign="NotSet" Width="100px" Wrap="Default">
                    <Image Align="NotSet">
                    </Image>
                    <CheckedStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </CheckedStyle>
                    <PressedStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </PressedStyle>
                    <HoverStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </HoverStyle>
                    <FocusRectBorder BorderStyle="NotSet" />
                    <BackgroundImage Repeat="Repeat" />
                    <Border BorderStyle="NotSet" />
                    <BorderLeft BorderStyle="NotSet" />
                    <BorderTop BorderStyle="NotSet" />
                    <BorderRight BorderStyle="NotSet" />
                    <BorderBottom BorderStyle="NotSet" />
                    <DisabledStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </DisabledStyle>
                </dx:ASPxButton>
                <dx:ASPxButton ID="BtGravar" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" HorizontalAlign="NotSet" ImagePosition="Left" OnClick="BtGravar_Click" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" Text="Salvar" VerticalAlign="NotSet" Width="100px" Wrap="Default">
                    <Image Align="NotSet">
                    </Image>
                    <CheckedStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </CheckedStyle>
                    <PressedStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </PressedStyle>
                    <HoverStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </HoverStyle>
                    <FocusRectBorder BorderStyle="NotSet" />
                    <BackgroundImage Repeat="Repeat" />
                    <Border BorderStyle="NotSet" />
                    <BorderLeft BorderStyle="NotSet" />
                    <BorderTop BorderStyle="NotSet" />
                    <BorderRight BorderStyle="NotSet" />
                    <BorderBottom BorderStyle="NotSet" />
                    <DisabledStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                    </DisabledStyle>
                </dx:ASPxButton>
            </td>
            <td rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    </dx:PopupControlContentControl>
</ContentCollection>

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
                    </dx:ASPxPopupControl>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <dx:ASPxPopupControl ID="PopProdutos" runat="server" ClientIDMode="AutoID" CloseAction="OuterMouseClick" CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" CssPostfix="Office2003Blue" DragElement="Header" PopupAction="LeftMouseClick" PopupHorizontalAlign="NotSet" PopupVerticalAlign="NotSet" RenderIFrameForPopupElements="Default" ResizingMode="Live" ShowSizeGrip="Auto" SpriteCssFilePath="~/App_Themes/Office2003Blue/{0}/sprite.css" Width="837px" HeaderText="Lista de Produtos" EnableHotTrack="False">
<CloseButtonImage Align="NotSet"></CloseButtonImage>

<FooterImage Align="NotSet"></FooterImage>

<HeaderImage Align="NotSet"></HeaderImage>

<SizeGripImage Align="NotSet"></SizeGripImage>

<CloseButtonStyle Wrap="Default">
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
</CloseButtonStyle>

<ContentStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="Solid"></BorderBottom>
</ContentStyle>

<FooterStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
<BackgroundImage Repeat="Repeat"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</FooterStyle>

<HeaderStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                        <Paddings PaddingRight="6px" />
<BackgroundImage Repeat="RepeatX"></BackgroundImage>

<Border BorderStyle="NotSet"></Border>

<BorderLeft BorderStyle="NotSet"></BorderLeft>

<BorderTop BorderStyle="NotSet"></BorderTop>

<BorderRight BorderStyle="NotSet"></BorderRight>

<BorderBottom BorderStyle="NotSet"></BorderBottom>
</HeaderStyle>

<ModalBackgroundStyle>
<BackgroundImage Repeat="Repeat"></BackgroundImage>
</ModalBackgroundStyle>
<ContentCollection>
<dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
    <h2>realsoft - ALTERAÇÃO DE PREÇOS</h2>
    <p>
        <table style="width: 100%;">
            <tr>
                <td>OPÇÃO</td>
                <td>
                    <dx:ASPxCheckBox ID="RdTudo" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" CssPostfix="Office2003Blue" Layout="Table" SpriteCssFilePath="~/App_Themes/Office2003Blue/{0}/sprite.css" Text="Tudo" TextAlign="Right" Wrap="Default">
                        <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithText" ErrorTextPosition="Right">
                            <ErrorImage Align="NotSet">
                            </ErrorImage>
                            <ErrorFrameStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                <HoverStyle>
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </HoverStyle>
                                <BackgroundImage Repeat="Repeat" />
                                <Border BorderStyle="NotSet" />
                                <BorderLeft BorderStyle="NotSet" />
                                <BorderTop BorderStyle="NotSet" />
                                <BorderRight BorderStyle="NotSet" />
                                <BorderBottom BorderStyle="NotSet" />
                            </ErrorFrameStyle>
                        </ValidationSettings>
                        <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                            <BackgroundImage Repeat="Repeat" />
                            <Border BorderStyle="NotSet" />
                            <BorderLeft BorderStyle="NotSet" />
                            <BorderTop BorderStyle="NotSet" />
                            <BorderRight BorderStyle="NotSet" />
                            <BorderBottom BorderStyle="NotSet" />
                        </ReadOnlyStyle>
                        <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                            <BackgroundImage Repeat="Repeat" />
                            <Border BorderStyle="NotSet" />
                            <BorderLeft BorderStyle="NotSet" />
                            <BorderTop BorderStyle="NotSet" />
                            <BorderRight BorderStyle="NotSet" />
                            <BorderBottom BorderStyle="NotSet" />
                        </InvalidStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                        <DisabledStyle>
                            <BackgroundImage Repeat="Repeat" />
                            <Border BorderStyle="NotSet" />
                            <BorderLeft BorderStyle="NotSet" />
                            <BorderTop BorderStyle="NotSet" />
                            <BorderRight BorderStyle="NotSet" />
                            <BorderBottom BorderStyle="NotSet" />
                        </DisabledStyle>
                    </dx:ASPxCheckBox>
                    <dx:ASPxCheckBox ID="RdDescricao" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" CssPostfix="Office2003Blue" Layout="Table" SpriteCssFilePath="~/App_Themes/Office2003Blue/{0}/sprite.css" Text="Descrição" TextAlign="Right" Wrap="Default">
                        <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithText" ErrorTextPosition="Right">
                            <ErrorImage Align="NotSet">
                            </ErrorImage>
                            <ErrorFrameStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                <HoverStyle>
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </HoverStyle>
                                <BackgroundImage Repeat="Repeat" />
                                <Border BorderStyle="NotSet" />
                                <BorderLeft BorderStyle="NotSet" />
                                <BorderTop BorderStyle="NotSet" />
                                <BorderRight BorderStyle="NotSet" />
                                <BorderBottom BorderStyle="NotSet" />
                            </ErrorFrameStyle>
                        </ValidationSettings>
                        <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                            <BackgroundImage Repeat="Repeat" />
                            <Border BorderStyle="NotSet" />
                            <BorderLeft BorderStyle="NotSet" />
                            <BorderTop BorderStyle="NotSet" />
                            <BorderRight BorderStyle="NotSet" />
                            <BorderBottom BorderStyle="NotSet" />
                        </ReadOnlyStyle>
                        <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                            <BackgroundImage Repeat="Repeat" />
                            <Border BorderStyle="NotSet" />
                            <BorderLeft BorderStyle="NotSet" />
                            <BorderTop BorderStyle="NotSet" />
                            <BorderRight BorderStyle="NotSet" />
                            <BorderBottom BorderStyle="NotSet" />
                        </InvalidStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                        <DisabledStyle>
                            <BackgroundImage Repeat="Repeat" />
                            <Border BorderStyle="NotSet" />
                            <BorderLeft BorderStyle="NotSet" />
                            <BorderTop BorderStyle="NotSet" />
                            <BorderRight BorderStyle="NotSet" />
                            <BorderBottom BorderStyle="NotSet" />
                        </DisabledStyle>
                    </dx:ASPxCheckBox>
                    <dx:ASPxCheckBox ID="RdCodigo" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" CssPostfix="Office2003Blue" Layout="Table" SpriteCssFilePath="~/App_Themes/Office2003Blue/{0}/sprite.css" Text="Codigo de Barras" TextAlign="Right" Wrap="Default">
                        <ValidationSettings Display="Static" ErrorDisplayMode="ImageWithText" ErrorTextPosition="Right">
                            <ErrorImage Align="NotSet">
                            </ErrorImage>
                            <ErrorFrameStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                                <HoverStyle>
                                    <BackgroundImage Repeat="Repeat" />
                                    <Border BorderStyle="NotSet" />
                                    <BorderLeft BorderStyle="NotSet" />
                                    <BorderTop BorderStyle="NotSet" />
                                    <BorderRight BorderStyle="NotSet" />
                                    <BorderBottom BorderStyle="NotSet" />
                                </HoverStyle>
                                <BackgroundImage Repeat="Repeat" />
                                <Border BorderStyle="NotSet" />
                                <BorderLeft BorderStyle="NotSet" />
                                <BorderTop BorderStyle="NotSet" />
                                <BorderRight BorderStyle="NotSet" />
                                <BorderBottom BorderStyle="NotSet" />
                            </ErrorFrameStyle>
                        </ValidationSettings>
                        <ReadOnlyStyle HorizontalAlign="NotSet" VerticalAlign="NotSet" Wrap="Default">
                            <BackgroundImage Repeat="Repeat" />
                            <Border BorderStyle="NotSet" />
                            <BorderLeft BorderStyle="NotSet" />
                            <BorderTop BorderStyle="NotSet" />
                            <BorderRight BorderStyle="NotSet" />
                            <BorderBottom BorderStyle="NotSet" />
                        </ReadOnlyStyle>
                        <InvalidStyle HorizontalAlign="NotSet" Wrap="Default">
                            <BackgroundImage Repeat="Repeat" />
                            <Border BorderStyle="NotSet" />
                            <BorderLeft BorderStyle="NotSet" />
                            <BorderTop BorderStyle="NotSet" />
                            <BorderRight BorderStyle="NotSet" />
                            <BorderBottom BorderStyle="NotSet" />
                        </InvalidStyle>
                        <BackgroundImage Repeat="Repeat" />
                        <Border BorderStyle="NotSet" />
                        <BorderLeft BorderStyle="NotSet" />
                        <BorderTop BorderStyle="NotSet" />
                        <BorderRight BorderStyle="NotSet" />
                        <BorderBottom BorderStyle="NotSet" />
                        <DisabledStyle>
                            <BackgroundImage Repeat="Repeat" />
                            <Border BorderStyle="NotSet" />
                            <BorderLeft BorderStyle="NotSet" />
                            <BorderTop BorderStyle="NotSet" />
                            <BorderRight BorderStyle="NotSet" />
                            <BorderBottom BorderStyle="NotSet" />
                        </DisabledStyle>
                    </dx:ASPxCheckBox>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtBuscar" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" OnClick="BtBuscar_Click" Text="Buscar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">DESCRIÇÃO</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TxDescricao0" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="327px"></asp:TextBox>
                </td>
                <td class="auto-style1">CODIGO DE BARRAS</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TxCodigoBarras0" runat="server" BorderColor="SteelBlue" BorderStyle="Solid" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Preço</td>
                <td>
                    <asp:TextBox ID="TxPreco" runat="server" BorderColor="Red" BorderStyle="Solid" Width="210px"></asp:TextBox>
                    &nbsp;<asp:ImageButton ID="BtSalvar" runat="server" ImageUrl="~/Images/Save.png" OnClick="BtSalvar_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="DgPrecos" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackImageUrl="~/Images/logomarca.jpg" CellPadding="4" DataSourceID="AlteraPRECOS" ForeColor="#333333" GridLines="None" OnRowCommand="DgPrecos_RowCommand" OnRowUpdated="DgPrecos_RowUpdated1" OnSelectedIndexChanged="DgPrecos_SelectedIndexChanged" Width="871px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" />
                            <asp:BoundField DataField="EAN" HeaderText="EAN" />
                            <asp:BoundField DataField="MERCADORIA" HeaderText="DESCRIÇÃO" />
                            <asp:BoundField DataField="PRECOCUSTO" HeaderText="PRECO CUSTO" />
                            <asp:BoundField DataField="PRECOVENDA" HeaderText="PRECO VENDA" />
                            <asp:ButtonField ButtonType="Image" CommandName="Salvar" ImageUrl="~/Images/Save.png" Text="Salvar">
                            <HeaderStyle Height="20px" Width="20px" />
                            <ItemStyle Height="20px" Width="20px" />
                            </asp:ButtonField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="AlteraPRECOS" runat="server" OnUpdated="AlteraPRECOS_Updated"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
    </dx:PopupControlContentControl>
</ContentCollection>

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
                    </dx:ASPxPopupControl>
                </td>
            </tr>
        </table>
</p>
</asp:Content>
