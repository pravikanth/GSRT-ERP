using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class ShowCompanies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != null && (Session["UserType"].ToString() == "Admin" || Session["UserType"].ToString() == "PLM" || Session["UserType"].ToString() == "Mgmt"))
        {
            //CompanyInformation companyInformation = new CompanyInformation();
            //companyInformation.CompanyId = 1;
            //companyInformation.CompanyName = "GSR Technologies, Inc";
            //companyInformation.ProspectType = 1;
            //companyInformation.SizeSegment = "25M";
            //companyInformation.AccountOwner = "Subba";
            //companyInformation.SicCode = 1234;
            //companyInformation.IndustryDesc = "Medical Devices";
            //companyInformation.PhysicalCity = "Irvine";
            //List<CompanyInformation> list = new List<CompanyInformation>();
            //list.Add(companyInformation);
            CompanyInformationDB companyInformationDB = new CompanyInformationDB();
            GridView1.DataSource = companyInformationDB.getAllCompanies();
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }

    }
}