using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;
using System.IO;

public partial class LoadProspectsFromExcel : System.Web.UI.Page
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
            string Ppath = Server.MapPath("~\\Files\\");
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
            //int count = 0;
            //int total = 0;
            //string errMessage = string.Empty;
            //if (GridView1.Rows.Count > 0)
            //{
            //    SqlConnection sqlcon = new SqlConnection("Data Source=RK;Initial Catalog=SMAC_GSRT;Integrated Security=True;");
            //    sqlcon.Open();
            //    for (int i = 1; i < GridView1.Rows.Count; i++)
            //    {
            //        string SqlQuery = string.Empty;
            //        SqlQuery = "insert into PLM.TempCompany(DunsNumber,Company_Name,prospect_type_new,size_segment,accnt_owner,website,SidCode,Industry,PhysicalCity,PhysicalState,PhysicalZip,Full_Address) values(" + GridView1.Rows[i].Cells[0].Text + ", '" + GridView1.Rows[i].Cells[1].Text + "', 1, '" + GridView1.Rows[i].Cells[3].Text + "', '" + GridView1.Rows[i].Cells[4].Text + "', '" + GridView1.Rows[i].Cells[5].Text + "', " + GridView1.Rows[i].Cells[6].Text + ", '" + GridView1.Rows[i].Cells[7].Text + "', '" + GridView1.Rows[i].Cells[8].Text + "', '" + GridView1.Rows[i].Cells[9].Text + "', '" + GridView1.Rows[i].Cells[10].Text + "', '" + GridView1.Rows[i].Cells[11].Text + "')";
            //        SqlCommand sqlcmd = new SqlCommand(SqlQuery, sqlcon);
            //        try
            //        {
            //            sqlcmd.ExecuteNonQuery();
            //            total++;
            //        }
            //        catch (Exception ex)
            //        {
            //            //Label5.Text += ex.Message;
            //            count++;
            //            errMessage = ex.Message;
            //        }
            //    }
            //    sqlcon.Close();
                //Label5.Text = "Duplicate Records: " + count.ToString() + "<br/>" + "Total Records: " + total + "<br/>" + "Data Uploaded Successfully"; // +"<br/>Error Message:" + errMessage;
            //}
            //else
            //{
            //    Label5.Text = "invalid data format";
            //}
        }
        else
        {
            Label5.Text = "Invalid File Format";
        }
    }
}