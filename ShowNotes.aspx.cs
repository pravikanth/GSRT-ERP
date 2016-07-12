using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class ShowNotes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            if (Session["PocId"] != null)
            {
                lblCityVal.Text = Session["PocId"].ToString();
                CompanyInformationDB companyInformationDB = new CompanyInformationDB();
                DataTable dt = companyInformationDB.GetCompanyContact(Convert.ToInt32(Session["PocId"]));
                lblFnameVal.Text = dt.Rows[0][0].ToString();
                lblLNameVal.Text = dt.Rows[0][1].ToString();
                lblTitleVal.Text = dt.Rows[0][2].ToString();
                lblPhoneVal.Text = dt.Rows[0][3].ToString();
                lblEmailVal.Text = dt.Rows[0][4].ToString();
                lblCompanyNameVal.Text = dt.Rows[0][5].ToString();
                lblDirNumberVal.Text = dt.Rows[0][6].ToString();
                lblCityVal.Text = dt.Rows[0][7].ToString();
                lblStateVal.Text = dt.Rows[0][8].ToString();
                lblZipVal.Text = dt.Rows[0][9].ToString();
                LoadLog();
            }
            else
            {
                Response.Redirect("ShowContacts.aspx");
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
    protected void LoadLog()
    {
        if (Session["UserType"] != null)
        {
            CallLogDB callLogDB = new CallLogDB();
            DataTable notes = callLogDB.GetLog(Convert.ToInt32(Session["PocId"]));
            GridView1.DataSource = notes;
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
    protected void btnNotes_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] != null)
        {
            if (Session["PocId"] != null)
            {
                if (TextBox1.Text.Length < 500)
                {
                    try
                    {
                        CallLog callLog = new CallLog();
                        callLog.PocId = Convert.ToInt32(Session["PocId"]);
                        callLog.Notes = TextBox1.Text;
                        callLog.LogDate = DateTime.Now;
                        AppLibrary.Login login = (AppLibrary.Login)Session["User"];
                        callLog.Username = login.UserName;
                        CallLogDB callLogDB = new CallLogDB();
                        int i = callLogDB.InsertLog(callLog);
                        LoadLog();
                        TextBox1.Text = "";
                    }
                    catch (Exception ex)
                    {
                        lblErrorMessage.Text = ex.Message;
                    }

                }
                else
                {
                    lblErrorMessage.Text = "Please enter less than 500 characters";
                }
            }
            else
            {
                Response.Redirect("ShowContacts.aspx");
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}