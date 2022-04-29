<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GharzolHasane.Pages.Login" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 118px;
            font-family: tahoma;
            font-size: medium;
        }
        .auto-style2 {
            width: 358px;
            text-align: right;
        }
        .auto-style3 {
            font-family: tahoma;
            font-size: medium;
            color: #CC0000;
        }
        </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        <table dir="rtl" style="width:64%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">نام کاربری : </td>
                <td class="auto-style2">
                    <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px">
                        <ValidationSettings>
                            <RequiredField IsRequired="True" />
                        </ValidationSettings>
                    </dx:ASPxTextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">کلمه عبور : </td>
                <td class="auto-style2">
                    <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Password="True" Width="170px">
                        <ValidationSettings>
                            <RequiredField IsRequired="True" />
                        </ValidationSettings>
                    </dx:ASPxTextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2" >
                    <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click1" Text="ورود" Theme="Youthful" Width="80px">
                    </dx:ASPxButton>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" CssClass="auto-style3">
                    </dx:ASPxLabel>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
