using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserType"] != null && (Session["UserType"].ToString() == "Admin" || Session["UserType"].ToString() == "Mgmt" || Session["UserType"].ToString() == "PLM" || Session["UserType"].ToString() == "Sales" || Session["UserType"].ToString() == "Employee"))
            {

            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && Session["User"] != null)
        {
            try
            {
                AppLibrary.Login login = (AppLibrary.Login)Session["User"];
                login.Password = txtOldPassword.Text;
                LoginDB loginDB = new LoginDB();
                int n = loginDB.ChangePassword(login, txtConfirmPassword.Text);
                if (n == 1)
                {
                    lblErrorMessage.Text = "Password updated successfully";
                    login.Password = txtConfirmPassword.Text;
                    Session["User"] = login;
                }
                else
                {
                    lblErrorMessage.Text = "Could not update password";
                }
            }
            catch(Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}