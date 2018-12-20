<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gider_grup_kartlari.aspx.cs" Inherits="Taslak.gider_grup_kartlari" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Gider Grup Kartları<dx:ASPxGridView Width="100%" ID="ASPxGridViewmusteriler" runat="server" DataSourceID="SqlDataSourcegidergrupkartlari" AutoGenerateColumns="False" KeyFieldName="ID">
        <Settings HorizontalScrollBarMode="Auto" ShowFooter="True" />
        <Settings VerticalScrollBarMode="Auto" ShowGroupButtons="False" />
        <SettingsDetail ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
        <SettingsContextMenu EnableColumnMenu="True" EnableFooterMenu="True" EnableRowMenu="True">
        </SettingsContextMenu>
        <Templates>
            <DetailRow>
                <dx:ASPxGridView Width="100%"  ID="ASPxGridViewhareketler" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcecarihareketleri" KeyFieldName="ID" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect" Theme="Aqua">
                    <Settings VerticalScrollBarMode="Auto" />
                    <SettingsPager Visible="False">
                    </SettingsPager>
                    <SettingsEditing Mode="PopupEditForm">
                    </SettingsEditing>
                    <Settings HorizontalScrollBarMode="Auto" />
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1" ReadOnly="True">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="TARIH" VisibleIndex="2">
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="FIS_TIPI" ReadOnly="True" VisibleIndex="3">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="FIS_NO" VisibleIndex="4">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="TUTAR" VisibleIndex="5">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="MAKBUZ_NO" VisibleIndex="7">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="ACIKLAMA" VisibleIndex="8">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="ODEME_DURUMU" VisibleIndex="6">
                            <PropertiesComboBox>
                                <Items>
                                    <dx:ListEditItem Text="ODENDI" Value="ODENDI" />
                                    <dx:ListEditItem Text="ODENMEDI" Value="ODENMEDI" />
                                </Items>
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                    </Columns>
                </dx:ASPxGridView>
            </DetailRow>
        </Templates>
        <SettingsPager Visible="False">
        </SettingsPager>
        <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>
        <Settings />
        <SettingsSearchPanel Visible="True" />
        <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="WYSIWYG" Landscape="True" />
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="ADI" VisibleIndex="2" Width="100%"></dx:GridViewDataTextColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar EnableAdaptivity="true">
                <Items>
                    <dx:GridViewToolbarItem Command="ExportToPdf" />
                    <dx:GridViewToolbarItem Command="ExportToXls" />
                    <dx:GridViewToolbarItem Command="ExportToXlsx" />
                    <dx:GridViewToolbarItem Command="ExportToDocx" />
                    <dx:GridViewToolbarItem Command="ExportToRtf" />
                    <dx:GridViewToolbarItem Command="ExportToCsv" />
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>



    </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSourcegidergrupkartlari" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" DeleteCommand="DELETE FROM [CARI_GIDER_GRUP] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CARI_GIDER_GRUP] ([ADI]) VALUES (@ADI)" SelectCommand="SELECT * FROM [CARI_GIDER_GRUP]" UpdateCommand="UPDATE [CARI_GIDER_GRUP] SET [ADI] = @ADI WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ADI" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ADI" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcecarihareketleri" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" DeleteCommand="DELETE FROM [CARI_HAREKETLERI] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CARI_HAREKETLERI] ([TARIH], [FIS_TIPI], [FIS_NO], [TUTAR], [ODEME_DURUMU], [MAKBUZ_NO], [ACIKLAMA]) VALUES (@TARIH, @FIS_TIPI, @FIS_NO, @TUTAR, @ODEME_DURUMU, @MAKBUZ_NO, @ACIKLAMA)" SelectCommand="SELECT [ID], [TARIH], [FIS_TIPI], [FIS_NO], [TUTAR], [ODEME_DURUMU], [MAKBUZ_NO], [ACIKLAMA] FROM [CARI_HAREKETLERI] WHERE ([GIDER_ID] = @GIDER_ID)" UpdateCommand="UPDATE [CARI_HAREKETLERI] SET [TARIH] = @TARIH, [FIS_TIPI] = @FIS_TIPI, [FIS_NO] = @FIS_NO, [TUTAR] = @TUTAR, [ODEME_DURUMU] = @ODEME_DURUMU, [MAKBUZ_NO] = @MAKBUZ_NO, [ACIKLAMA] = @ACIKLAMA WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="FIS_TIPI" Type="String" />
                <asp:Parameter Name="FIS_NO" Type="String" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="ODEME_DURUMU" Type="String" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="GIDER_ID" SessionField="GIDER_ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="FIS_TIPI" Type="String" />
                <asp:Parameter Name="FIS_NO" Type="String" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="ODEME_DURUMU" Type="String" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h1>
</asp:Content>
