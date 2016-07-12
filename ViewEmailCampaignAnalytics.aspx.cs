using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;
using System.IO;

public partial class ViewEmailCampaignAnalytics : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connString = "";
        connString = "Data Source=RK;Initial catalog=GSRT;user id=sa;password=a";
        string query = "SELECT * FROM EmailCampaignAnalytics";
        SqlConnection conn = new SqlConnection(connString);
        if (conn.State == ConnectionState.Closed)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            da.Dispose();
            conn.Close();
            //cols = ds.Tables[0].Columns.Count;
        }
        conn.Dispose();
    }
}