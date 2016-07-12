using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class DeleteComp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

            MoreInfoDB moreInfoDb = new MoreInfoDB();
            List<CompanyInformation> companyInfo = moreInfoDb.getCompanies();
            int i = 0;
            foreach (CompanyInformation cInfo in companyInfo)
            {
                ddlCompanies.Items.Add(cInfo.CompanyName);
                ddlCompanies.Items[i++].Value = cInfo.CompanyId.ToString();
            }
            ddlCompanies.SelectedValue = 0.ToString();
            lblSelected.ForeColor = System.Drawing.Color.Blue;
        }


    }



    protected void btnGo_Click(object sender, EventArgs e)
    {
        CompanyInformationDB compInfoDb = new CompanyInformationDB();
        List<CompanyInformation> companyInfo = compInfoDb.getCompanyFromSearch(tbCompName.Text);
            int i = 0;
        ddlCompanies.Items.Clear();
        foreach (CompanyInformation cInfo in companyInfo)
        {
            ddlCompanies.Items.Add(cInfo.CompanyName);
            ddlCompanies.Items[i++].Value = cInfo.CompanyId.ToString();
        }
        ddlCompanies.SelectedValue = 0.ToString();
    }



    protected void ddlCompanies_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblSelected.ForeColor = System.Drawing.Color.Blue;
        if(ddlCompanies.SelectedValue==0.ToString())
        {
            lblSelected.Visible = false;
            btnDelete.Enabled = false;
            tbCompName.Text = "";
        }
        else
        {
            lblSelected.Text = "Selected Company: "+ddlCompanies.SelectedItem.ToString();
            lblSelected.Visible = true;
            btnDelete.Enabled = true;
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        CompanyInformationDB compInfoDb = new CompanyInformationDB();
        lblSelected.Text = compInfoDb.deleteCompany(Convert.ToInt32(ddlCompanies.SelectedValue));
        if(lblSelected.Text== "Company Deleted Successfully")
        {
            lblSelected.ForeColor = System.Drawing.Color.Green;
            ddlCompanies.Items.Clear();
            MoreInfoDB moreInfoDb = new MoreInfoDB();
            List<CompanyInformation> companyInfo = moreInfoDb.getCompanies();
            int i = 0;
            foreach (CompanyInformation cInfo in companyInfo)
            {
                ddlCompanies.Items.Add(cInfo.CompanyName);
                ddlCompanies.Items[i++].Value = cInfo.CompanyId.ToString();
            }
            ddlCompanies.SelectedValue = 0.ToString();
            tbCompName.Text = "";
            btnDelete.Enabled = false;
        }
        else
        {
            lblSelected.ForeColor = System.Drawing.Color.Red;
        }
        
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        ddlCompanies.Items.Clear();
        MoreInfoDB moreInfoDb = new MoreInfoDB();
        List<CompanyInformation> companyInfo = moreInfoDb.getCompanies();
        int i = 0;
        foreach (CompanyInformation cInfo in companyInfo)
        {
            ddlCompanies.Items.Add(cInfo.CompanyName);
            ddlCompanies.Items[i++].Value = cInfo.CompanyId.ToString();
        }
        ddlCompanies.SelectedValue = 0.ToString();
        tbCompName.Text = "";
        lblSelected.Visible = false;
        lblSelected.Text = "";
        btnDelete.Enabled = false;
    }
}