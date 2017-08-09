using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class searchall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
       // Response.Redirect("searchview.aspx?username=" + username);
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string username = Request.QueryString["username"];
      //  string username = Request.QueryString[0];
        
       // Response.Redirect("searchview.aspx?id=&username="+e.CommandArgument+username);
       // Response.Redirect("searchview.aspx?id=" +e.CommandArgument  & "username=" +username);
        Response.Redirect("searchview.aspx?id= "+e.CommandArgument+"&username="+username);
    }
}

