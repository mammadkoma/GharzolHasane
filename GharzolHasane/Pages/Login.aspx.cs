using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GharzolHasane.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ASPxTextBox1.Focus();
            }
        }

        protected void ASPxButton1_Click1(object sender, EventArgs e)
        {
            ASPxLabel1.Text = "";

            if (ASPxTextBox1.Text.Trim() == "admin" && ASPxTextBox2.Text.Trim() == "mz@852")
            {
                Session["UserCode"] = "1";
                Response.Redirect("Members.aspx");
            }
            else
            {
                ASPxLabel1.Text = "نام کاربری و کلمه عبور صحیحی نمی باشد.";
                Session["UserCode"] = null;
            }
        }

    }
}