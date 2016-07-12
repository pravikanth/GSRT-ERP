using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class CreateUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
            {

            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }

    protected void btnCreateUser_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
        {
                AppLibrary.Login login = new AppLibrary.Login();
                login.UserName = txtUserName.Text;
                login.Password = txtPassword.Text;
                login.UserType = ddlUserType.SelectedValue;
                LoginDB loginDB = new LoginDB();
                int n = loginDB.CreateUser(login);
                if (n == 1)
                {
                    lblErrorMessage.Text = "User created successfully";
                }
                else
                {
                    lblErrorMessage.Text = "Could not create user";
                }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}