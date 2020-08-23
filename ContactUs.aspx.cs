using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            FeedbackTable ft = new FeedbackTable();
            ft.Message = TextBox1.Text;
            ft.Name = TextBox2.Text;
            ft.Email = TextBox3.Text;
            ft.Subject = TextBox4.Text;
            dl.da.FeedbackTables.InsertOnSubmit(ft);
            dl.da.SubmitChanges();
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
            Response.Write("<script>alert('Thanks For Feedback')</script>");
        }

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}