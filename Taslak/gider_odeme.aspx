<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gider_odeme.aspx.cs" Inherits="Taslak.gider_odeme" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Gider Ödeme<dx:ASPxGridView Width="100%" ID="ASPxGridViewmusteriler" runat="server" DataSourceID="SqlDataSourcehareketler" AutoGenerateColumns="False" KeyFieldName="ID">
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
            <dx:GridViewDataTextColumn FieldName="FIS_NO" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ACIKLAMA" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="GİDER ADI" FieldName="GIDER_ID" VisibleIndex="2">
                <PropertiesComboBox DataSourceID="SqlDataSourcegiderkartlari" TextField="ADI" ValueField="ID">
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
        <asp:SqlDataSource ID="SqlDataSourcegiderkartlari" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT * FROM [CARI_GIDER_GRUP]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcehareketler" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" DeleteCommand="DELETE FROM [CARI_HAREKETLERI] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CARI_HAREKETLERI] ([GIDER_ID], [TARIH], [TUTAR], [FIS_NO], [ACIKLAMA],[YON],[CIKIS_TURU],[FIS_TIPI],[KAYIT_TARIHI]) VALUES (@GIDER_ID, @TARIH, @TUTAR, @FIS_NO, @ACIKLAMA,'CIKIS','GIDER ODEME','GIDER ODEME',GETDATE())" SelectCommand="SELECT [ID], [GIDER_ID], [TARIH], [TUTAR], [FIS_NO], [ACIKLAMA] FROM [CARI_HAREKETLERI] where [FIS_TIPI]='GIDER ODEME'" UpdateCommand="UPDATE [CARI_HAREKETLERI] SET [GIDER_ID] = @GIDER_ID, [TARIH] = @TARIH, [TUTAR] = @TUTAR, [FIS_NO] = @FIS_NO, [ACIKLAMA] = @ACIKLAMA WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="GIDER_ID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="FIS_NO" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="GIDER_ID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="TARIH" />
                <asp:Parameter Name="TUTAR" Type="Double" />
                <asp:Parameter Name="FIS_NO" Type="String" />
                <asp:Parameter Name="ACIKLAMA" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h1>
</asp:Content>
