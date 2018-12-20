<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="arac_kartlari.aspx.cs" Inherits="Taslak.arac_kartlari" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Araç Kartları<dx:ASPxGridView Width="100%" ID="ASPxGridViewmusteriler" runat="server" DataSourceID="SqlDataSourcearaclar" AutoGenerateColumns="False" KeyFieldName="ID">
        <Settings HorizontalScrollBarMode="Auto" ShowFooter="True" />
        <Settings VerticalScrollBarMode="Auto" ShowGroupButtons="False" />
        <SettingsDetail ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
        <SettingsContextMenu EnableColumnMenu="True" EnableFooterMenu="True" EnableRowMenu="True">
        </SettingsContextMenu>
        <Templates>
            <DetailRow>
                <dx:ASPxGridView Width="100%"  ID="ASPxGridViewhareketler" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcehareketler" KeyFieldName="ID" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect" Theme="Aqua">
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
                        <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="TARIH" VisibleIndex="2">
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="KM" VisibleIndex="4">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="ACIKLAMA" VisibleIndex="6">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="FIS_NO" VisibleIndex="7">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="TUTAR" VisibleIndex="8">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="MAKBUZ_NO" VisibleIndex="10">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn Caption="MÜŞTERİ ADI" FieldName="MUSTERI_ID" VisibleIndex="3">
                            <PropertiesComboBox DataSourceID="SqlDataSourcemusterikartlari" TextField="ADI" ValueField="ID">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="SERVIS_SURESI" VisibleIndex="5">
                            <PropertiesComboBox>
                                <Items>
                                    <dx:ListEditItem Text="3 AY" Value="3 AY" />
                                    <dx:ListEditItem Text="6 AY" Value="6 AY" />
                                    <dx:ListEditItem Text="1 SENE" Value="1 SENE" />
                                    <dx:ListEditItem Text="2 SENE" Value="2 SENE" />
                                </Items>
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="ODEME_DURUMU" VisibleIndex="9">
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
            <dx:GridViewDataTextColumn FieldName="PLAKA" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="MARKA" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="MODEL" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="MODELYIL" VisibleIndex="6">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="RENK" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="TARIH" VisibleIndex="8">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataComboBoxColumn Caption="MÜŞTERİ ADI" FieldName="MUSTERI_ID" VisibleIndex="2">
                <PropertiesComboBox DataSourceID="SqlDataSourcemusterikartlari" TextField="ADI" ValueField="ID">
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
        <asp:SqlDataSource ID="SqlDataSourcearaclar" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" DeleteCommand="DELETE FROM [ARACLAR] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ARACLAR] ([MUSTERI_ID], [PLAKA], [MARKA], [MODEL], [MODELYIL], [RENK], [TARIH]) VALUES (@MUSTERI_ID, @PLAKA, @MARKA, @MODEL, @MODELYIL, @RENK, @TARIH)" SelectCommand="SELECT * FROM [ARACLAR]" UpdateCommand="UPDATE [ARACLAR] SET [MUSTERI_ID] = @MUSTERI_ID, [PLAKA] = @PLAKA, [MARKA] = @MARKA, [MODEL] = @MODEL, [MODELYIL] = @MODELYIL, [RENK] = @RENK, [TARIH] = @TARIH WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MUSTERI_ID" Type="Int32" />
                <asp:Parameter Name="PLAKA" Type="String" />
                <asp:Parameter Name="MARKA" Type="String" />
                <asp:Parameter Name="MODEL" Type="String" />
                <asp:Parameter DbType="Date" Name="MODELYIL" />
                <asp:Parameter Name="RENK" Type="String" />
                <asp:Parameter DbType="Date" Name="TARIH" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MUSTERI_ID" Type="Int32" />
                <asp:Parameter Name="PLAKA" Type="String" />
                <asp:Parameter Name="MARKA" Type="String" />
                <asp:Parameter Name="MODEL" Type="String" />
                <asp:Parameter DbType="Date" Name="MODELYIL" />
                <asp:Parameter Name="RENK" Type="String" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcemusterikartlari" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT * FROM [MUSTERI_KARTLARI]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcehareketler" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" DeleteCommand="DELETE FROM [MUSTERI_HAREKETLERI] WHERE [ID] = @ID" InsertCommand="INSERT INTO [MUSTERI_HAREKETLERI] ([TARIH], [MUSTERI_ID], [KM], [SERVIS_SURESI], [ACIKLAMA], [FIS_NO], [TUTAR], [ODEME_DURUMU], [MAKBUZ_NO]) VALUES (@TARIH, @MUSTERI_ID, @KM, @SERVIS_SURESI, @ACIKLAMA, @FIS_NO, @TUTAR, @ODEME_DURUMU, @MAKBUZ_NO)" SelectCommand="SELECT [ID], [TARIH], [MUSTERI_ID], [KM], [SERVIS_SURESI], [ACIKLAMA], [FIS_NO], [TUTAR], [ODEME_DURUMU], [MAKBUZ_NO] FROM [MUSTERI_HAREKETLERI] WHERE ([PLAKA_ID] = @PLAKA_ID)" UpdateCommand="UPDATE [MUSTERI_HAREKETLERI] SET [TARIH] = @TARIH, [MUSTERI_ID] = @MUSTERI_ID, [KM] = @KM, [SERVIS_SURESI] = @SERVIS_SURESI, [ACIKLAMA] = @ACIKLAMA, [FIS_NO] = @FIS_NO, [TUTAR] = @TUTAR, [ODEME_DURUMU] = @ODEME_DURUMU, [MAKBUZ_NO] = @MAKBUZ_NO WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="MUSTERI_ID" Type="Int32" />
                <asp:Parameter Name="KM" Type="String" />
                <asp:Parameter Name="SERVIS_SURESI" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
                <asp:Parameter Name="FIS_NO" Type="String" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="ODEME_DURUMU" Type="String" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="PLAKA_ID" SessionField="PLAKA_ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="MUSTERI_ID" Type="Int32" />
                <asp:Parameter Name="KM" Type="String" />
                <asp:Parameter Name="SERVIS_SURESI" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
                <asp:Parameter Name="FIS_NO" Type="String" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="ODEME_DURUMU" Type="String" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h1>
</asp:Content>
