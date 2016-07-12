using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppLibrary;

public partial class ShowContacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserType"] != null && (Session["UserType"].ToString() == "Admin" || Session["UserType"].ToString() == "PLM" || Session["UserType"].ToString() == "Mgmt"))
            {
                ContactsDB contactsDB = new ContactsDB();
                GridView1.DataSource = contactsDB.GetContacts("");
                GridView1.DataBind();
                //PointOfContactDB pointOfContactDB = new PointOfContactDB();
                //GridView1.DataSource = pointOfContactDB.GetPocFromSearch(0, "");
                //GridView1.DataBind();

            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
    protected void Notes_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            GridViewRow gridViewRow = (GridViewRow)(((LinkButton)sender).Parent.Parent);
            Session["PocId"] = ((Label)gridViewRow.Cells[0].FindControl("PocID")).Text;
            Response.Redirect("ShowNotes.aspx");
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            string name;
            ContactsDB contactsDB = new ContactsDB();
            if (tbName.Text == null)
            {
                name = "";
            }
            else
                name = tbName.Text;
            GridView1.DataSource = contactsDB.GetContacts(name);
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            ContactsDB contactsDB = new ContactsDB();
            tbName.Text = "";
            GridView1.DataSource = contactsDB.GetContacts("");
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}