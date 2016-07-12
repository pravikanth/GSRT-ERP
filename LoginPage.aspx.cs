using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;


public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtUserName.Text != "" && txtPassword.Text != "")
        {
            AppLibrary.Login login = new AppLibrary.Login();
            login.UserName = txtUserName.Text;
            login.Password = txtPassword.Text;
            LoginDB loginDB = new LoginDB();
            string UserType = string.Empty;
            UserType = loginDB.VerifyLogin(login);
            lblErrorMessage.Text = UserType;
            if (UserType != "Invalid Username/Password")
            {
                Session["UserType"] = UserType;
                login.UserType = UserType;
                Session["User"] = login;
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                lblErrorMessage.Text = "Invalid Username/Password";
            }
            //lblErrorMessage.Text = UserType;
        }
        else
        {
            lblErrorMessage.Text = "Fields cannot be empty";
        }
    }
}