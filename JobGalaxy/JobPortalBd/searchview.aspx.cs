using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class searchview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  string username = Request.QueryString["username"];
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\JobPortal\ok.mdf;Integrated Security=True;Connect Timeout=30");
        bool flag = false;
        if(FileUpload1.HasFile)
    {
       
            
              
                    string fileextension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if(fileextension.ToLower()!=".docx" && fileextension.ToLower()!=".doc")
            {


                Label2.Text="only file with .doc and .docx are allowed.";
                
            }
            else
            {
                int filesize=FileUpload1.PostedFile.ContentLength;
                if(filesize>2097152)
                {
                     Label2.Text = "Upload status: Maximum file limit(2MB) exceeds.!";
                   
                }

                  else
                {
                   FileUpload1.SaveAs(Server.MapPath("~/Resume/") + FileUpload1.FileName);
                  Label2.Text = "Upload status: File uploaded!";
                    flag=true;

                }


            }
                   
                
              
        }
        else

            Label2.Text="You have to upload your resume to apply";


        
    



        
        if(flag==true)
        { 
        string username = Request.QueryString["username"];
      
       
        string company = this.GridView2.Rows[0].Cells[0].Text;
       
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Apply(companyname,username)values('" + company + "','" +username + "')";
        cmd.ExecuteNonQuery();
        string display = "You have been applied  successfully";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
    }
}
}