<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UplSignImg.aspx.cs" Inherits="GharzolHasane.Pages.UplSignImg" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            font-family: Tahoma;
        }

        .style3 {
            font-size: small;
        }

        .style2 {
            font-family: Tahoma;
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="direction: rtl">
            <span class="style1"><span class="style3">نکته 1 : حجم تصویر نباید از 500 کیلو بایت بیشتر باشد.</span><br class="style2" />
                <span class="style3">نکته 2 : پسوندهای قابل قبول عبارتند از : jpg,jpeg,png<br />
            </span><br class="style2" />
                <dx:ASPxUploadControl ID="ASPxUploadControl1" runat="server" OnFileUploadComplete="ASPxUploadControl1_FileUploadComplete" ShowProgressPanel="True" ShowUploadButton="True" Theme="RedWine" Width="280px">
                    <clientsideevents fileuploadcomplete="function(s, e) {
	close();
}" />
                    <validationsettings allowedfileextensions=".jpg, .JPG, .jpeg, .JPEG, .png, .PNG" maxfilesize="512000" maxfilesizeerrortext="تصویر با حجم بیش تر از 500 کیلوبایت قابل قبول نیست" notallowedfileextensionerrortext="فایل انتخابی از نوع تصویر نیست">
            </validationsettings>
                    <clientsideevents fileuploadcomplete="function(s, e) {
	if(!e.isValid){  }
	else{ close(); }
}"></clientsideevents>

                    <uploadbutton text="ارسال فایل">
            </uploadbutton>
                </dx:ASPxUploadControl>
            </span>
        </div>
    </form>
</body>
</html>
