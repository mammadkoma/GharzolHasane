using GharzolHasane.App_Code;
using System;

namespace GharzolHasane.Pages
{
    public partial class ShowVaamPayImg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strReq = "";
            strReq = Request.RawUrl;
            strReq = strReq.Substring(strReq.IndexOf('?') + 1);

            EncryptDecryptQueryString objEDQueryString = new EncryptDecryptQueryString();
            strReq = objEDQueryString.Decrypt(strReq, "r0b1nr0y");
            string[] arr;
            arr = strReq.Split('=');
            Session["VaamPayID"] = arr[1];
        }
    }
}