using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteConsultant : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
            {
                LoadConsultantIds();
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }

    protected void btnDeleteUser_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
        {
            ConsultantInfoDB consultantInfoDB = new ConsultantInfoDB();
            int n = consultantInfoDB.DeleteConsultantInfo(Convert.ToInt32(ddlConsultantId.SelectedValue));
            //int n = loginDB.CreateUser(login);
            if (n == 1)
            {
                lblErrorMessage.Text = "Consultant Info Deleted successfully";
                Clear();
                LoadConsultantIds();
            }
            else
            {
                lblErrorMessage.Text = "Could not delete consultant info";
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
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

    protected void ddlConsultantId_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlConsultantId.Text != "--Select--")
        {
            ConsultantInfoDB consultantInfoDB = new ConsultantInfoDB();
            ConsultantInfo consultantInfo = new ConsultantInfo();
            consultantInfo = consultantInfoDB.GetConsultantInfo(Convert.ToInt32(ddlConsultantId.SelectedValue));
            txtFirstName.Text = consultantInfo.Fname;
            txtLastName.Text = consultantInfo.Lname;
            txtClient.Text = consultantInfo.Client;
            txtPhone.Text = consultantInfo.Phone;
            txtLocation.Text = consultantInfo.Location;
            txtEmail.Text = consultantInfo.Email;
            txtSkillSet.Text = consultantInfo.SkillSet;
            txtResume.Text = consultantInfo.Resume;
            //string filename = hlResume.Text.Substring(0, hlResume.Text.IndexOf('.'));
            //lblErrorMessage.Text = filename;
        }
    }
    protected void Clear()
    {
        //ddlConsultantId.Text = "";
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtClient.Text = "";
        txtPhone.Text = "";
        txtLocation.Text = "";
        txtEmail.Text = "";
        txtSkillSet.Text = "";
    }
}