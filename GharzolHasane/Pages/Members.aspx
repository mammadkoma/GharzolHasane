<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="GharzolHasane.Pages.Members" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript" type="text/javascript">
        function shDlg(hrefLnk) { var rv = window.showModalDialog(hrefLnk, '', "dialogHeight:200px;dialogWidth:500px;center:yes;resizable=no"); }
        function shDlg2(hrefLnk) { var rv = window.showModalDialog(hrefLnk, '', "dialogHeight:800px;dialogWidth:800px;center:yes"); }
        function shDlgNewBrowsers(page) {
            var wnd = window.open(page, '_blank', 'height=200,width=500');
            wnd.onbeforeunload = function () { gv.PerformCallback(); }
        }
        function shDlgNewBrowsers_VaamPayImg(page) {
            var wnd = window.open(page, '_blank', 'height=200,width=500');
            wnd.onbeforeunload = function () { gvVaamPay.PerformCallback(); }
        }
        function shDlgNewBrowsers_CheckImg(page) {
            debugger
            var wnd = window.open(page, '_blank', 'height=200,width=500');
            wnd.onbeforeunload = function () { gvVaam.PerformCallback(); }
        }
        function shDlgNewBrowsers_NewTab(page) {
            var wnd = window.open(page, '_blank');
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dialog id="myDialog">
        Foo bar
    <button id="hide">Close</button>
    </dialog>
    <p>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ds_Members" KeyFieldName="MemberID" Theme="Aqua" OnHtmlRowPrepared="ASPxGridView1_HtmlRowPrepared" ClientInstanceName="gv" OnCustomCallback="ASPxGridView1_CustomCallback">
            <Columns>
                <dx:GridViewCommandColumn Caption=" " ShowNewButtonInHeader="True" VisibleIndex="0" ShowEditButton="True" ShowInCustomizationForm="True">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="MemberID" ReadOnly="True" Visible="False" VisibleIndex="1" ShowInCustomizationForm="True">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="FullName" VisibleIndex="3" Caption="نام و نام خانوادگی" ShowInCustomizationForm="True">
                    <PropertiesTextEdit>
                        <ValidationSettings>
                            <RequiredField IsRequired="True" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CodeMelli" VisibleIndex="5" Caption="کد ملی" ShowInCustomizationForm="True">
                    <PropertiesTextEdit>
                        <MaskSettings Mask="0000000000" />
                    </PropertiesTextEdit>
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Tel" VisibleIndex="6" Caption=" تلفن ثابت " ShowInCustomizationForm="True">
                    <PropertiesTextEdit>
                        <MaskSettings Mask="00000000000" />
                    </PropertiesTextEdit>
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Mbl" VisibleIndex="7" Caption=" تلفن همراه " ShowInCustomizationForm="True">
                    <PropertiesTextEdit>
                        <MaskSettings Mask="00000000000" />
                    </PropertiesTextEdit>
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تاریخ ثبت" FieldName="InsertDate" VisibleIndex="8">
                    <PropertiesTextEdit DisplayFormatString="d">
                    </PropertiesTextEdit>
                    <Settings AutoFilterCondition="Contains" />
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="تاریخ آخرین ویرایش" FieldName="UpdateDate" VisibleIndex="9">
                    <PropertiesTextEdit DisplayFormatString="d">
                    </PropertiesTextEdit>
                    <Settings AutoFilterCondition="Contains" />
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn VisibleIndex="10">
                    <EditFormSettings Visible="False" />
                    <DataItemTemplate>
                        <dx:ASPxButton ID="btnUplSignImage" runat="server" AutoPostBack="False" Text="افزودن تصویر">
                        </dx:ASPxButton>
                        <%--                        <dx:ASPxButton ID="btnShowSignImg" runat="server" AutoPostBack="False" Text="مشاهده امضاء">
                        </dx:ASPxButton>--%>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="LenSignImage" Visible="False" VisibleIndex="11">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="شماره حساب" FieldName="DaftarCode" VisibleIndex="4">
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataBinaryImageColumn Caption="تصویر" FieldName="SignImage" VisibleIndex="2">
                    <PropertiesBinaryImage ImageWidth="50px">
                    </PropertiesBinaryImage>
                </dx:GridViewDataBinaryImageColumn>
            </Columns>
            <SettingsBehavior ConfirmDelete="True" />
            <SettingsPager PageSize="10">
                <Summary Text="صفحه {0} از {1} ({2} نفر)" />
            </SettingsPager>
            <Settings ShowFilterRow="True" />
            <SettingsText CommandCancel=" انصراف " CommandDelete=" حذف " CommandEdit=" ویرایش " CommandNew=" جدید " CommandUpdate=" ذخیره " ConfirmDelete=" حذف شود ؟ " />
            <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
            <Styles>
                <Header HorizontalAlign="Center">
                </Header>
                <Cell HorizontalAlign="Center">
                </Cell>
            </Styles>
            <Templates>
                <DetailRow>
                    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="1" RightToLeft="True">
                        <TabPages>
                            <dx:TabPage Text="حق عضویت">
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ds_MemberPayTb" KeyFieldName="MemberPayID" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect" RightToLeft="True">
                                            <TotalSummary>
                                                <dx:ASPxSummaryItem DisplayFormat="n0" FieldName="Amount" ShowInColumn="مبلغ به ریال" ShowInGroupFooterColumn="مبلغ به ریال" SummaryType="Sum" ValueDisplayFormat="n0" />
                                            </TotalSummary>
                                            <Columns>
                                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                </dx:GridViewCommandColumn>
                                                <dx:GridViewDataTextColumn FieldName="MemberPayID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                    <EditFormSettings Visible="False" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="MemberID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="مبلغ به ریال" FieldName="Amount" ShowInCustomizationForm="True" VisibleIndex="3">
                                                    <PropertiesTextEdit DisplayFormatString="n0">
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="True" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                    <FooterCellStyle HorizontalAlign="Center">
                                                    </FooterCellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="تاریخ واریز" FieldName="PayDate" ShowInCustomizationForm="True" VisibleIndex="4">
                                                    <PropertiesTextEdit>
                                                        <MaskSettings Mask="0000/00/00" />
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="ساعت واریز" FieldName="PayTime" ShowInCustomizationForm="True" VisibleIndex="5">
                                                    <PropertiesTextEdit>
                                                        <MaskSettings Mask="00:00" />
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="شماره رسید بانکی" FieldName="BankNo" ShowInCustomizationForm="True" VisibleIndex="6">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="True" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="نام بانک" FieldName="BankName" ShowInCustomizationForm="True" VisibleIndex="7">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="True" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                            </Columns>
                                            <SettingsBehavior ConfirmDelete="True" />
                                            <Settings ShowFooter="True" />
                                            <SettingsText CommandCancel=" انصراف " CommandDelete=" حذف " CommandEdit=" ویرایش " CommandNew=" جدید " CommandUpdate=" ذخیره " ConfirmDelete=" حذف شود ؟ " />
                                            <Styles>
                                                <Header HorizontalAlign="Center">
                                                </Header>
                                                <Cell HorizontalAlign="Center">
                                                </Cell>
                                                <Footer HorizontalAlign="Center">
                                                </Footer>
                                            </Styles>
                                        </dx:ASPxGridView>
                                        <asp:SqlDataSource ID="ds_MemberPayTb" runat="server" ConnectionString="<%$ ConnectionStrings:GharzolHasane_CS %>" DeleteCommand="DELETE MemberPayTb WHERE MemberPayID=@MemberPayID" InsertCommand="INSERT MemberPayTb(MemberID,Amount,PayDate,PayTime,BankNo,BankName)
VALUES(@MemberID,@Amount,dbo.ToMiladiDate(@PayDate),@PayTime,@BankNo,@BankName)"
                                            ProviderName="<%$ ConnectionStrings:GharzolHasane_CS.ProviderName %>" SelectCommand="SELECT MemberPayID,MemberID,Amount,dbo.ToShamsiDate(PayDate)PayDate,PayTime,BankNo,BankName
FROM MemberPayTb (NOLOCK)
WHERE MemberID=@MemberID
ORDER BY PayDate DESC,PayTime DESC,MemberPayID DESC"
                                            UpdateCommand="UPDATE MemberPayTb SET Amount=@Amount,PayDate=dbo.ToMiladiDate(@PayDate),PayTime=@PayTime,BankNo=@BankNo,BankName=@BankName
WHERE MemberPayID=@MemberPayID">
                                            <DeleteParameters>
                                                <asp:Parameter Name="MemberPayID" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:SessionParameter Name="MemberID" SessionField="ThisMemberID" />
                                                <asp:Parameter Name="Amount" />
                                                <asp:Parameter Name="PayDate" />
                                                <asp:Parameter Name="PayTime" />
                                                <asp:Parameter Name="BankNo" />
                                                <asp:Parameter Name="BankName" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:SessionParameter Name="MemberID" SessionField="ThisMemberID" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Amount" />
                                                <asp:Parameter Name="PayDate" />
                                                <asp:Parameter Name="PayTime" />
                                                <asp:Parameter Name="BankNo" />
                                                <asp:Parameter Name="BankName" />
                                                <asp:Parameter Name="MemberPayID" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            <dx:TabPage Text="  وام  ">
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        <dx:ASPxGridView ID="gvVaam" ClientInstanceName="gvVaam" runat="server" AutoGenerateColumns="False" DataSourceID="ds_Vaam" 
                                            KeyFieldName="VaamID" OnBeforePerformDataSelect="gvVaam_BeforePerformDataSelect" RightToLeft="True"
                                            OnCustomCallback="gvVaam_CustomCallback" OnHtmlRowPrepared="gvVaam_HtmlRowPrepared">
                                            <TotalSummary>
                                                <dx:ASPxSummaryItem DisplayFormat="n0" FieldName="Amount" ShowInColumn="مبلغ به ریال" ShowInGroupFooterColumn="مبلغ به ریال" SummaryType="Sum" ValueDisplayFormat="n0" />
                                            </TotalSummary>
                                            <Columns>
                                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                </dx:GridViewCommandColumn>
                                                <dx:GridViewDataTextColumn FieldName="VaamID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                    <EditFormSettings Visible="False" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="MemberID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="مبلغ به ریال" FieldName="Amount" ShowInCustomizationForm="True" VisibleIndex="4">
                                                    <PropertiesTextEdit DisplayFormatString="n0">
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="True" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                    <FooterCellStyle HorizontalAlign="Center">
                                                    </FooterCellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="تاریخ پرداخت" FieldName="PayDate" ShowInCustomizationForm="True" VisibleIndex="5">
                                                    <PropertiesTextEdit>
                                                        <MaskSettings Mask="0000/00/00" />
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="True" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="تعداد قسط" FieldName="TedadeGhest" ShowInCustomizationForm="True" VisibleIndex="7">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="True" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <%--<dx:GridViewDataComboBoxColumn Caption="نوع ضمانت" FieldName="NoeZemanat" ShowInCustomizationForm="True" VisibleIndex="99">
                                                    <PropertiesComboBox>
                                                        <Items>
                                                            <dx:ListEditItem Text="چک" Value="1" />
                                                            <dx:ListEditItem Text="سفته" Value="2" />
                                                        </Items>
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="True" />
                                                        </ValidationSettings>
                                                    </PropertiesComboBox>
                                                </dx:GridViewDataComboBoxColumn>--%>
                                                <dx:GridViewDataTextColumn Caption="شماره وام" FieldName="DaftarCode" ShowInCustomizationForm="True" VisibleIndex="3">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="True" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="تاریخ شروع اقساط" FieldName="StartPayDate" ShowInCustomizationForm="True" VisibleIndex="6">
                                                    <PropertiesTextEdit>
                                                        <MaskSettings Mask="0000/00/00" />
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="True" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="نام و نام خانوادگی ضامن" FieldName="ZamenFullName" ShowInCustomizationForm="True" VisibleIndex="8">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="False" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="کد ملی ضامن" FieldName="ZamenCodeMelli" ShowInCustomizationForm="True" VisibleIndex="9">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="False" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="موبایل ضامن" FieldName="ZamenMbl" ShowInCustomizationForm="True" VisibleIndex="10">
                                                    <PropertiesTextEdit>
                                                        <ValidationSettings>
                                                            <RequiredField IsRequired="False" />
                                                        </ValidationSettings>
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption=" " VisibleIndex="11">
                                                    <EditFormSettings Visible="False" />
                                                    <DataItemTemplate>
                                                        <dx:ASPxButton style="margin-bottom:5px" ID="btnCheckUpl" runat="server" AutoPostBack="False" Text="افزودن تصویر چک ضامن">
                                                        </dx:ASPxButton>
                                                        <br />
                                                        <dx:ASPxButton ID="btnShowCheckImg" runat="server" AutoPostBack="False" Text="مشاهده تصویر چک ضامن">
                                                        </dx:ASPxButton>
                                                    </DataItemTemplate>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataBinaryImageColumn Caption="تصویر چک ضامن" FieldName="ZamenCheckImage" VisibleIndex="12">
                                                    <PropertiesBinaryImage ImageWidth="100px">
                                                    </PropertiesBinaryImage>
                                                    <EditFormSettings Visible="False" />
                                                </dx:GridViewDataBinaryImageColumn>
                                            </Columns>
                                            <SettingsBehavior ConfirmDelete="True" />
                                            <Settings ShowFooter="True" />
                                            <SettingsText CommandCancel=" انصراف " CommandDelete=" حذف " CommandEdit=" ویرایش " CommandNew=" جدید " CommandUpdate=" ذخیره " ConfirmDelete=" حذف شود ؟ " />
                                            <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                            <Styles>
                                                <Header HorizontalAlign="Center">
                                                </Header>
                                                <Cell HorizontalAlign="Center">
                                                </Cell>
                                                <Footer HorizontalAlign="Center">
                                                </Footer>
                                            </Styles>
                                            <Templates>
                                                <DetailRow>
                                                    <dx:ASPxGridView ID="gvVaamPay" runat="server" AutoGenerateColumns="False" DataSourceID="ds_VaamPay" KeyFieldName="VaamPayID" OnBeforePerformDataSelect="gvVaamPay_BeforePerformDataSelect" RightToLeft="True" ClientInstanceName="gvVaamPay" OnCustomCallback="gvVaamPay_CustomCallback" OnHtmlRowPrepared="gvVaamPay_HtmlRowPrepared">
                                                        <TotalSummary>
                                                            <dx:ASPxSummaryItem DisplayFormat="n0" FieldName="Amount" ShowInColumn="مبلغ به ریال" ShowInGroupFooterColumn="مبلغ به ریال" SummaryType="Sum" ValueDisplayFormat="n0" />
                                                        </TotalSummary>
                                                        <Columns>
                                                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                            </dx:GridViewCommandColumn>
                                                            <dx:GridViewDataTextColumn FieldName="VaamPayID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                <EditFormSettings Visible="False" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="VaamID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="مبلغ به ریال" FieldName="Amount" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                <PropertiesTextEdit DisplayFormatString="n0">
                                                                    <ValidationSettings>
                                                                        <RequiredField IsRequired="True" />
                                                                    </ValidationSettings>
                                                                </PropertiesTextEdit>
                                                                <FooterCellStyle HorizontalAlign="Center">
                                                                </FooterCellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="تاریخ واریز" FieldName="PayDate" ShowInCustomizationForm="True" VisibleIndex="4">
                                                                <PropertiesTextEdit>
                                                                    <MaskSettings Mask="0000/00/00" />
                                                                </PropertiesTextEdit>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="ساعت واریز" FieldName="PayTime" ShowInCustomizationForm="True" VisibleIndex="5">
                                                                <PropertiesTextEdit>
                                                                    <MaskSettings Mask="00:00" />
                                                                </PropertiesTextEdit>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="شماره رسید بانکی" FieldName="BankNo" ShowInCustomizationForm="True" VisibleIndex="6">
                                                                <PropertiesTextEdit>
                                                                    <ValidationSettings>
                                                                        <RequiredField IsRequired="True" />
                                                                    </ValidationSettings>
                                                                </PropertiesTextEdit>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="نام بانک" FieldName="BankName" ShowInCustomizationForm="True" VisibleIndex="7">
                                                                <PropertiesTextEdit>
                                                                    <ValidationSettings>
                                                                        <RequiredField IsRequired="True" />
                                                                    </ValidationSettings>
                                                                </PropertiesTextEdit>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption=" " VisibleIndex="8">
                                                                <EditFormSettings Visible="False" />
                                                                <DataItemTemplate>
                                                                    <dx:ASPxButton style="margin-bottom:5px" ID="btnVaamPayUpl" runat="server" AutoPostBack="False" Text="افزودن تصویر">
                                                                    </dx:ASPxButton>
                                                                    <br />
                                                                    <dx:ASPxButton ID="btnShowVaamPayImg" runat="server" AutoPostBack="False" Text="مشاهده تصویر">
                                                                    </dx:ASPxButton>
                                                                </DataItemTemplate>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataBinaryImageColumn Caption="تصویر" FieldName="Image" VisibleIndex="10">
                                                                <PropertiesBinaryImage ImageWidth="100px">
                                                                </PropertiesBinaryImage>
                                                                <EditFormSettings Visible="False" />
                                                            </dx:GridViewDataBinaryImageColumn>
                                                        </Columns>
                                                        <SettingsBehavior ConfirmDelete="True" />
                                                        <Settings ShowFooter="True" />
                                                        <SettingsText CommandCancel=" انصراف " CommandDelete=" حذف " CommandEdit=" ویرایش " CommandNew=" جدید " CommandUpdate=" ذخیره " ConfirmDelete=" حذف شود ؟ " />
                                                        <Styles>
                                                            <Header HorizontalAlign="Center">
                                                            </Header>
                                                            <Cell HorizontalAlign="Center">
                                                            </Cell>
                                                            <Footer HorizontalAlign="Center">
                                                            </Footer>
                                                        </Styles>
                                                    </dx:ASPxGridView>
                                                    <asp:SqlDataSource ID="ds_VaamPay" runat="server" ConnectionString="<%$ ConnectionStrings:GharzolHasane_CS %>" 
                                                        DeleteCommand="DELETE dbo.VaamPayTb WHERE VaamPayID=@VaamPayID" InsertCommand="INSERT VaamPayTb(VaamID,Amount,PayDate,PayTime,BankNo,BankName)
VALUES(@VaamID,@Amount,dbo.ToMiladiDate(@PayDate),@PayTime,@BankNo,@BankName)
"
                                                        ProviderName="<%$ ConnectionStrings:GharzolHasane_CS.ProviderName %>" 
                                                        SelectCommand="SELECT VaamPayID,VaamID,Amount,dbo.ToShamsiDate(PayDate)PayDate,PayTime,BankNo,BankName,Image
FROM VaamPayTb (NOLOCK)
WHERE VaamID=@VaamID
ORDER BY PayDate DESC,PayTime DESC,VaamPayID DESC"
                                                        UpdateCommand="UPDATE dbo.VaamPayTb SET Amount=@Amount,PayDate=dbo.ToMiladiDate(@PayDate),PayTime=@PayTime,BankNo=@BankNo,BankName=@BankName
WHERE VaamPayID=@VaamPayID">
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="VaamPayID" />
                                                        </DeleteParameters>
                                                        <InsertParameters>
                                                            <asp:SessionParameter Name="VaamID" SessionField="ThisVaamID" />
                                                            <asp:Parameter Name="Amount" />
                                                            <asp:Parameter Name="PayDate" />
                                                            <asp:Parameter Name="PayTime" />
                                                            <asp:Parameter Name="BankNo" />
                                                            <asp:Parameter Name="BankName" />
                                                        </InsertParameters>
                                                        <SelectParameters>
                                                            <asp:SessionParameter DefaultValue="" Name="VaamID" SessionField="ThisVaamID" />
                                                        </SelectParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Amount" />
                                                            <asp:Parameter Name="PayDate" />
                                                            <asp:Parameter Name="PayTime" />
                                                            <asp:Parameter Name="BankNo" />
                                                            <asp:Parameter Name="BankName" />
                                                            <asp:Parameter Name="VaamPayID" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                </DetailRow>
                                            </Templates>
                                        </dx:ASPxGridView>
                                        <asp:SqlDataSource ID="ds_Vaam" runat="server" ConnectionString="<%$ ConnectionStrings:GharzolHasane_CS %>"
                                            DeleteCommand="DELETE VaamTb WHERE VaamID=@VaamID"
                                            InsertCommand="INSERT VaamTb(MemberID,Amount,PayDate,StartPayDate,TedadeGhest,NoeZemanat,DaftarCode,ZamenFullName,ZamenCodeMelli,ZamenMbl)
                                                VALUES(@MemberID,@Amount,dbo.ToMiladiDate(@PayDate),dbo.ToMiladiDate(@StartPayDate),@TedadeGhest,@NoeZemanat,@DaftarCode,@ZamenFullName,@ZamenCodeMelli,@ZamenMbl)"
                                            ProviderName="<%$ ConnectionStrings:GharzolHasane_CS.ProviderName %>"
                                            SelectCommand="SELECT VaamID,MemberID,Amount,dbo.ToShamsiDate(PayDate)PayDate,dbo.ToShamsiDate(StartPayDate)StartPayDate
                                            ,TedadeGhest,NoeZemanat,DaftarCode,ZamenFullName,ZamenCodeMelli,ZamenMbl,ZamenCheckImage
                                            FROM VaamTb (NOLOCK)
                                            WHERE MemberID=@MemberID
                                            ORDER BY PayDate DESC,VaamID DESC"
                                            UpdateCommand="UPDATE VaamTb SET Amount=@Amount,PayDate=dbo.ToMiladiDate(@PayDate),StartPayDate=dbo.ToMiladiDate(@StartPayDate)
                                            ,TedadeGhest=@TedadeGhest,NoeZemanat=@NoeZemanat,DaftarCode=@DaftarCode,ZamenFullName=@ZamenFullName,ZamenCodeMelli=@ZamenCodeMelli,ZamenMbl=@ZamenMbl
                                            WHERE VaamID=@VaamID">
                                            <DeleteParameters>
                                                <asp:Parameter Name="VaamID" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:SessionParameter Name="MemberID" SessionField="ThisMemberID" />
                                                <asp:Parameter Name="Amount" />
                                                <asp:Parameter Name="PayDate" />
                                                <asp:Parameter Name="TedadeGhest" />
                                                <asp:Parameter Name="NoeZemanat" />
                                                <asp:Parameter Name="DaftarCode" />
                                                <asp:Parameter Name="StartPayDate" />
                                                <asp:Parameter Name="ZamenFullName" />
                                                <asp:Parameter Name="ZamenCodeMelli" />
                                                <asp:Parameter Name="ZamenMbl" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:SessionParameter Name="MemberID" SessionField="ThisMemberID" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Amount" />
                                                <asp:Parameter Name="PayDate" />
                                                <asp:Parameter Name="TedadeGhest" />
                                                <asp:Parameter Name="NoeZemanat" />
                                                <asp:Parameter Name="VaamID" />
                                                <asp:Parameter Name="DaftarCode" />
                                                <asp:Parameter Name="StartPayDate" />
                                                <asp:Parameter Name="ZamenFullName" />
                                                <asp:Parameter Name="ZamenCodeMelli" />
                                                <asp:Parameter Name="ZamenMbl" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                        </TabPages>
                    </dx:ASPxPageControl>
                </DetailRow>
            </Templates>
        </dx:ASPxGridView>
    </p>
    <asp:SqlDataSource ID="ds_Members" runat="server" ConnectionString="<%$ ConnectionStrings:GharzolHasane_CS %>" ProviderName="<%$ ConnectionStrings:GharzolHasane_CS.ProviderName %>" InsertCommand="INSERT MembersTb(FullName,CodeMelli,Tel,Mbl,InsertDate,UpdateDate,DaftarCode)
VALUES(@FullName,@CodeMelli,@Tel,@Mbl,CAST(GETDATE() AS date),CAST(GETDATE() AS date),@DaftarCode)"
        SelectCommand="SELECT MemberID,FullName,CodeMelli,Tel,Mbl,dbo.ToShamsiDate(InsertDate)InsertDate,dbo.ToShamsiDate(UpdateDate)UpdateDate
,ISNULL(LEN(SignImage),0)LenSignImage,DaftarCode,SignImage
FROM MembersTb (NOLOCK)
ORDER BY MemberID DESC"
        UpdateCommand="UPDATE MembersTb SET FullName=@FullName,CodeMelli=@CodeMelli,Tel=@Tel,Mbl=@Mbl,UpdateDate=GETDATE(),DaftarCode=@DaftarCode
WHERE MemberID=@MemberID">
        <InsertParameters>
            <asp:Parameter Name="FullName" />
            <asp:Parameter Name="CodeMelli" />
            <asp:Parameter Name="Tel" />
            <asp:Parameter Name="Mbl" />
            <asp:Parameter Name="DaftarCode" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FullName" />
            <asp:Parameter Name="CodeMelli" />
            <asp:Parameter Name="Tel" />
            <asp:Parameter Name="Mbl" />
            <asp:Parameter Name="MemberID" />
            <asp:Parameter Name="DaftarCode" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
