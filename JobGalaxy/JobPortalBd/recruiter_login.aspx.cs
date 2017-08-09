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

public partial class recruiter_login : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataReader dr = null;
    SqlCommand cmd = null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool Flag = false;

        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\JobPortal\ok.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();

        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Company";
        dr = cmd.ExecuteReader();
        
        string CompanyName = "";
        string PassWord = "";

        while (dr.Read())
        {
            CompanyName = dr[0].ToString();
            PassWord = dr[2].ToString();

            if (tbrun.Text == CompanyName && tbrpw.Text == PassWord)
            {
                //Session.Add("RName", UserName);
                //Role = dr[2].ToString();
                Flag = true;
            }


        }
        dr.Close();

        if (Flag == false)
        {
            Label5.Visible = true;
            Label5.Text = "Not authorized";
        }
        if (Flag == true)
        {

            string companyname = tbrun.Text;

            Response.Redirect("~/company_attribute.aspx?companyname="+companyname);

            
          
        }
        con.Close();
    }
}
