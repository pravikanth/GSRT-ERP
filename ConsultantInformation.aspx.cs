using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class ConsultantInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserType"] != null && (Session["UserType"].ToString() == "Admin" || Session["UserType"].ToString() == "Sales" || Session["UserType"].ToString() == "Mgmt"))
            {
                ConsultantInfoDB consultantInfoDB = new ConsultantInfoDB();
                GridView1.DataSource = consultantInfoDB.GetConsultants();
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
    protected void FirstNameLB_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            try
            {
                GridViewRow gridViewRow = (GridViewRow)(((LinkButton)sender).Parent.Parent);
                Session["ConsultantId"] = ((Label)(gridViewRow.Cells[0].FindControl("Consultantid"))).Text;
                Response.Redirect("ShowSubmissions.aspx");

                //Label5.Text = ((GridViewRow)(((LinkButton)sender).Parent.Parent)).ToString();
            }
            catch (Exception ex)
            {
                Label5.Text = ex.Message;
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}