using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class ResetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
        {
            if (!IsPostBack)
            {
                try
                {
                    LoginDB loginDB = new LoginDB();
                    List<string> list = loginDB.GetUsers();
                    ddlUsers.DataSource = list;
                    ddlUsers.DataBind();
                }
                catch (Exception ex)
                {
                    lblErrorMessage.Text = ex.Message;
                }
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }

    protected void btnResetPassword_Click(object sender, EventArgs e)
    {
        lblErrorMessage.Text = "";
        if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
        {
            try
            {
                AppLibrary.Login login = new AppLibrary.Login();
                login.UserName = ddlUsers.Text;
                login.Password = txtPassword.Text;
                LoginDB loginDB = new LoginDB();
                int n = loginDB.ResetPassword(login);
                if (n == 1)
                {
                    lblErrorMessage.Text = "Password updated successfully";
                }
                else
                {
                    lblErrorMessage.Text = "Could not update password";
                }
            }
            catch (Exception ex)
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