using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class rec_reg : System.Web.UI.Page
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
        cmd.CommandText = "select * from Company";
        SqlDataReader rd = cmd.ExecuteReader();
        bool flag =true;
        while(rd.Read())
        {
            string companyname = rd[0].ToString();
            if(companyname==textbox1.Text)
            {
               
                flag = false;
              
            }


        }
        rd.Close();
        con.Close();
       if(flag==true)
        {
            con.Open();
            SqlCommand cmd1 = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd1.CommandText = "insert into Company(companyname,location,password,email)values('" + textbox1.Text + "','" + textbox3.Text + "','" + textbox2.Text + "','" + textbox4.Text + "')";
            cmd1.ExecuteNonQuery();
            string display = "Your company has been registered  successfully";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
           
        }
        else
        {
            string display = "There is already a company in that name";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);


        }
     
      

        
        
        //
       
    }
}