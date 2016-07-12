using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class DeleteSic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SicDB sicDb = new SicDB();
            ddlSicCodes.DataSource = sicDb.getSicCodes(0);
            ddlSicCodes.DataBind();
            ddlSicCodes.SelectedValue = "--Select--";
            lblSelectedSic.Visible = false;
        }

    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        SicDB sicDb = new SicDB();
        ddlSicCodes.Items.Clear();
        ddlSicCodes.DataSource = sicDb.getSicCodesFromSearch(0,Convert.ToInt32(tbSic.Text));
        ddlSicCodes.DataBind();
        ddlSicCodes.SelectedValue = "--Select--";
    }

    protected void ddlSicCodes_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddlSicCodes.SelectedValue=="--Select--")
        {
            lblSelectedSic.Visible = false;
            btnDelete.Enabled = false;
            tbSic.Text = "";
        }
        else
        {
            lblSelectedSic.ForeColor = System.Drawing.Color.Blue;
            lblSelectedSic.Text = "Selected SIC: " + ddlSicCodes.SelectedValue;
            lblSelectedSic.Visible = true;
            btnDelete.Enabled = true;
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        tbSic.Text = "";
        ddlSicCodes.SelectedValue = "--Select--";
        lblSelectedSic.Visible = false;
        lblSelectedSic.Text = "";
        btnDelete.Enabled = false;
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SicDB sicDb = new SicDB();
        lblSelectedSic.Text = sicDb.deleteSIC(Convert.ToInt32(ddlSicCodes.SelectedValue));
        if (lblSelectedSic.Text == "SIC Code: " + ddlSicCodes.SelectedValue + " Deleted Successfully")
        {
            lblSelectedSic.ForeColor = System.Drawing.Color.Green;
            lblSelectedSic.Visible = true;
            ddlSicCodes.Items.Clear();
            ddlSicCodes.DataSource = sicDb.getSicCodes(0);
            ddlSicCodes.DataBind();
            ddlSicCodes.SelectedValue = "--Select--";
            btnDelete.Enabled = false;
            tbSic.Text = "";
        }
        else
        {
            lblSelectedSic.ForeColor = System.Drawing.Color.Red;
            lblSelectedSic.Visible = true;
        }
    }
}