using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;
using System.IO;

public partial class AddConsultant : System.Web.UI.Page
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
            if (FileUpload1.HasFile)
            {
                string strFileType = Path.GetExtension(FileUpload1.FileName).ToLower();
                string path = FileUpload1.PostedFile.FileName;
                string Ppath = Server.MapPath("~\\Resumes\\");
                string FullFileName = string.Empty;
                FullFileName = Ppath + txtFirstName.Text + txtLastName.Text + strFileType;
                FileUpload1.SaveAs(FullFileName);
                ConsultantInfo consultantInfo = new ConsultantInfo();
                consultantInfo.Fname = txtFirstName.Text;
                consultantInfo.Lname = txtLastName.Text;
                consultantInfo.Client = txtClient.Text;
                consultantInfo.Phone = txtPhone.Text;
                consultantInfo.Location = txtLocation.Text;
                consultantInfo.Email = txtEmail.Text;
                consultantInfo.SkillSet = txtSkillSet.Text;
                consultantInfo.Resume = txtFirstName.Text + txtLastName.Text + strFileType;
                ConsultantInfoDB consultantInfoDB = new ConsultantInfoDB();
                int n = consultantInfoDB.InsertLog(consultantInfo);
                //int n = loginDB.CreateUser(login);
                if (n == 0)
                {
                    lblErrorMessage.Text = "Consultant Info added successfully";
                    Clear();
                }
                else
                {
                    lblErrorMessage.Text = "Could not add consultant info";
                }
            }
            else
            {
                lblErrorMessage.Text = "Please select a file";
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
    protected void Clear()
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtClient.Text = "";
        txtPhone.Text = "";
        txtLocation.Text = "";
        txtEmail.Text = "";
        txtSkillSet.Text = "";
    }
}