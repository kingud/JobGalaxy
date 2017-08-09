using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class post_job : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\JobPortal\ok.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Postjob(companyname,jobtype,jobtitle,qualification)values('" +textbox1.Text + "','" + textbox4.Text + "','" + textbox2.Text + "','" + textbox3.Text + "')";
        cmd.ExecuteNonQuery();
        string display = "Your job has been posted successfully";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
    }
}