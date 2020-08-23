using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Developer_DeveloperSignUp : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DeveloperTable dt = new DeveloperTable();
        dt.Name = TextBox1.Text;
        dt.Email = TextBox2.Text;
        dt.Contact = TextBox3.Text;
        dt.Password = TextBox4.Text;
        dl.da.DeveloperTables.InsertOnSubmit(dt);
        dl.da.SubmitChanges();
        Response.Write("<script>alert('Success')</script>");
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";

    }
}