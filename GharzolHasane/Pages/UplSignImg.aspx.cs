using DA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using GharzolHasane.App_Code;

namespace GharzolHasane.Pages
{
    public partial class UplSignImg : System.Web.UI.Page
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

        protected void ASPxUploadControl1_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            string Spnam = "UplSignImage";
            Dictionary<string, object> Parameters = new Dictionary<string, object>();

            Parameters.Add("SignImage", ASPxUploadControl1.UploadedFiles[0].FileBytes);
            //Parameters.Add("ImgExt", ASPxUploadControl1.UploadedFiles[0].FileName.Substring(ASPxUploadControl1.UploadedFiles[0].FileName.LastIndexOf('.')));
            //Parameters.Add("MemberID", Request.QueryString["MemberID"]);

            Parameters.Add("MemberID", Session["url"]);

            SqlUtl.ExecSP(Spnam, ConfigurationManager.ConnectionStrings["GharzolHasane_CS"].ConnectionString, Parameters);
        }
    }
}