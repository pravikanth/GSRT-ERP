using System;
using System.Data;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;
using System.IO;

public partial class UpdateConsultant : System.Web.UI.Page
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

    protected void btnUpdateUser_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
        {
            string strFileType = string.Empty;
            string filename = string.Empty;
            if (FileUpload1.HasFile)
            {
                strFileType = Path.GetExtension(FileUpload1.FileName).ToLower();
                filename = hlResume.Text.Substring(0, hlResume.Text.IndexOf('.'));
                string path = FileUpload1.PostedFile.FileName;
                string Ppath = Server.MapPath("~\\Resumes\\");
                string FullFileName = string.Empty;
                FullFileName = Ppath + filename + strFileType;
                FileUpload1.SaveAs(FullFileName);
            }
            ConsultantInfo consultantInfo = new ConsultantInfo();
            consultantInfo.ConsultantId = Convert.ToInt32(ddlConsultantId.SelectedValue);
            consultantInfo.Fname = txtFirstName.Text;
            consultantInfo.Lname = txtLastName.Text;
            consultantInfo.Client = txtClient.Text;
            consultantInfo.Phone = txtPhone.Text;
            consultantInfo.Location = txtLocation.Text;
            consultantInfo.Email = txtEmail.Text;
            consultantInfo.SkillSet = txtSkillSet.Text;
            if (FileUpload1.HasFile)
                consultantInfo.Resume = filename + strFileType;
            else
                consultantInfo.Resume = hlResume.Text;
            //lblErrorMessage.Text = consultantInfo.ConsultantId + " " + consultantInfo.Fname + consultantInfo.Lname + consultantInfo.Client + consultantInfo.Phone + consultantInfo.Location + consultantInfo.Location + consultantInfo.Email + consultantInfo.SkillSet + consultantInfo.Resume;
            ConsultantInfoDB consultantInfoDB = new ConsultantInfoDB();
            int n = consultantInfoDB.UpdateConsultantInfo(consultantInfo);
            //int n = loginDB.CreateUser(login);
            if (n == 1)
            {
                lblErrorMessage.Text = "Consultant Info updated successfully";
                Clear();
                LoadConsultantIds();
            }
            else
            {
                lblErrorMessage.Text = "Could not update consultant info";
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
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
            hlResume.Text = consultantInfo.Resume;
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