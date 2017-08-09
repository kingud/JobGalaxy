using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class total_reg : System.Web.UI.Page
{

   // SqlConnection con = null;
    //SqlDataAdapter adp = null;
    //SqlDataAdapter adp2 = null;
    //SqlDataAdapter adp3 = null;


    protected void Page_Load(object sender, EventArgs e)
    {
        
        //string JName = Session["JName"].ToString();
        //con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Pratik\\Desktop\\Jobadda\\App_Data\\JobportalDB.mdf;Integrated Security=True;User Instance=True");
        //con.Open();

        /*string query = "select * from Candidate_basic where username='" + JName + "'";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();


        string query2 = "select  from Candidate_education c1, Candidate_basic c2 where c1.candidate_id = c2.candidate_id and username='" + JName + "'";
        adp2 = new SqlDataAdapter(query2, con);
        DataSet ds2 = new DataSet();
        adp2.Fill(ds2);
        DetailsView2.DataSource = ds2;
        DetailsView2.DataBind();

        string query3 = "select * from Candidate_professional c1, Candidate_basic c2 where c1.candidate_id = c2.candidate_id and username='" + JName + "'";
        adp3 = new SqlDataAdapter(query3, con);
        DataSet ds3 = new DataSet();
        adp3.Fill(ds3);
        DetailsView3.DataSource = ds3;
        DetailsView3.DataBind();*/

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      /*  SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\JobPortal\ok.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Info(firstname,lastname,username,password,email,dob,ab)values('" + textbox1.Text + "','" + textbox2.Text + "','" + textbox3.Text + "','" + textbox4.Text + "','" + textbox5.Text + "','" + textbox6.Text + "','" + textbox7.Text + "')";
        cmd.ExecuteNonQuery();
        string display = "Your info has been registered  successfully";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
       // Response.Redirect("jobseeker_profile.aspx");*/
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\JobPortal\ok.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Info";
        SqlDataReader rd = cmd.ExecuteReader();
        bool flag = true;
        while (rd.Read())
        {
            string username = rd[2].ToString();
            if (username == textbox3.Text)
            {

                flag = false;

            }


        }
        rd.Close();
        con.Close();
        if (flag == true)
        {
            con.Open();
            SqlCommand cmd1 = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd1.CommandText = "insert into Info(firstname,lastname,username,password,email,dob,ab)values('" + textbox1.Text + "','" + textbox2.Text + "','" + textbox3.Text + "','" + textbox4.Text + "','" + textbox5.Text + "','" + textbox6.Text + "','" + textbox7.Text + "')"; 
            cmd1.ExecuteNonQuery();
            string display = "You have been registered  successfully";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);

        }
        else
        {
            string display = "There is already a member in that name";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);


        }
     
    }
}
