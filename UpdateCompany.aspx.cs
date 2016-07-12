using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class UpdateCompany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            MoreInfoDB moreInfoDb = new MoreInfoDB();
            SicDB sicDb = new SicDB();
            AddressDB addDb = new AddressDB();
            IndustryDB indDb = new IndustryDB();
            List<CompanyInformation> companyInfo = moreInfoDb.getCompanies();
            int i = 1;
            foreach (CompanyInformation cInfo in companyInfo)
            {
                ddlCompanies.Items.Add(cInfo.CompanyName);
                ddlCompanies.Items[i].Value = cInfo.CompanyId.ToString();
            }
            ddlSicCodes.DataSource = sicDb.getSicCodes(1);
            ddlSicCodes.DataBind();
            ddlCities.DataSource = addDb.getCities(1);
            ddlCities.DataBind();
            ddlStates.DataSource = addDb.getStates();
            ddlStates.DataBind();
            ddlZipCodes.DataSource = addDb.getZips();
            ddlZipCodes.DataBind();
            ddlIndustry.DataSource = indDb.getIndustries(1);
            ddlIndustry.DataBind();
            ddlCompanies.SelectedValue = "0";
            tbSicCode.Text = "";
            tbSicDesc.Text = "";
            tbCity.Text = "";
            tbState.Text = "";
            tbZipCode.Text = "";
            
        }
       
    }

    protected void ddlCompanies_SelectedIndexChanged(object sender, EventArgs e)
    {
        CompanyInformation compInfo = new CompanyInformation();
        MoreInfo moreinfo = new MoreInfo();

        CompanyInformationDB compInfoDb = new CompanyInformationDB();
        compInfo=compInfoDb.getCompanyInfo(Convert.ToInt32(ddlCompanies.SelectedValue));
        moreinfo= compInfoDb.getMoreCompanyInfo(Convert.ToInt32(ddlCompanies.SelectedValue));
        tbCompName.Text= compInfo.CompanyName;
        tbSize.Text= compInfo.SizeSegment;
        tbAccntOwner.Text= compInfo.AccountOwner;
        tbWebsite.Text= compInfo.Website;
        tbIndustry.Text= compInfo.IndustryDesc;
        ddlIndustry.Text = compInfo.IndustryDesc;
        tbSicCode.Text = (compInfo.SicCode).ToString();
        ddlSicCodes.Text = (compInfo.SicCode).ToString();
        tbSicDesc.Text= compInfo.SicDesc;
        ddlCities.Text = compInfo.PhysicalCity; 
        tbCity.Text= compInfo.PhysicalCity;
        ddlStates.Text = compInfo.PhysicalState;
        tbState.Text= compInfo.PhysicalState;
        ddlZipCodes.Text = compInfo.PhysicalZip;
        tbZipCode.Text= compInfo.PhysicalZip;
        tbCategory.Text= moreinfo.CompCategory;
        tbChannel.Text= moreinfo.Channel;
        tbChallenges.Text= moreinfo.Challenges;
        tbTrends.Text=moreinfo.Trends;
        tbOpportunity.Text= moreinfo.Opportunity;
        tbContact.Text= moreinfo.CompContact;
        tbFax.Text= moreinfo.CompFax;
        tbEmail.Text= moreinfo.CompEmail;

        if (ddlCompanies.SelectedValue != "0")
        {
            tbCompName.Enabled = true;
            tbSize.Enabled = true;
            tbAccntOwner.Enabled = true;
            tbWebsite.Enabled = true;
            tbIndustry.Enabled = true;
            ddlIndustry.Enabled = true;
            ddlSicCodes.Enabled = true;
            ddlCities.Enabled = true;
            ddlStates.Enabled = true;
            ddlZipCodes.Enabled = true;
            tbFullAddress.Enabled = true;
            tbCategory.Enabled = true;
            tbChallenges.Enabled = true;
            tbChannel.Enabled = true;
            tbOpportunity.Enabled = true;
            tbTrends.Enabled = true;
            tbContact.Enabled = true;
            tbFax.Enabled = true;
            tbEmail.Enabled = true;
            
            
            
            
        }
        else
        {
            tbCompName.Enabled = false;
            tbSize.Enabled = false;
            tbAccntOwner.Enabled = false;
            tbWebsite.Enabled = false;
            tbIndustry.Enabled = false;
            ddlIndustry.Enabled = false;
            ddlSicCodes.Enabled = false;
            tbSicCode.Enabled = false;
            tbSicDesc.Enabled = false;
            ddlCities.Enabled = false;
            tbCity.Enabled = false;
            ddlStates.Enabled = false;
            tbState.Enabled = false;
            ddlZipCodes.Enabled = false;
            tbZipCode.Enabled = false;
            tbFullAddress.Enabled = false;
            tbCategory.Enabled = false;
            tbChallenges.Enabled = false;
            tbChannel.Enabled = false;
            tbOpportunity.Enabled = false;
            tbTrends.Enabled = false;
            tbContact.Enabled = false;
            tbFax.Enabled = false;
            tbEmail.Enabled = false;
            ddlIndustry.SelectedValue = "--Select--";
            ddlSicCodes.SelectedValue = "--Select--";
            ddlCities.SelectedValue = "--Select--";
            ddlStates.SelectedValue = "--Select--";
            ddlZipCodes.SelectedValue = "--Select--";
            

        }
        lblInsertStatus.Visible = false;
    }

    protected void tbUpdate_Click(object sender, EventArgs e)
    {

        CompanyInformation compInfo = new CompanyInformation();
        MoreInfo moreinfo = new MoreInfo();
        compInfo.CompanyId = Convert.ToInt32(ddlCompanies.SelectedValue);
        compInfo.CompanyName = tbCompName.Text;
        compInfo.ProspectType = 1;
        compInfo.SizeSegment = tbSize.Text;
        compInfo.AccountOwner = tbAccntOwner.Text;
        compInfo.Website = tbWebsite.Text;
        compInfo.IndustryDesc = tbIndustry.Text;
        if (tbSicCode.Text == "")
        { compInfo.SicCode = 0; }
        else { 
        compInfo.SicCode = Convert.ToInt32(tbSicCode.Text); }
        compInfo.SicDesc = tbSicDesc.Text;
        compInfo.PhysicalCity = tbCity.Text;
        compInfo.PhysicalState = tbState.Text;
        compInfo.PhysicalZip = tbZipCode.Text;
        compInfo.FullAddress = tbFullAddress.Text;
        moreinfo.CompCategory = tbCategory.Text;
        moreinfo.Channel = tbChannel.Text;
        moreinfo.Challenges = tbChallenges.Text;
        moreinfo.Trends = tbTrends.Text;
        moreinfo.Opportunity = tbOpportunity.Text;
        moreinfo.CompContact = tbContact.Text;
        moreinfo.CompFax = tbFax.Text;
        moreinfo.CompEmail = tbEmail.Text;
        CompanyInformationDB compInfoDb = new CompanyInformationDB();
        lblInsertStatus.Text= compInfoDb.updateCompany(compInfo, moreinfo);
        if(lblInsertStatus.Text== "Company Updated Successfully")
        {
            lblInsertStatus.ForeColor = System.Drawing.Color.Green;
            lblInsertStatus.Visible = true;

            tbCompName.Text = "";
            tbSize.Text = "";
            tbAccntOwner.Text ="";
            tbWebsite.Text ="";
            tbIndustry.Text ="";
            ddlIndustry.SelectedValue = "--Select--";
            ddlSicCodes.SelectedValue = "--Select--";
            tbSicCode.Text ="";
            tbSicDesc.Text = "";
            ddlCities.SelectedValue = "--Select--";
            tbCity.Text = "";
            ddlStates.SelectedValue = "--Select--";
            tbState.Text = "";
            ddlZipCodes.SelectedValue = "--Select--";
            tbZipCode.Text = "";
            tbFullAddress.Text = "";
            tbCategory.Text = "";
            tbChallenges.Text = "";
            tbChannel.Text = "";
            tbOpportunity.Text = "";
            tbTrends.Text = "";
            tbContact.Text = "";
            tbFax.Text = "";
            tbEmail.Text = "";

        }
        else
        {
            lblInsertStatus.ForeColor = System.Drawing.Color.Red;
            lblInsertStatus.Visible = true;
        }
    }

    protected void tbReset_Click(object sender, EventArgs e)
    {
        tbCompName.Text = "";
        tbSize.Text = "";
        tbAccntOwner.Text = "";
        tbWebsite.Text = "";
        tbIndustry.Text = "";
        ddlIndustry.SelectedValue = "--Select--";
        ddlSicCodes.SelectedValue = "--Select--";
        tbSicCode.Text = "";
        tbSicDesc.Text = "";
        ddlCities.SelectedValue = "--Select--";
        tbCity.Text = "";
        ddlStates.SelectedValue = "--Select--";
        tbState.Text = "";
        ddlZipCodes.SelectedValue = "--Select--";
        tbZipCode.Text = "";
        tbFullAddress.Text = "";
        tbCategory.Text = "";
        tbChallenges.Text = "";
        tbChannel.Text = "";
        tbOpportunity.Text = "";
        tbTrends.Text = "";
        tbContact.Text = "";
        tbFax.Text = "";
        tbEmail.Text = "";
        ddlCompanies.SelectedValue = "--Select--";
    }

    protected void ddlSicCodes_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddlSicCodes.SelectedValue=="--Other--")
        {
            tbSicCode.Text = "";
            tbSicDesc.Text = "";
            tbSicCode.Enabled = true;
            tbSicDesc.Enabled = true;
        }
        else if (ddlSicCodes.SelectedValue=="--Select--")
        {
            tbSicCode.Enabled = false;
            tbSicDesc.Enabled = false;
            tbSicCode.Text = "";
            tbSicDesc.Text = "";
        }
        else
        {
            tbSicCode.Enabled = false;
            tbSicDesc.Enabled = false;
            tbSicCode.Text = ddlSicCodes.SelectedValue;
        }
    }

    protected void ddlCities_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddlCities.SelectedValue=="--Other--")
        {
            tbCity.Text = "";
            tbCity.Enabled = true;
        }
        else if (ddlCities.SelectedValue=="--Select--")
        {
            tbCity.Enabled = false;
            tbCity.Text = "";
        }
        else
        {
            tbCity.Enabled = false;
            tbCity.Text = ddlCities.SelectedValue;
        }
    }

    protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlStates.SelectedValue == "--Other--")
        {
            tbState.Text = "";
            tbState.Enabled = true;
        }
        else if (ddlStates.SelectedValue == "--Select--")
        {
            tbState.Enabled = false;
            tbState.Text = "";
        }
        else
        {
            tbState.Enabled = false;
            tbState.Text = ddlStates.SelectedValue;
        }
    }

    protected void ddlZipCodes_SelectedIndexChanged(object sender, EventArgs e)
    {
    
        if (ddlZipCodes.SelectedValue == "--Other--")
        {
            tbZipCode.Text = "";
            tbZipCode.Enabled = true;
        }
        else if (ddlZipCodes.SelectedValue == "--Select--")
        {
            tbZipCode.Enabled = false;
            tbZipCode.Text = "";
        }
        else
        {
            tbZipCode.Enabled = false;
            tbZipCode.Text = ddlZipCodes.SelectedValue;
        }
    }

    protected void ddlIndustry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlIndustry.SelectedValue == "--Other--")
        {
            tbIndustry.Text = "";
            tbIndustry.Enabled = true;
        }
        else if (ddlIndustry.SelectedValue == "--Select--")
        {
            tbIndustry.Enabled = false;
            tbIndustry.Text = "";
        }
        else
        {
            tbIndustry.Enabled = false;
            tbIndustry.Text = ddlIndustry.SelectedValue;
        }
    }
}