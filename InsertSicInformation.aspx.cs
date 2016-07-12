using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InsertSicInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
        {


        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }

    protected void btnSicInfo_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
        {
            AppLibrary.Sic sic = new AppLibrary.Sic();
            sic.SicCode = Convert.ToInt32(txtSicCode.Text);
            sic.SicDescription = txtSicDescription.Text;
            AppLibrary.SicDB sicDB = new AppLibrary.SicDB();
            sicDB.InsertSicInfo(sic);
            txtSicCode.Text = "";
            txtSicDescription.Text = "";
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}