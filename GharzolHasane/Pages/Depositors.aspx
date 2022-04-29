<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Depositors.aspx.cs" Inherits="GharzolHasane.Pages.Depositors" %>

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
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ds_Depositors" KeyFieldName="DepositorID" Theme="PlasticBlue" OnHtmlRowPrepared="ASPxGridView1_HtmlRowPrepared" ClientInstanceName="gv" OnCustomCallback="ASPxGridView1_CustomCallback">
            <Columns>
                <dx:GridViewCommandColumn Caption=" " ShowNewButtonInHeader="True" VisibleIndex="0" ShowEditButton="True" ShowInCustomizationForm="True">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="DepositorID" ReadOnly="True" Visible="False" VisibleIndex="1" ShowInCustomizationForm="True">
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
                        <MaskSettings />
                    </PropertiesTextEdit>
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Mbl" VisibleIndex="7" Caption=" تلفن همراه " ShowInCustomizationForm="True">
                    <PropertiesTextEdit>
                        <MaskSettings />
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
                        <%--<dx:ASPxButton ID="btnUplSignImage" runat="server" AutoPostBack="False" Text="افزودن تصویر">
                        </dx:ASPxButton>--%>
                        <%--                        <dx:ASPxButton ID="btnShowSignImg" runat="server" AutoPostBack="False" Text="مشاهده امضاء">
                        </dx:ASPxButton>--%>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="LenSignImage" Visible="False" VisibleIndex="11">
                </dx:GridViewDataTextColumn>
                <%--<dx:GridViewDataBinaryImageColumn Caption="تصویر" FieldName="SignImage" VisibleIndex="2">
                    <PropertiesBinaryImage ImageWidth="50px">
                    </PropertiesBinaryImage>
                </dx:GridViewDataBinaryImageColumn>--%>
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
                    <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ds_DepositorPayTb" KeyFieldName="DepositorPayID" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect" RightToLeft="True">
                        <TotalSummary>
                            <dx:ASPxSummaryItem DisplayFormat="n0" FieldName="Amount" ShowInColumn="مبلغ به ریال" ShowInGroupFooterColumn="مبلغ به ریال" SummaryType="Sum" ValueDisplayFormat="n0" />
                        </TotalSummary>
                        <Columns>
                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn FieldName="DepositorPayID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                <EditFormSettings Visible="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="DepositorID" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
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
                                        <RequiredField IsRequired="False" />
                                    </ValidationSettings>
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="نام بانک" FieldName="BankName" ShowInCustomizationForm="True" VisibleIndex="7">
                                <PropertiesTextEdit>
                                    <ValidationSettings>
                                        <RequiredField IsRequired="False" />
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
                     <asp:SqlDataSource ID="ds_DepositorPayTb" runat="server" ConnectionString="<%$ ConnectionStrings:GharzolHasane_CS %>" DeleteCommand="DELETE DepositorPayTb WHERE DepositorPayID=@DepositorPayID" InsertCommand="INSERT DepositorPayTb(DepositorID,Amount,PayDate,PayTime,BankNo,BankName)
VALUES(@DepositorID,@Amount,dbo.ToMiladiDate(@PayDate),@PayTime,@BankNo,@BankName)"
                                            ProviderName="<%$ ConnectionStrings:GharzolHasane_CS.ProviderName %>" SelectCommand="SELECT DepositorPayID,DepositorID,Amount,dbo.ToShamsiDate(PayDate)PayDate,PayTime,BankNo,BankName
FROM DepositorPayTb (NOLOCK)
WHERE DepositorID=@DepositorID
ORDER BY PayDate DESC,PayTime DESC,DepositorPayID DESC"
                                            UpdateCommand="UPDATE DepositorPayTb SET Amount=@Amount,PayDate=dbo.ToMiladiDate(@PayDate),PayTime=@PayTime,BankNo=@BankNo,BankName=@BankName
WHERE DepositorPayID=@DepositorPayID">
                                            <DeleteParameters>
                                                <asp:Parameter Name="DepositorPayID" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:SessionParameter Name="DepositorID" SessionField="ThisDepositorID" />
                                                <asp:Parameter Name="Amount" />
                                                <asp:Parameter Name="PayDate" />
                                                <asp:Parameter Name="PayTime" />
                                                <asp:Parameter Name="BankNo" />
                                                <asp:Parameter Name="BankName" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:SessionParameter Name="DepositorID" SessionField="ThisDepositorID" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Amount" />
                                                <asp:Parameter Name="PayDate" />
                                                <asp:Parameter Name="PayTime" />
                                                <asp:Parameter Name="BankNo" />
                                                <asp:Parameter Name="BankName" />
                                                <asp:Parameter Name="DepositorPayID" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                </DetailRow>
            </Templates>
        </dx:ASPxGridView>
    </p>
    <asp:SqlDataSource ID="ds_Depositors" runat="server" ConnectionString="<%$ ConnectionStrings:GharzolHasane_CS %>" ProviderName="<%$ ConnectionStrings:GharzolHasane_CS.ProviderName %>" InsertCommand="INSERT DepositorsTb(FullName,CodeMelli,Mbl,InsertDate,UpdateDate)
VALUES(@FullName,@CodeMelli,@Mbl,CAST(GETDATE() AS date),CAST(GETDATE() AS date))"
        SelectCommand="SELECT DepositorID,FullName,CodeMelli,Mbl,dbo.ToShamsiDate(InsertDate)InsertDate,dbo.ToShamsiDate(UpdateDate)UpdateDate
,ISNULL(LEN(SignImage),0)LenSignImage,SignImage
FROM DepositorsTb (NOLOCK)
ORDER BY DepositorID DESC"
        UpdateCommand="UPDATE DepositorsTb SET FullName=@FullName,CodeMelli=@CodeMelli,Mbl=@Mbl,UpdateDate=GETDATE()
WHERE DepositorID=@DepositorID">
        <InsertParameters>
            <asp:Parameter Name="FullName" />
            <asp:Parameter Name="CodeMelli" />
            <asp:Parameter Name="Mbl" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FullName" />
            <asp:Parameter Name="CodeMelli" />
            <asp:Parameter Name="Mbl" />
            <asp:Parameter Name="DepositorID" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
