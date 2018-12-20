<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="acik_hesap_tahsilat.aspx.cs" Inherits="Taslak.acik_hesap_tahsilat" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Açık Hesap Tahsilatı<dx:ASPxGridView Width="100%" ID="ASPxGridViewmusteriler" runat="server" DataSourceID="SqlDataSourcehareketler" AutoGenerateColumns="False" KeyFieldName="ID">
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
            <dx:GridViewDataTextColumn FieldName="ACIK_HESAP_ADI" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="TARIH" VisibleIndex="3">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="TUTAR" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="MAKBUZ_NO" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ACIKLAMA" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
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
        <asp:SqlDataSource ID="SqlDataSourcehareketler" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" DeleteCommand="DELETE FROM [MUSTERI_HAREKETLERI] WHERE [ID] = @ID" InsertCommand="INSERT INTO [MUSTERI_HAREKETLERI] ([ACIK_HESAP_ADI], [TARIH], [TUTAR], [MAKBUZ_NO], [ACIKLAMA],[YON],[GIRIS_TURU],[FIS_TIPI],[KAYIT_TARIHI]) VALUES (@ACIK_HESAP_ADI, @TARIH, @TUTAR, @MAKBUZ_NO, @ACIKLAMA,'GIRIS','ACIK HESAP TAHSILAT','ACIK HESAP TAHSILAT',GETDATE())" SelectCommand="SELECT [ID], [ACIK_HESAP_ADI], [TARIH], [TUTAR], [MAKBUZ_NO], [ACIKLAMA] FROM [MUSTERI_HAREKETLERI] WHERE [FIS_TIPI]='ACIK HESAP TAHSILAT'" UpdateCommand="UPDATE [MUSTERI_HAREKETLERI] SET [ACIK_HESAP_ADI] = @ACIK_HESAP_ADI, [TARIH] = @TARIH, [TUTAR] = @TUTAR, [MAKBUZ_NO] = @MAKBUZ_NO, [ACIKLAMA] = @ACIKLAMA, [GUNCELLEME_TARIHI] = GETDATE() WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ACIK_HESAP_ADI" Type="String" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ACIK_HESAP_ADI" Type="String" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="MAKBUZ_NO" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h1>
</asp:Content>
