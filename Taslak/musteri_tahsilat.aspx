<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="musteri_tahsilat.aspx.cs" Inherits="Taslak.musteri_tahsilat" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Müşteri Tahsilatı<dx:ASPxGridView Width="100%" ID="ASPxGridViewmusteriler" runat="server" DataSourceID="SqlDataSourcemusterihareketleri" AutoGenerateColumns="False" KeyFieldName="ID">
        <Settings />
        <Settings HorizontalScrollBarMode="Auto" ShowFooter="True" />
        <SettingsDetail AllowOnlyOneMasterRowExpanded="True" />
        <SettingsContextMenu EnableColumnMenu="True" EnableFooterMenu="True" EnableRowMenu="True">
        </SettingsContextMenu>
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
            <dx:GridViewDataDateColumn FieldName="TARIH" VisibleIndex="3">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="TUTAR" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="MAKBUZ_NO" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ACIKLAMA" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="MÜŞTERİ ADI" FieldName="MUSTERI_ID" VisibleIndex="2">
                <PropertiesComboBox DataSourceID="SqlDataSourcemusterikartlari" TextField="ADI" ValueField="ID">
                    <ValidationSettings>
                        <RequiredField IsRequired="True" />
                    </ValidationSettings>
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
        <asp:SqlDataSource ID="SqlDataSourcemusterikartlari" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT * FROM [MUSTERI_KARTLARI]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcemusterihareketleri" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" DeleteCommand="DELETE FROM [MUSTERI_HAREKETLERI] WHERE [ID] = @ID" InsertCommand="INSERT INTO [MUSTERI_HAREKETLERI] ([MUSTERI_ID], [TARIH], [TUTAR], [MAKBUZ_NO], [ACIKLAMA],[YON],[GIRIS_TURU],[FIS_TIPI],[KAYIT_TARIHI]) VALUES (@MUSTERI_ID, @TARIH, @TUTAR, @MAKBUZ_NO, @ACIKLAMA,'GIRIS','MUSTERI TAHSILAT','MUSTERI TAHSILAT',GETDATE())" SelectCommand="SELECT [ID], [MUSTERI_ID], [TARIH], [TUTAR], [MAKBUZ_NO], [ACIKLAMA] FROM [MUSTERI_HAREKETLERI] WHERE FIS_TIPI='MUSTERI TAHSILAT'" UpdateCommand="UPDATE [MUSTERI_HAREKETLERI] SET [MUSTERI_ID] = @MUSTERI_ID, [TARIH] = @TARIH, [TUTAR] = @TUTAR, [MAKBUZ_NO] = @MAKBUZ_NO, [ACIKLAMA] = @ACIKLAMA , [GUNCELLEME_TARIHI] = GETDATE() WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MUSTERI_ID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MUSTERI_ID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h1>
</asp:Content>
