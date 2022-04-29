using DA;
using GharzolHasane.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;

namespace GharzolHasane.Pages
{
    public partial class UplCheckImg : System.Web.UI.Page
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
            Session["url"] = arr[1];
        }

        protected void ASPxUpload_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            string Spnam = "UplZamenCheckImage";
            Dictionary<string, object> Parameters = new Dictionary<string, object>();

            Parameters.Add("Image", ASPxUploadZamenCheckImage.UploadedFiles[0].FileBytes);
            Parameters.Add("VaamID", Session["url"]);

            SqlUtl.ExecSP(Spnam, ConfigurationManager.ConnectionStrings["GharzolHasane_CS"].ConnectionString, Parameters);
        }
    }
}