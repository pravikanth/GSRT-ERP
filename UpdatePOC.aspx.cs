using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using AppLibrary;

public partial class UpdatePOC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MoreInfoDB moreInfo = new MoreInfoDB();
            DataTable AllCompanies = moreInfo.getAllCompanies();
            int i = 0;
            for (i = 0; i < AllCompanies.Rows.Count; i++)
            {
                ddlCompanyId.Items.Add(AllCompanies.Rows[i][3].ToString());
                ddlCompanyId.Items[i].Value = AllCompanies.Rows[i][0].ToString();
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Poc poc = new Poc();
        poc.PocID = Convert.ToInt32(ddlSelectPoc.SelectedValue);
        poc.CompanyID = Convert.ToInt32(ddlCompanyId.SelectedValue);
        if(ddlDecisionMaker.SelectedValue == "True")
            poc.DecisionMaker = true ;
        else
            poc.DecisionMaker = false;
        poc.PocFname = txtFirstName.Text;
        poc.PocLname = txtLastName.Text;
        poc.PocPhone = txtPhone.Text;
        poc.Poctitle = txtTitle.Text;
        poc.PocEmail = txtEmail.Text;
        PointOfContactDB pocDb = new PointOfContactDB();
        lblErrorMessage.Text = pocDb.UpdatePoc(poc);
        Clear();
        tbPoc.Text = "";
        ddlSelectPoc.Items.Clear();
        //lblErrorMessage.Text = txtEmail.Text + " " + txtFirstName.Text + " " + txtLastName.Text + " " + txtPhone.Text + " " + txtTitle.Text + " " + ddlDecisionMaker.SelectedValue + ddlCompanyId.SelectedValue + ddlSelectPoc.SelectedValue;
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Clear();
    }

    protected void Clear()
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtTitle.Text = "";
        txtPhone.Text = "";
        txtEmail.Text = "";
    }
    protected void btnGo_Click(object sender, EventArgs e)
    {
        Clear();
        PointOfContactDB pocDb = new PointOfContactDB();
        ddlSelectPoc.Items.Clear();
        DataTable pocList = pocDb.GetPocList(tbPoc.Text);
        int i = 0;
        for (i = 0; i < pocList.Rows.Count; i++)
        {
            ddlSelectPoc.Items.Add(pocList.Rows[i][1].ToString() + " " + pocList.Rows[i][2].ToString());
            ddlSelectPoc.Items[i].Value = pocList.Rows[i][0].ToString();
        }
    }

    protected void ddlSelectPoc_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblErrorMessage.ForeColor = System.Drawing.Color.Blue;
        if (ddlSelectPoc.SelectedValue == "--Select--")
        {
            lblErrorMessage.Visible = false;
            lblErrorMessage.Text = "";
            tbPoc.Text = "";
        }
        else
        {
            //lblErrorMessage.Text = "Selected POC: " + ddlSelectPoc.SelectedValue;
            lblErrorMessage.Visible = true;
            PointOfContactDB pocDb = new PointOfContactDB();
            DataTable pocList = pocDb.GetPocList(tbPoc.Text);
            int i = 0;
            for (i = 0; i < pocList.Rows.Count; i++)
            {
                if (pocList.Rows[i][0].ToString() == ddlSelectPoc.SelectedValue)
                {
                    //lblErrorMessage.Text = pocList.Rows[i][0].ToString() + "  " +
                    //                         pocList.Rows[i][1].ToString() + "  " +
                    //                          pocList.Rows[i][2].ToString() + "  " +
                    //                           pocList.Rows[i][3].ToString() + "  " +
                    //                            pocList.Rows[i][4].ToString() + "  " +
                    //                             pocList.Rows[i][5].ToString() + "  " +
                    //                              pocList.Rows[i][6].ToString() + "  " +
                    //                               pocList.Rows[i][7].ToString() + "  " +
                    //                               pocList.Rows[i][8].ToString() + "  " +
                    //                               pocList.Rows[i][9].ToString() + "  ";
                    ddlCompanyId.SelectedValue = pocList.Rows[i][8].ToString();
                    txtFirstName.Text = pocList.Rows[i][1].ToString();
                    txtLastName.Text = pocList.Rows[i][2].ToString();
                    txtTitle.Text = pocList.Rows[i][3].ToString();
                    txtPhone.Text = pocList.Rows[i][5].ToString();
                    ddlDecisionMaker.SelectedValue = pocList.Rows[i][6].ToString();
                    txtEmail.Text = pocList.Rows[i][9].ToString();


                }
            }
        }
    }
}