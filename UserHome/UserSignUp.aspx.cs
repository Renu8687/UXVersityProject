using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome_UserSignUp : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            UserTable ut = new UserTable();
            ut.Name = TextBox1.Text;
            ut.Email = TextBox2.Text;
            ut.Contact = TextBox3.Text;
            ut.Password = TextBox4.Text;
            dl.da.UserTables.InsertOnSubmit(ut);
            dl.da.SubmitChanges();
            Response.Write("<script>alert('Success')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
        }
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}