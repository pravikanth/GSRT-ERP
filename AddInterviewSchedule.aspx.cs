using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;
using System.Data;

public partial class AddInterviewSchedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSubmissionDate.Text = DateTime.Today.ToShortDateString();
        if (!IsPostBack)
        {
            if (Session["UserType"] != null && (Session["UserType"].ToString() == "Admin" || Session["UserType"].ToString() == "Sales"))
            {
                LoadConsultantIds();
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
    protected void LoadConsultantIds()
    {
        ConsultantInfoDB consultantInfoDB = new ConsultantInfoDB();
        DataTable Consultants = consultantInfoDB.GetConsultants();
        ddlConsultantId.Items.Clear();
        ddlConsultantId.Items.Add("--Select--");
        for (int i = 0; i < Consultants.Rows.Count; i++)
        {
            ddlConsultantId.Items.Add(Consultants.Rows[i][1].ToString() + " " + Consultants.Rows[i][2].ToString());
            ddlConsultantId.Items[i + 1].Value = Consultants.Rows[i][0].ToString();
        }
    }

    protected void btnAddPoc_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && (Session["UserType"].ToString() == "Admin" || Session["UserType"].ToString() == "Sales"))
        {
            if (txtEndClient.Text != "" && txtNotes.Text != "" && txtPrimeVendor.Text != "")
            {
                int i = 0;
                Submissions submissions = new Submissions();
                submissions.ConsultantId = Convert.ToInt32(ddlConsultantId.Text);
                submissions.PrimeVendor = txtPrimeVendor.Text;
                submissions.EndClient = txtEndClient.Text;
                submissions.SubmissionDate = DateTime.Now;
                submissions.Notes = txtNotes.Text;
                AppLibrary.Login login = (AppLibrary.Login)Session["User"];
                submissions.Username = login.UserName;
                SubmissionsDB submissionsDB = new SubmissionsDB();
                i = submissionsDB.InsertSubmissions(submissions);
                if (i == 0)
                {
                    lblErrorMessage.Text = "Data Added Successfully";
                }
                else
                {
                    lblErrorMessage.Text = "Unable to add data";
                }
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}