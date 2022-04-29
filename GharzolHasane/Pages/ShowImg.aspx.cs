using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DA;
using System.Data;
using GharzolHasane.App_Code;
using System.Configuration;

namespace GharzolHasane.Pages
{
    public partial class ShowImg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strReq = "";
            strReq = Request.RawUrl;
            strReq = strReq.Substring(strReq.IndexOf('?') + 1);

            EncryptDecryptQueryString objEDQueryString = new EncryptDecryptQueryString();
            strReq = objEDQueryString.Decrypt(strReq, "r0b1nr0y");

            string[] arrMsgs = strReq.Split('&');
            string[] arrInMsg1;
            string[] arrInMsg2;
            string[] arrInMsg3;
            string[] arrInMsg4;
            arrInMsg1 = arrMsgs[0].Split('=');  //
            arrInMsg2 = arrMsgs[1].Split('=');
            arrInMsg3 = arrMsgs[2].Split('=');
            arrInMsg4 = arrMsgs[3].Split('=');
            String Tbl = arrInMsg1[1].ToString().Trim();
            String Col = arrInMsg2[1].ToString().Trim();
            String PK_Col = arrInMsg3[1].ToString().Trim();
            String PK_Val = arrInMsg4[1].ToString().Trim();
            //String PK_Col = arrIndMsg[2].ToString().Trim();
            //String PK_Val = arrIndMsg[3].ToString().Trim();

            SqlDataSource ds = new SqlDataSource();
            ds.ConnectionString = ConfigurationManager.ConnectionStrings["GharzolHasane_CS"].ConnectionString;

            ds.SelectCommand = "EXEC ShowImg " + Tbl + "," + Col + "," + PK_Col + "," + PK_Val;
            DataView view = (DataView)ds.Select(DataSourceSelectArguments.Empty);
            if (view.Count > 0)
                ASPxBinaryImage3.Value = view[0][0] as byte[];
            else
            {
                ASPxBinaryImage3.ToolTip = "تصویر ارسال نشده";
                ASPxBinaryImage3.AlternateText = "تصویر ارسال نشده";
            }
        }
    }
}