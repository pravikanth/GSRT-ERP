using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class InsertCompany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
            {
                SicDB sicDb = new SicDB();
                IndustryDB indDb = new IndustryDB();
                AddressDB addDb = new AddressDB();
                sicCodes.DataSource = sicDb.getSicCodes(1);
                sicCodes.DataBind();
                Industries.DataSource = indDb.getIndustries(0);
                Industries.DataBind();
                cities.DataSource = addDb.getCities(1);
                cities.DataBind();
                states.DataSource = addDb.getStates();
                states.DataBind();
                zips.DataSource = addDb.getZips();
                zips.DataBind();
                cities.SelectedValue = "--Select--";
                states.SelectedValue = "--Select--";
                zips.SelectedValue = "--Select--";
                Industries.SelectedValue = "--Select--";
                sicCodes.SelectedValue = "--Select--";
                sicCode.Text = Convert.ToString(0);
                lblStatus.Visible = false;
                EnableSICControls();
                EnableIndustryControls();
                EnableCitiesControls();
                EnableStatesControl();
                EnableZipsControls();
                sicCode.Text = "";
                sicDescription.Text = "";
                Industry.Text = "";
                city.Text = "";
                state.Text = "";
                zip.Text = "";
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }

    protected void sicCodes_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            EnableSICControls();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }

    protected void EnableSICControls()
    {

        try
        {
            if (sicCodes.Text == "--Other--")
            {
                sicCode.Enabled = true;
                sicDescription.Enabled = true;
            }
            else
            {
                sicCode.Enabled = false;
                sicDescription.Enabled = false;
                sicCode.Text = sicCodes.Text;
            }
        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }
    }


    protected void industries_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (Session["UserType"] != null)
            {
                EnableIndustryControls();
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

    protected void EnableIndustryControls()
    {
        try
        {
            if (Industries.Text == "--Other--")
            {
                Industry.Enabled = true;
            }
            else
            {
                Industry.Enabled = false;
                Industry.Text = Industries.Text;
            }
        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }
    }

    protected void cities_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            EnableCitiesControls();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }


    }
    protected void EnableCitiesControls()
    {
        try
        {
            if (cities.SelectedValue == "--Other--")
            {
                city.Enabled = true;
            }
            else
            {
                city.Enabled = false;
                city.Text = cities.SelectedValue;
            }
        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }
    }

    protected void states_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            EnableStatesControl();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
    protected void EnableStatesControl()
    {
        try
        {
            if (states.SelectedValue == "--Other--")
            {
                state.Enabled = true;
            }
            else
            {
                state.Enabled = false;
                state.Text = states.SelectedValue;
            }
        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }

    }

    protected void zips_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            EnableZipsControls();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }

    protected void EnableZipsControls()
    {
        try
        {
            if (zips.SelectedValue == "--Other--")
            {
                zip.Enabled = true;
            }
            else
            {
                zip.Enabled = false;
                zip.Text = zips.SelectedValue;
            }
        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {

            if (CompanyName.Text != "")
            {
                CompanyInformation compInfo = new CompanyInformation();
                compInfo.CompanyName = CompanyName.Text;
                compInfo.ProspectType = 1;
                compInfo.SizeSegment = SizeSegment.Text;
                compInfo.AccountOwner = AccountOwner.Text;
                compInfo.Website = Website.Text;
                compInfo.SicCode = Convert.ToInt32(sicCode.Text);
                compInfo.SicDesc = sicDescription.Text;
                compInfo.IndustryDesc = Industry.Text;
                compInfo.PhysicalCity = city.Text;
                compInfo.PhysicalState = state.Text;
                compInfo.PhysicalZip = zip.Text;
                compInfo.FullAddress = fullAddress.Text;
                CompanyInformationDB compInfoDb = new CompanyInformationDB();
                lblStatus.Text = compInfoDb.InsertCompany(compInfo);
                if (lblStatus.Text == "Company Inserted Successfully")
                {
                    lblStatus.ForeColor = System.Drawing.Color.Green;
                    CompanyName.Text = "";
                    SizeSegment.Text = "";
                    AccountOwner.Text = "";
                    Website.Text = "";
                    sicCode.Text = "";
                    sicDescription.Text = "";
                    Industry.Text = "";
                    city.Text = "";
                    state.Text = "";
                    zip.Text = "";
                    fullAddress.Text = "";
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

        CompanyName.Text = "";
        SizeSegment.Text = "";
        AccountOwner.Text = "";
        Website.Text = "";
        sicCode.Text = "";
        sicDescription.Text = "";
        Industry.Text = "";
        city.Text = "";
        state.Text = "";
        zip.Text = "";
        fullAddress.Text = "";

    }

    protected void reset_Click1(object sender, EventArgs e)
    {

        CompanyName.Text = "";
        SizeSegment.Text = "";
        AccountOwner.Text = "";
        Website.Text = "";
        sicCode.Text = "";
        sicDescription.Text = "";
        Industry.Text = "";
        city.Text = "";
        state.Text = "";
        zip.Text = "";
        fullAddress.Text = "";
        Response.Redirect("LoginPage.aspx");
    }
}
