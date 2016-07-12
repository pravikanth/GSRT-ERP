using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;
using System.Data;

public partial class AddPocInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
            {
                MoreInfoDB moreInfo = new MoreInfoDB();
                DataTable AllCompanies= moreInfo.getAllCompanies();
                int i = 0;
                for(i=0;i< AllCompanies.Rows.Count;i++)
                {
                    ddlCompanyId.Items.Add(AllCompanies.Rows[i][3].ToString());
                    ddlCompanyId.Items[i].Value = AllCompanies.Rows[i][0].ToString();
                }
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }

    protected void btnAddPoc_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            if (ddlCompanyId.SelectedItem != null)
            {
                Poc poc = new Poc();
                poc.CompanyID = Convert.ToInt32(ddlCompanyId.SelectedValue);
                poc.PocFname = txtFirstName.Text;
                poc.PocLname = txtLastName.Text;
                poc.Poctitle = txtTitle.Text;
                poc.PocPhone = txtPhone.Text;
                poc.PocEmail = txtEmail.Text;
                if (ddlDecisionMaker.SelectedValue == "No")
                {
                    poc.DecisionMaker = Convert.ToBoolean(0);
                }
                else poc.DecisionMaker = Convert.ToBoolean(1);
                PointOfContactDB pocDb = new PointOfContactDB();
                lblStatus.Text = pocDb.InsertPoc(poc);
                if (lblStatus.Text == "Point of Contact inserted successfully")
                {
                    lblStatus.ForeColor = System.Drawing.Color.Green;
                    txtFirstName.Text = "";
                    txtLastName.Text = "";
                    txtTitle.Text = "";
                    txtPhone.Text = "";
                    txtEmail.Text = "";
                }
                else
                {
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                }

                lblStatus.Visible = true;


            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }

    }

    protected void reset_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtTitle.Text = "";
        txtPhone.Text = "";
        txtEmail.Text = "";
    }
}