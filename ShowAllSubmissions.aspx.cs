using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;
using System.Data;

public partial class ShowAllSubmissions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && (Session["UserType"].ToString() == "Admin" || Session["UserType"].ToString() == "Sales" || Session["UserType"].ToString() == "Mgmt"))
        {
                SubmissionsDB submissionsDB = new SubmissionsDB();
                DataTable notes = submissionsDB.GetConsultants(0);
                GridView1.DataSource = notes;
                GridView1.DataBind();
                //lblErrorMessage.Text = Session["ConsultantId"].ToString();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}