using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            AppLibrary.Login login = (AppLibrary.Login)Session["User"];
            Label1.Text = "welcome " + login.UserName;


        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}