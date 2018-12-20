<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="departman_kartlari.aspx.cs" Inherits="Taslak.departman_kartlari" %>


<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Departman Kartları<dx:ASPxGridView Width="100%" ID="ASPxGridViewmusteriler" runat="server" DataSourceID="SqlDataSourcedepartmankartlari" AutoGenerateColumns="False" KeyFieldName="ID">
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
            <dx:GridViewDataTextColumn FieldName="ADI" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="ŞİRKET ADI" FieldName="SIRKET_ID" VisibleIndex="2">
                <PropertiesComboBox DataSourceID="SqlDataSourcesirketkartlari" TextField="ADI" ValueField="ID">
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
        <asp:SqlDataSource ID="SqlDataSourcedepartmankartlari" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT * FROM [DEPARTMANLAR]" DeleteCommand="DELETE FROM [DEPARTMANLAR] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DEPARTMANLAR] ([SIRKET_ID], [ADI]) VALUES (@SIRKET_ID, @ADI)" UpdateCommand="UPDATE [DEPARTMANLAR] SET [SIRKET_ID] = @SIRKET_ID, [ADI] = @ADI WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SIRKET_ID" Type="Int32" />
                <asp:Parameter Name="ADI" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SIRKET_ID" Type="Int32" />
                <asp:Parameter Name="ADI" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourcesirketkartlari" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT * FROM [SIRKETLER]"></asp:SqlDataSource>
    </h1>
</asp:Content>
