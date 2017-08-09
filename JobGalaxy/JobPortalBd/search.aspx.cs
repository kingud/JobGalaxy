using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Request.QueryString["username"];
       HyperLink1.NavigateUrl = String.Format(HyperLink1.NavigateUrl, Request.QueryString["username"]);
    }
}