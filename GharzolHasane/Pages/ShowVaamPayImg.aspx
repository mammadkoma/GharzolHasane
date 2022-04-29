<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowVaamPayImg.aspx.cs" Inherits="GharzolHasane.Pages.ShowVaamPayImg" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="dsVaamPayImg">
            <Columns>
                <dx:GridViewDataBinaryImageColumn Caption=" " FieldName="Image" VisibleIndex="1">
                </dx:GridViewDataBinaryImageColumn>
            </Columns>
            <SettingsPager Visible="False">
            </SettingsPager>
            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="dsVaamPayImg" runat="server" ConnectionString="<%$ ConnectionStrings:GharzolHasane_CS %>" ProviderName="<%$ ConnectionStrings:GharzolHasane_CS.ProviderName %>" SelectCommand="select Image from VaamPayTb (nolock) where VaamPayID=@VaamPayID">
            <SelectParameters>
                <asp:SessionParameter Name="VaamPayID" SessionField="VaamPayID" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
