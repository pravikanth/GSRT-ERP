using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class DeletePOC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            PointOfContactDB pocDb = new PointOfContactDB();
            ddlSelectPoc.DataSource = pocDb.GetPocFromSearch(0, "");
            ddlSelectPoc.DataBind();
            ddlSelectPoc.SelectedValue = "--Select--";
            lblSelectedPOC.Visible = false;
            lblSelectedPOC.Text = "";
        }

    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        PointOfContactDB pocDb = new PointOfContactDB();
        ddlSelectPoc.Items.Clear();
        ddlSelectPoc.DataSource = pocDb.GetPocFromSearch(0, tbPoc.Text);
        ddlSelectPoc.DataBind();
        ddlSelectPoc.SelectedValue = "--Select--";
    }

    protected void ddlSelectPoc_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblSelectedPOC.ForeColor = System.Drawing.Color.Blue;
        if(ddlSelectPoc.SelectedValue=="--Select--")
        {
            lblSelectedPOC.Visible = false;
            lblSelectedPOC.Text = "";
            btnDelete.Enabled = false;
            tbPoc.Text = "";
        }
        else
        {
            lblSelectedPOC.Text = "Selected POC: "+ddlSelectPoc.SelectedValue;
            lblSelectedPOC.Visible = true;
            btnDelete.Enabled = true;
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        ddlSelectPoc.Items.Clear();
        PointOfContactDB pocDb = new PointOfContactDB();
        ddlSelectPoc.DataSource = pocDb.GetPocFromSearch(0, "");
        ddlSelectPoc.DataBind();
        ddlSelectPoc.SelectedValue = "--Select--";
        tbPoc.Text = "";
        lblSelectedPOC.Text = "";
        lblSelectedPOC.Visible = false;
        btnDelete.Enabled = false;
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        PointOfContactDB pocDb = new PointOfContactDB();
        lblSelectedPOC.Text = pocDb.deletePoc(ddlSelectPoc.SelectedValue);
        if(lblSelectedPOC.Text== "POC: " + ddlSelectPoc.SelectedValue + " Deleted Successfully")
        {
            lblSelectedPOC.ForeColor = System.Drawing.Color.Green;
            lblSelectedPOC.Visible = true;
            ddlSelectPoc.SelectedValue = "--Select--";
            tbPoc.Text = "";
            btnDelete.Enabled = false;
        }
        else
        {
            lblSelectedPOC.ForeColor = System.Drawing.Color.Red;
            lblSelectedPOC.Visible = true;
        }

        
    }
}