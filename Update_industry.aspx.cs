using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class Update_industry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadIndustries();
        }
    }

    protected void LoadIndustries()
    {
        IndustryDB indDb = new IndustryDB();
        ddlIndustries.DataSource = indDb.getIndustries(0);
        ddlIndustries.DataBind();
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        ddlIndustries.SelectedValue = "--Select--";
        tbOldDesc.Text = "";
        tbNewDesc.Text = "";
    }

    protected void ddlIndustries_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (ddlIndustries.SelectedValue == "--Select--")
            {
                tbOldDesc.Text = "";
                tbNewDesc.Text = "";
                btnUpdate.Enabled = false;
            }
            else
            {
                tbOldDesc.Text = ddlIndustries.SelectedValue;
                tbNewDesc.Text = "";
                btnUpdate.Enabled = true;
            }
            lblUpdateStatus.Visible = false;
        }
        catch (Exception ex)
        {
            lblUpdateStatus.Visible = true;
            lblUpdateStatus.Text = ex.Message;
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            IndustryDB indDb = new IndustryDB();
            lblUpdateStatus.Text = indDb.updateIndustry(tbOldDesc.Text, tbNewDesc.Text);
            if (lblUpdateStatus.Text == "Industry Updated Successfully")
            {
                lblUpdateStatus.ForeColor = System.Drawing.Color.Green;
                lblUpdateStatus.Visible = true;
                LoadIndustries();
                tbOldDesc.Text = "";
                tbNewDesc.Text = "";
            }
            else
            {
                lblUpdateStatus.ForeColor = System.Drawing.Color.Red;
                lblUpdateStatus.Visible = true;
            }
        }
        catch (Exception ex)
        {
            lblUpdateStatus.Text = ex.Message;
        }
    }
}