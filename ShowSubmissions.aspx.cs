using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ShowSubmissions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && (Session["UserType"].ToString() == "Admin" || Session["UserType"].ToString() == "Sales" || Session["UserType"].ToString() == "Mgmt"))
        {
            if (Session["ConsultantId"] != null)
            {
                SubmissionsDB submissionsDB = new SubmissionsDB();
                DataTable notes = submissionsDB.GetConsultants(Convert.ToInt32(Session["ConsultantId"]));
                GridView1.DataSource = notes;
                GridView1.DataBind();
                //lblErrorMessage.Text = Session["ConsultantId"].ToString();
            }
            else
            {
                lblErrorMessage.Text = "Error";
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }

    }
}