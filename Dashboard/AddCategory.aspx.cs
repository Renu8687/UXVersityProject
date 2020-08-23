using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_AddCategory : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }
    void bind()
    {
        Repeater1.DataSource = dl.da.CategoryTables;
        Repeater1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        CategoryTable ct = new CategoryTable();
        ct.CatName = TextBox1.Text;
        FileUpload1.SaveAs(Server.MapPath("~/Dashboard/CatPic/" + FileUpload1.FileName));
        ct.Pic = "/Dashboard/CatPic/" + FileUpload1.FileName;
        dl.da.CategoryTables.InsertOnSubmit(ct);
        dl.da.SubmitChanges();
        Response.Write("<script>alert('Success')</script>");
        TextBox1.Text = "";
        bind();

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        var q = (from a in dl.da.CategoryTables
                 where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                 select a).FirstOrDefault();
        dl.da.CategoryTables.DeleteOnSubmit(q);
        dl.da.SubmitChanges();
        bind();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        var q = (from a in dl.da.CategoryTables
                 where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                 select a).FirstOrDefault();
        ViewState["ii"] = q.Id;
        TextBox2.Text = q.CatName;
        Panel1.Visible = false;
        Panel2.Visible = true;
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        var q = (from a in dl.da.CategoryTables
                 where a.Id == Convert.ToInt32(ViewState["ii"])
                 select a).FirstOrDefault();
        q.CatName = TextBox2.Text;
        if (FileUpload2.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Dashboard/CatPic/" + FileUpload1.FileName));
            q.Pic = "/Dashboard/CatPic/" + FileUpload1.FileName;
        }
        dl.da.SubmitChanges();
        bind();
        Panel2.Visible = false;
        Panel1.Visible = true;
    }
}