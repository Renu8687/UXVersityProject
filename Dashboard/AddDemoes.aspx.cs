using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_AddDemoes : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            bind();
        }
    }
    void bind()
    {
        Repeater1.DataSource = dl.da.DemoTables;
        Repeater1.DataBind();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DemoTable dt = new DemoTable();
        dt.DemoTitle = TextBox1.Text;
        dt.DemoSource = TextBox2.Text;
        dl.da.DemoTables.InsertOnSubmit(dt);
        dl.da.SubmitChanges();
        TextBox1.Text = TextBox2.Text = "";
        Response.Write("<script>alert('Success')</script>");

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;

    }
}