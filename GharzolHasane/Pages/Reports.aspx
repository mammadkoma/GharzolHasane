<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="GharzolHasane.Pages.Reports" %>
<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <dx:ASPxGridViewExporter ID="xprttp" runat="server" GridViewID="gvrpt">
    </dx:ASPxGridViewExporter>
    <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="اکسل" Theme="Office2003Olive">
    </dx:ASPxButton>
    <br />
    <dx:ASPxGridView ID="gvrpt" runat="server" AutoGenerateColumns="False" DataSourceID="ds_Rpt" EnableTheming="True" Theme="Office2003Olive">
        <TotalSummary>
            <dx:ASPxSummaryItem DisplayFormat="n0" FieldName="TedadeGhest" ShowInColumn="TedadeGhest" SummaryType="Sum" />
            <dx:ASPxSummaryItem DisplayFormat="n0" FieldName="Cnt" ShowInColumn="Cnt" SummaryType="Sum" />
            <dx:ASPxSummaryItem DisplayFormat="n0" FieldName="NCnt" ShowInColumn="NCnt" SummaryType="Sum" />
        </TotalSummary>
        <Columns>
            <dx:GridViewDataTextColumn Caption="نام و نام خانوادگی" FieldName="FullName" VisibleIndex="0">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ افتتاح حساب" FieldName="MemPayDte" ReadOnly="True" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ اخذ وام" FieldName="vamPayDte" ReadOnly="True" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ شروع قسط" FieldName="StartPayDate" ReadOnly="True" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تاریخ پایان قسط" FieldName="EndPayDte" ReadOnly="True" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="پرداخت شده" FieldName="PardakhtShode" ReadOnly="True" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="پرداخت نشده" FieldName="PardakhtNaShode" ReadOnly="True" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تلفن" FieldName="Tel" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="توضیحات" FieldName="Dscrp" ReadOnly="True" VisibleIndex="11" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="MemberID" Visible="False" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="تعداد اقساط" FieldName="TedadeGhest" ReadOnly="True" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <%--<dx:GridViewDataTextColumn Caption="باید تا امروز پرداخت شود" FieldName="CntBayadTaEmruz" VisibleIndex="8">
            </dx:GridViewDataTextColumn>--%>
            <dx:GridViewDataTextColumn Caption="عقب افتاده" FieldName="AghabOftade" VisibleIndex="9">
                <PropertiesTextEdit DisplayFormatString="n0">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
        </Columns>
        <SettingsPager>
            <Summary Text="صفحه {0} از {1} ({2} مورد)" />
        </SettingsPager>
        <Settings ShowFooter="True" ShowFilterRow="True" />
        <Styles>
            <Header HorizontalAlign="Center" VerticalAlign="Middle">
            </Header>
            <Cell HorizontalAlign="Center" VerticalAlign="Middle">
            </Cell>
            <Footer HorizontalAlign="Center">
            </Footer>
        </Styles>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="ds_Rpt" runat="server" ConnectionString="<%$ ConnectionStrings:GharzolHasane_CS %>" ProviderName="<%$ ConnectionStrings:GharzolHasane_CS.ProviderName %>" SelectCommand="GetRptPrsn" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
