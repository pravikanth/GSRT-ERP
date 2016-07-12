using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;

public partial class ProspectsList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection("Data Source=RK;Initial Catalog=GSRT;User ID=sa;Password=a");
        sqlcon.Open();
        SqlCommand cmd = new SqlCommand("select * from ProspectsList", sqlcon);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        da.Dispose();
        sqlcon.Close();
    }
}