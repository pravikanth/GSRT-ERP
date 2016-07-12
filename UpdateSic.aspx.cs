using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class UpdateSic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SicDB sicDb = new SicDB();
            ddlSicCodes.DataSource = sicDb.getSicCodes(0);
            ddlSicCodes.DataBind();
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        ddlSicCodes.SelectedValue = "--Select--";
        tbSicCode.Text = "";
        tbSicDesc.Text = "";
        lblUpdateStatus.Text = "";
    }

    protected void ddlSicCodes_SelectedIndexChanged(object sender, EventArgs e)
    {
            if (ddlSicCodes.SelectedValue == "--Select--")
            {
                tbSicCode.Text = "";
                tbSicDesc.Text = "";
                btnUpdateSIC.Enabled = false;
            }
            else
            {   
                SicDB sicDb = new SicDB();
                tbSicCode.Text = ddlSicCodes.SelectedValue;
                tbSicDesc.Text = sicDb.getSicDesc(Convert.ToInt32(ddlSicCodes.SelectedValue));
                btnUpdateSIC.Enabled = true;
            }
            lblUpdateStatus.Visible = false;
    }

    protected void btnUpdateSIC_Click(object sender, EventArgs e)
    {
        Sic sic = new Sic();
        sic.SicCode = Convert.ToInt32(tbSicCode.Text);
        sic.SicDescription = tbSicDesc.Text;
        SicDB sicDb = new SicDB();
        lblUpdateStatus.Text = sicDb.updateSIC(Convert.ToInt32(ddlSicCodes.SelectedValue), sic);
        if(lblUpdateStatus.Text== "SIC Updated Successfully")
        {
            lblUpdateStatus.ForeColor = System.Drawing.Color.Green;
            lblUpdateStatus.Visible = true;
        }
        else
        {
            lblUpdateStatus.ForeColor = System.Drawing.Color.Red;
            lblUpdateStatus.Visible = true;
        }
    }




    protected void btnReset_Click1(object sender, EventArgs e)
    {

    }
}