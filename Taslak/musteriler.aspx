<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="musteriler.aspx.cs" Inherits="Taslak.musteriler" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Müşteri Kartları<dx:ASPxGridView Width="100%" ID="ASPxGridViewmusteriler" runat="server" DataSourceID="SqlDataSourcemusteriler" AutoGenerateColumns="False" KeyFieldName="ID">
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <Settings HorizontalScrollBarMode="Auto" ShowFooter="True" />
        <SettingsDetail ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
        <SettingsContextMenu EnableColumnMenu="True" EnableFooterMenu="True" EnableRowMenu="True">
        </SettingsContextMenu>
        <Templates>
            <DetailRow>
                <dx:ASPxGridView Width="100%"  ID="ASPxGridViewhareketler" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcemusterihareketleri" KeyFieldName="ID" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect" Theme="Aqua">
                    <SettingsEditing Mode="PopupEditForm">
                    </SettingsEditing>
                    <Settings HorizontalScrollBarMode="Auto" />
                    <Settings VerticalScrollBarMode="Auto" />
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="FIS_TIPI" ShowInCustomizationForm="True" VisibleIndex="2" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="TARIH" ShowInCustomizationForm="True" VisibleIndex="5">
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="FIS_NO" ShowInCustomizationForm="True" VisibleIndex="6">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="KM" ShowInCustomizationForm="True" VisibleIndex="7">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="TUTAR" ShowInCustomizationForm="True" VisibleIndex="9">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="ACIKLAMA" ShowInCustomizationForm="True" VisibleIndex="10">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn Caption="MÜŞTERİ ADI" FieldName="MUSTERI_ID" VisibleIndex="3">
                            <PropertiesComboBox DataSourceID="SqlDataSourcemusteriler" TextField="ADI" ValueField="ID">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="PLAKA" FieldName="PLAKA_ID" VisibleIndex="4">
                            <PropertiesComboBox DataSourceID="SqlDataSourcearaclar" TextField="PLAKA" ValueField="ID">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="SERVIS_SURESI" VisibleIndex="8">
                            <PropertiesComboBox>
                                <Items>
                                    <dx:ListEditItem Text="3 AY" Value="3 AY" />
                                    <dx:ListEditItem Text="6 AY" Value="6 AY" />
                                    <dx:ListEditItem Text="1 SENE" Value="1 SENE" />
                                    <dx:ListEditItem Text="2 SENE" Value="2 SENE" />
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
                <PropertiesTextEdit>
                    <ValidationSettings>
                        <RequiredField IsRequired="True" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ADRES" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="IRTIBAT" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="TARIH" VisibleIndex="6">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="ACIKLAMA" VisibleIndex="7" Width="100%">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="GRUP" FieldName="GRUP_ID" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="SqlDataSourcemusterigrup" TextField="ADI" ValueField="ID">
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
        <asp:SqlDataSource ID="SqlDataSourcearaclar" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT [ID], [PLAKA] FROM [ARACLAR]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcemusterihareketleri" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT [ID], [FIS_TIPI], [MUSTERI_ID], [PLAKA_ID], [TARIH], [FIS_NO], [KM], [SERVIS_SURESI], [TUTAR], [ACIKLAMA] FROM [MUSTERI_HAREKETLERI] WHERE ([MUSTERI_ID] = @MUSTERI_ID)" DeleteCommand="DELETE FROM [MUSTERI_HAREKETLERI] WHERE [ID] = @ID" InsertCommand="INSERT INTO [MUSTERI_HAREKETLERI] ([YON], [GIRIS_TURU], [MUSTERI_ID], [ACIK_HESAP_ADI], [PLAKA_ID], [FIS_TIPI], [FIS_NO], [MAKBUZ_NO], [TARIH], [TUTAR], [ODEME_DURUMU], [KM], [SERVIS_SURESI], [ACIKLAMA], [KAYDEDEN], [GUNCELLEYEN], [KAYIT_TARIHI], [GUNCELLEME_TARIHI]) VALUES (@YON, @GIRIS_TURU, @MUSTERI_ID, @ACIK_HESAP_ADI, @PLAKA_ID, @FIS_TIPI, @FIS_NO, @MAKBUZ_NO, @TARIH, @TUTAR, @ODEME_DURUMU, @KM, @SERVIS_SURESI, @ACIKLAMA, @KAYDEDEN, @GUNCELLEYEN, @KAYIT_TARIHI, @GUNCELLEME_TARIHI)" UpdateCommand="UPDATE [MUSTERI_HAREKETLERI] SET [YON] = @YON, [GIRIS_TURU] = @GIRIS_TURU, [MUSTERI_ID] = @MUSTERI_ID, [ACIK_HESAP_ADI] = @ACIK_HESAP_ADI, [PLAKA_ID] = @PLAKA_ID, [FIS_TIPI] = @FIS_TIPI, [FIS_NO] = @FIS_NO, [MAKBUZ_NO] = @MAKBUZ_NO, [TARIH] = @TARIH, [TUTAR] = @TUTAR, [ODEME_DURUMU] = @ODEME_DURUMU, [KM] = @KM, [SERVIS_SURESI] = @SERVIS_SURESI, [ACIKLAMA] = @ACIKLAMA, [KAYDEDEN] = @KAYDEDEN, [GUNCELLEYEN] = @GUNCELLEYEN, [KAYIT_TARIHI] = @KAYIT_TARIHI, [GUNCELLEME_TARIHI] = @GUNCELLEME_TARIHI WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="YON" Type="String" />
                <asp:Parameter Name="GIRIS_TURU" Type="String" />
                <asp:Parameter Name="MUSTERI_ID" Type="Int32" />
                <asp:Parameter Name="ACIK_HESAP_ADI" Type="String" />
                <asp:Parameter Name="PLAKA_ID" Type="Int32" />
                <asp:Parameter Name="FIS_TIPI" Type="String" />
                <asp:Parameter Name="FIS_NO" Type="String" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="ODEME_DURUMU" Type="String" />
                <asp:Parameter Name="KM" Type="String" />
                <asp:Parameter Name="SERVIS_SURESI" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
                <asp:Parameter Name="KAYDEDEN" Type="String" />
                <asp:Parameter Name="GUNCELLEYEN" Type="String" />
                <asp:Parameter DbType="Date" Name="KAYIT_TARIHI" />
                <asp:Parameter DbType="Date" Name="GUNCELLEME_TARIHI" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="MUSTERI_ID" SessionField="MUSTERI_ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="YON" Type="String" />
                <asp:Parameter Name="GIRIS_TURU" Type="String" />
                <asp:Parameter Name="MUSTERI_ID" Type="Int32" />
                <asp:Parameter Name="ACIK_HESAP_ADI" Type="String" />
                <asp:Parameter Name="PLAKA_ID" Type="Int32" />
                <asp:Parameter Name="FIS_TIPI" Type="String" />
                <asp:Parameter Name="FIS_NO" Type="String" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="ODEME_DURUMU" Type="String" />
                <asp:Parameter Name="KM" Type="String" />
                <asp:Parameter Name="SERVIS_SURESI" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
                <asp:Parameter Name="KAYDEDEN" Type="String" />
                <asp:Parameter Name="GUNCELLEYEN" Type="String" />
                <asp:Parameter DbType="Date" Name="KAYIT_TARIHI" />
                <asp:Parameter DbType="Date" Name="GUNCELLEME_TARIHI" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcemusterigrup" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT * FROM [MUSTERI_GRUP]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcemusteriler" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" DeleteCommand="DELETE FROM [MUSTERI_KARTLARI] WHERE [ID] = @ID" InsertCommand="INSERT INTO [MUSTERI_KARTLARI] ([ADI], [GRUP_ID], [ADRES], [IRTIBAT], [TARIH], [ACIKLAMA]) VALUES (@ADI, @GRUP_ID, @ADRES, @IRTIBAT, @TARIH, @ACIKLAMA)" SelectCommand="SELECT * FROM [MUSTERI_KARTLARI]" UpdateCommand="UPDATE [MUSTERI_KARTLARI] SET [ADI] = @ADI, [GRUP_ID] = @GRUP_ID, [ADRES] = @ADRES, [IRTIBAT] = @IRTIBAT, [TARIH] = @TARIH, [ACIKLAMA] = @ACIKLAMA WHERE [ID] = @ID">
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
    </h1>
</asp:Content>
