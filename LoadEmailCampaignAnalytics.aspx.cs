using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;
using System.IO;

public partial class LoadEmailCampaignAnalytics : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string ext = Path.GetExtension(FileUpload1.FileName);
        if (ext == ".xls" || ext == ".xlsx")
        {
            string strFileType = Path.GetExtension(FileUpload1.FileName).ToLower();
            string path = FileUpload1.PostedFile.FileName;
            string Ppath = Server.MapPath("~\\files\\");
            string FullFileName = string.Empty;
            FullFileName = Ppath + "InternalMarks" + strFileType;
            FileUpload1.SaveAs(FullFileName);
            string connString = "";
            if (strFileType.Trim() == ".xls")
            {
                connString = "Provider=Microsoft.Jet.OLEDB.8.0;Data Source=" + FullFileName + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
            }
            else if (strFileType.Trim() == ".xlsx")
            {
                connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + FullFileName + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
            }
            string query = "SELECT * FROM [Sheet1$]";
            OleDbConnection conn = new OleDbConnection(connString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
                OleDbCommand cmd = new OleDbCommand(query, conn);
                OleDbDataAdapter da = new OleDbDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
                da.Dispose();
                conn.Close();
                //cols = ds.Tables[0].Columns.Count;
            }
            conn.Dispose();
            int count = 0;
            int total = 0;
            string errMessage = string.Empty;
            if (GridView1.Rows.Count > 0)
            {
                SqlConnection sqlcon = new SqlConnection("Data Source=RK;Initial Catalog=GSRT;User ID=sa;Password=a");
                sqlcon.Open();
                for (int i = 1; i < GridView1.Rows.Count; i++)
                {
                    SqlCommand sqlcmd = new SqlCommand("InsertEmailCampaignData", sqlcon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.Parameters.Add(new SqlParameter("@WebinarDate", GridView1.Rows[i].Cells[0].Text));
                    sqlcmd.Parameters.Add(new SqlParameter("@DateSent", GridView1.Rows[i].Cells[1].Text));
                    sqlcmd.Parameters.Add(new SqlParameter("@EmailName", GridView1.Rows[i].Cells[2].Text));
                    sqlcmd.Parameters.Add(new SqlParameter("@Sent", GridView1.Rows[i].Cells[3].Text));
                    sqlcmd.Parameters.Add(new SqlParameter("@Bounces", GridView1.Rows[i].Cells[4].Text));
                    sqlcmd.Parameters.Add(new SqlParameter("@SpamReports", GridView1.Rows[i].Cells[5].Text));
                    sqlcmd.Parameters.Add(new SqlParameter("@OptOuts", GridView1.Rows[i].Cells[6].Text));
                    sqlcmd.Parameters.Add(new SqlParameter("@Opens", GridView1.Rows[i].Cells[7].Text));
                    sqlcmd.Parameters.Add(new SqlParameter("@Clicks", GridView1.Rows[i].Cells[8].Text));
                    sqlcmd.Parameters.Add(new SqlParameter("@Forwards", GridView1.Rows[i].Cells[9].Text));
                    try
                    {
                        sqlcmd.ExecuteNonQuery();
                        total++;
                    }
                    catch (Exception ex)
                    {
                        //Label5.Text += ex.Message;
                        count++;
                        errMessage = ex.Message;
                    }
                }
                sqlcon.Close();
                Label5.Text = "Duplicate Records: " + count.ToString() + "<br/>" + "Total Records: " + total + "<br/>" + "Data Uploaded Successfully"; // +"<br/>Error Message:" + errMessage;
                Label5.Text = errMessage;
            }
            else
            {
                Label5.Text = "invalid data format";
            }
        }
        else
        {
            Label5.Text = "Invalid File Format";
        }
    }
}