using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class DeleteIndustry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadIndustries();
            //btnDelete.Enabled = false;
        }
    }

    protected void LoadIndustries()
    {
        IndustryDB indDb = new IndustryDB();
        ddlIndustries.DataSource = indDb.getIndustries(0);
        ddlIndustries.DataBind();
        ddlIndustries.SelectedValue = "--Select--";
    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        IndustryDB indDb = new IndustryDB();
        ddlIndustries.Items.Clear();
        ddlIndustries.DataSource = indDb.getIndustriesFromSearch(tbIndustry.Text);
        ddlIndustries.DataBind();
        ddlIndustries.SelectedValue = "--Select--";
    }

    protected void ddlIndustries_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblSelectedIndustry.ForeColor = System.Drawing.Color.Blue;
        if (ddlIndustries.SelectedValue == "--Select--")
        {
            lblSelectedIndustry.Text = "";
            lblSelectedIndustry.Visible = false;
            btnDelete.Enabled = false;
            tbIndustry.Text = "";
        }
        else
        {
            lblSelectedIndustry.Text = "Selected Industry: " + ddlIndustries.SelectedValue;
            btnDelete.Enabled = true;
            lblSelectedIndustry.Visible = true;
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        tbIndustry.Text = "";
        lblSelectedIndustry.Text = "";
        lblSelectedIndustry.Visible = false;
        btnDelete.Enabled = false;
        ddlIndustries.Items.Clear();
        IndustryDB indDb = new IndustryDB();
        ddlIndustries.DataSource = indDb.getIndustries(0);
        ddlIndustries.DataBind();
        ddlIndustries.SelectedValue = "--Select--";
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        IndustryDB indDb = new IndustryDB();
        lblSelectedIndustry.Text = indDb.deleteIndustry(ddlIndustries.SelectedValue);
        if (lblSelectedIndustry.Text == "Industry " + ddlIndustries.SelectedValue + " Deleted Successfully")
        {
            lblSelectedIndustry.ForeColor = System.Drawing.Color.Green;
            lblSelectedIndustry.Visible = true;
            ddlIndustries.SelectedValue = "--Select--";
            tbIndustry.Text = "";
            btnDelete.Enabled = false;
        }
        else
        {
            lblSelectedIndustry.ForeColor = System.Drawing.Color.Red;
            lblSelectedIndustry.Visible = true;
        }
    }
}