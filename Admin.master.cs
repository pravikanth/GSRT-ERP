using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
                AdminMainMenu.Visible = false;
                EmployeeMainMenu.Visible = false;
                MgmtMainMenu.Visible = false;
                PLMMainMenu.Visible = false;
                SalesMainMenu.Visible = false;
                if (Session["UserType"].ToString() == "Admin")
                {
                    AdminMainMenu.Visible = true;
                }
                if (Session["UserType"].ToString() == "Employee")
                {
                    EmployeeMainMenu.Visible = true;
                }
                if (Session["UserType"].ToString() == "Mgmt")
                {
                    MgmtMainMenu.Visible = true;
                }
                if (Session["UserType"].ToString() == "PLM")
                {
                    PLMMainMenu.Visible = true;
                }
                if (Session["UserType"].ToString() == "Sales")
                {
                    SalesMainMenu.Visible = true;
                }
        }   
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }

    protected void lbnLogOut_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            Session["UserType"] = null;
            Response.Redirect("LoginPage.aspx");
        }
    }
}
