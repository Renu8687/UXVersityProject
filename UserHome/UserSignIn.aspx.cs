using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome_UserHome : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        var q = (from a in dl.da.UserTables
                 where a.Email == TextBox1.Text && a.Password == TextBox2.Text
                 select a).FirstOrDefault();
        if (q != null)
        {
            Session["Uid"] = q.UId;
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid User')</script>");
            TextBox1.Text = TextBox2.Text = "";
        }


    }
}