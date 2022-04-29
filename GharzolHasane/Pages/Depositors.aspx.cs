using DevExpress.Web;
using GharzolHasane.App_Code;
using System;

namespace GharzolHasane.Pages
{
    public partial class Depositors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxGridView2_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["ThisDepositorID"] = (((ASPxGridView)sender).GetMasterRowKeyValue().ToString());
        }

        protected void gvVaam_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["ThisDepositorID"] = (((ASPxGridView)sender).GetMasterRowKeyValue().ToString());
        }

        protected void gvVaamPay_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["ThisVaamID"] = (((ASPxGridView)sender).GetMasterRowKeyValue().ToString());
        }

        protected void ASPxGridView1_HtmlRowPrepared(object sender, ASPxGridViewTableRowEventArgs e)
        {
            if (e.RowType == GridViewRowType.Data)
            {
                String DepositorIDVal = ((ASPxGridView)sender).GetRowValues(e.VisibleIndex, "DepositorID").ToString();
                String LenSignImage = ((ASPxGridView)sender).GetRowValues(e.VisibleIndex, "LenSignImage").ToString();
                EncryptDecryptQueryString objEDQueryString = new EncryptDecryptQueryString();
                //ASPxButton btnUplSignImage = (ASPxButton)((ASPxGridView)sender).FindRowCellTemplateControl(e.VisibleIndex, null, "btnUplSignImage");
                //btnUplSignImage.ClientSideEvents.Click = "function(s,e){ shDlgNewBrowsers('UplSignImg.aspx?" + new EncryptDecryptQueryString().Encrypt("DepositorID=" + DepositorIDVal, "r0b1nr0y") + "'); }";
            }
        }

        protected void ASPxGridView1_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {
            ASPxGridView1.DataBind();
        }

        protected void gvVaamPay_HtmlRowPrepared(object sender, ASPxGridViewTableRowEventArgs e)
        {
            if (e.RowType == GridViewRowType.Data)
            {
                String VaamPayID = ((ASPxGridView)sender).GetRowValues(e.VisibleIndex, "VaamPayID").ToString();
                ASPxButton btnVaamPayUpl = (ASPxButton)((ASPxGridView)sender).FindRowCellTemplateControl(e.VisibleIndex, null, "btnVaamPayUpl");
                ASPxButton btnShowVaamPayImg = (ASPxButton)((ASPxGridView)sender).FindRowCellTemplateControl(e.VisibleIndex, null, "btnShowVaamPayImg");
                if (btnVaamPayUpl != null)
                    btnVaamPayUpl.ClientSideEvents.Click = "function(s,e){ shDlgNewBrowsers_VaamPayImg('UplVaamPayImg.aspx?" + new EncryptDecryptQueryString().Encrypt("VaamPayID=" + VaamPayID, "r0b1nr0y") + "');  }";
                if (btnShowVaamPayImg != null)
                    btnShowVaamPayImg.ClientSideEvents.Click = "function(s,e){ shDlgNewBrowsers_NewTab('ShowVaamPayImg.aspx?" + new EncryptDecryptQueryString().Encrypt("VaamPayID=" + VaamPayID, "r0b1nr0y") + "');  }";
            }
        }

        protected void gvVaamPay_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {
            ((ASPxGridView)sender).DataBind();
        }
    }
}