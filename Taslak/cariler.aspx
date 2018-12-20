<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cariler.aspx.cs" Inherits="Taslak.cariler" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Cari Kartları<dx:ASPxGridView Width="100%" ID="ASPxGridViewmusteriler" runat="server" DataSourceID="SqlDataSourcecarikartlari" AutoGenerateColumns="False" KeyFieldName="ID">
        <Settings />
        <Settings HorizontalScrollBarMode="Auto" ShowFooter="True" />
        <SettingsDetail ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
        <SettingsContextMenu EnableColumnMenu="True" EnableFooterMenu="True" EnableRowMenu="True">
        </SettingsContextMenu>
        <Templates>
            <DetailRow>
                <dx:ASPxGridView Width="100%"  ID="ASPxGridViewhareketler" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcecarihareketleri" KeyFieldName="ID" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect" Theme="Aqua">
                    <SettingsEditing Mode="PopupEditForm">
                    </SettingsEditing>
                    <Settings HorizontalScrollBarMode="Auto" />
                    <Settings VerticalScrollBarMode="Auto" />
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="TARIH" VisibleIndex="3">
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="FIS_NO" VisibleIndex="5">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="TUTAR" VisibleIndex="6">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="MAKBUZ_NO" VisibleIndex="8">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="ACIKLAMA" VisibleIndex="9">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="FIS_TIPI" ReadOnly="True" VisibleIndex="4">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn Caption="CARİ ADI" FieldName="CARI_ID" VisibleIndex="2">
                            <PropertiesComboBox DataSourceID="SqlDataSourcecarikartlari" TextField="ADI" ValueField="ID">
                                <ValidationSettings>
                                    <RequiredField IsRequired="True" />
                                </ValidationSettings>
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="ODEME_DURUMU" VisibleIndex="7">
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
        <Settings VerticalScrollBarMode="Auto" ShowGroupButtons="False" />
        <SettingsSearchPanel Visible="True" />
        <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="WYSIWYG" Landscape="True" />
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ADI" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ADRES" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="IRTIBAT" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="TARIH" VisibleIndex="6">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="ACIKLAMA" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="GRUP ADI" FieldName="GRUP_ID" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="SqlDataSourcecarigrupkarti" TextField="ADI" ValueField="ID">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
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
        <asp:SqlDataSource ID="SqlDataSourcecarigrupkarti" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT * FROM [CARI_GRUP]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcecarikartlari" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" DeleteCommand="DELETE FROM [CARI_KARTLARI] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CARI_KARTLARI] ([ADI], [GRUP_ID], [ADRES], [IRTIBAT], [TARIH], [ACIKLAMA]) VALUES (@ADI, @GRUP_ID, @ADRES, @IRTIBAT, @TARIH, @ACIKLAMA)" SelectCommand="SELECT * FROM [CARI_KARTLARI]" UpdateCommand="UPDATE [CARI_KARTLARI] SET [ADI] = @ADI, [GRUP_ID] = @GRUP_ID, [ADRES] = @ADRES, [IRTIBAT] = @IRTIBAT, [TARIH] = @TARIH, [ACIKLAMA] = @ACIKLAMA WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ADI" Type="String" />
                <asp:Parameter Name="GRUP_ID" Type="Int32" />
                <asp:Parameter Name="ADRES" Type="String" />
                <asp:Parameter Name="IRTIBAT" Type="String" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ADI" Type="String" />
                <asp:Parameter Name="GRUP_ID" Type="Int32" />
                <asp:Parameter Name="ADRES" Type="String" />
                <asp:Parameter Name="IRTIBAT" Type="String" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcecarihareketleri" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" DeleteCommand="DELETE FROM [CARI_HAREKETLERI] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CARI_HAREKETLERI] ([CARI_ID], [TARIH], [FIS_NO], [TUTAR], [ODEME_DURUMU], [MAKBUZ_NO], [ACIKLAMA], [FIS_TIPI]) VALUES (@CARI_ID, @TARIH, @FIS_NO, @TUTAR, @ODEME_DURUMU, @MAKBUZ_NO, @ACIKLAMA, @FIS_TIPI)" SelectCommand="SELECT [ID], [CARI_ID], [TARIH], [FIS_NO], [TUTAR], [ODEME_DURUMU], [MAKBUZ_NO], [ACIKLAMA], [FIS_TIPI] FROM [CARI_HAREKETLERI] WHERE ([CARI_ID] = @CARI_ID)" UpdateCommand="UPDATE [CARI_HAREKETLERI] SET [CARI_ID] = @CARI_ID, [TARIH] = @TARIH, [FIS_NO] = @FIS_NO, [TUTAR] = @TUTAR, [ODEME_DURUMU] = @ODEME_DURUMU, [MAKBUZ_NO] = @MAKBUZ_NO, [ACIKLAMA] = @ACIKLAMA, [FIS_TIPI] = @FIS_TIPI WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CARI_ID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="FIS_NO" Type="String" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="ODEME_DURUMU" Type="String" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
                <asp:Parameter Name="FIS_TIPI" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="CARI_ID" SessionField="CARI_ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CARI_ID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="FIS_NO" Type="String" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="ODEME_DURUMU" Type="String" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
                <asp:Parameter Name="FIS_TIPI" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h1>
</asp:Content>
