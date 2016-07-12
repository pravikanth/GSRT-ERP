using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class ViewCompanies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserType"] != null && (Session["UserType"].ToString() == "Admin" || Session["UserType"].ToString() == "PLM" || Session["UserType"].ToString() == "Mgmt"))
            {
                SicDB sicDb = new SicDB();
                AddressDB addDb = new AddressDB();
                CompanyInformationDB compInfoDb = new CompanyInformationDB();
                cities.DataSource = addDb.getCities(0);
                cities.DataBind();
                sicCodes.DataSource = sicDb.getSicCodes(0);
                sicCodes.DataBind();
                cities.SelectedValue = "--Select--";
                sicCodes.SelectedValue = "--Select--";
                GridView1.DataSource = compInfoDb.companyDetails("", 0);
                GridView1.DataBind();
            }
        }
        //else
        //{
        //    Response.Redirect("LoginPage.aspx");
        //}
    }



    protected void btnView_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["UserType"] != null && (Session["UserType"].ToString() == "Admin" || Session["UserType"].ToString() == "PLM" || Session["UserType"].ToString() == "Mgmt"))
            {
                int sicCode;
                string city;
                CompanyInformationDB compInfoDb = new CompanyInformationDB();
                if (sicCodes.Text == "--Select--")
                {
                    sicCode = 0;
                }
                else
                {
                    sicCode = Convert.ToInt32(sicCodes.Text);
                }
                if (cities.Text == "--Select--")
                {
                    city = "";
                }
                else
                {
                    city = cities.Text;
                }
                GridView1.DataSource = compInfoDb.companyDetails(city, sicCode);
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            CompanyInformationDB compInfoDb = new CompanyInformationDB();
            cities.SelectedValue = "--Select--";
            sicCodes.SelectedValue = "--Select--";
            GridView1.DataSource = compInfoDb.companyDetails("", 0);
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //GridView1.PageIndex = e.NewPageIndex;
        //CompanyInformationDB compInfoDb = new CompanyInformationDB();
        //GridView1.DataSource = compInfoDb.companyDetails("", 0);
        //GridView1.DataBind();
    }
}