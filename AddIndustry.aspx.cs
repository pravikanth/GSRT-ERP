using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddIndustry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
        {
            AppLibrary.IndustryDB industryDB = new AppLibrary.IndustryDB();
            lblUpdateStatus.Text = industryDB.InsertIndustry(txtSicDesc.Text);
            txtSicDesc.Text = "";
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
        
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtSicDesc.Text = "";
    }
}