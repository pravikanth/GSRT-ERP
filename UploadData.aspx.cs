using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class UploadData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (ddlCategory.Text != "--Select--")
        {
            string ext = Path.GetExtension(FileUpload1.FileName);
            if (ext == ".xls" || ext == ".xlsx")
            {
                try
                {
                    string strFileType = Path.GetExtension(FileUpload1.FileName).ToLower();
                    string Ppath = Server.MapPath("~\\files\\");
                    string FullFileName = string.Empty;
                    if (ddlCategory.Text == "Company")
                        FullFileName = Ppath + "Company" + strFileType;
                    else if (ddlCategory.Text == "Contacts")
                        FullFileName = Ppath + "Contacts" + strFileType;
                    FileUpload1.SaveAs(FullFileName);
                    if (ddlCategory.Text == "Company")
                    {
                        //FullFileName = Ppath + "Company" + strFileType;
                        CompanyInformationDB companyInformationDB = new CompanyInformationDB();
                        Label5.Text = companyInformationDB.InsertBulkData(FullFileName);
                    }
                    else if (ddlCategory.Text == "Contacts")
                    {
                        //FullFileName = Ppath + "Contacts" + strFileType;
                        ContactsDB contactsDB = new ContactsDB();
                        Label5.Text = contactsDB.InsertBulkData(FullFileName);
                    }
                    //Label5.Text = FullFileName; 
                }
                catch (Exception ex)
                {
                    Label5.Text = ex.Message;
                }
                
 
            }
        }
    }
}