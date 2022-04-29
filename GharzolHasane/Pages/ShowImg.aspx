<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowImg.aspx.cs" Inherits="GharzolHasane.Pages.ShowImg" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <dx:ASPxBinaryImage runat="server" ImageAlign="Middle" Width="100%" Height="100%"
                ClientInstanceName="imgp" Font-Names="tahoma" ID="ASPxBinaryImage3">
            </dx:ASPxBinaryImage>

        </div>
    </form>
</body>
</html>
