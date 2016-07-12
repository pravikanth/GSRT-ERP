using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class Insert_MoreInfo : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserType"] != null && Session["UserType"].ToString() == "Admin")
            {
                MoreInfoDB moreInfo = new MoreInfoDB();
                List<CompanyInformation> compInfo = moreInfo.getCompanies();
                int i = 0;
                foreach (CompanyInformation cInfo in compInfo)
                {
                    uniqueCompany.Items.Add(cInfo.CompanyName);
                    uniqueCompany.Items[i++].Value = cInfo.CompanyId.ToString();
                }
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }

        }

    }
    protected void insertMoreInfo_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            string insertStatus;
            if (uniqueCompany.SelectedItem != null)
            {
                MoreInfo moreInfo = new MoreInfo();
                moreInfo.CompanyID = Convert.ToInt32(uniqueCompany.SelectedValue);
                moreInfo.CompCategory = category.Text;
                moreInfo.Opportunity = opportunities.Text;
                moreInfo.Challenges = challenges.Text;
                moreInfo.Channel = channel.Text;
                moreInfo.Trends = trends.Text;
                moreInfo.CompContact = compContact.Text;
                moreInfo.CompFax = fax.Text;
                moreInfo.CompEmail = email.Text;
                MoreInfoDB moreInfoDB = new MoreInfoDB();
                insertStatus = moreInfoDB.insertMoreInfo(moreInfo);
                if (insertStatus == "Information successfully inserted")
                {
                    lblInsertStatus.Text = insertStatus;
                    lblInsertStatus.ForeColor = System.Drawing.Color.Green;
                    category.Text = "";
                    opportunities.Text = "";
                    challenges.Text = "";
                    channel.Text = "";
                    trends.Text = "";
                    compContact.Text = "";
                    fax.Text = "";
                    email.Text = "";
                }
                else
                {
                    lblInsertStatus.Text = insertStatus;
                }
                lblInsertStatus.Visible = true;
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }


    protected void reset_Click(object sender, EventArgs e)
    {
        category.Text = "";
        opportunities.Text = "";
        challenges.Text = "";
        channel.Text = "";
        trends.Text = "";
        compContact.Text = "";
        fax.Text = "";
        email.Text = "";
    }

    protected void challenges_TextChanged(object sender, EventArgs e)
    {

    }
}