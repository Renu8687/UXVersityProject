using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_AddBlog : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        AddBlogTable ab= new AddBlogTable();
        ab.BlogTitle = TextBox1.Text;
        FileUpload1.SaveAs(Server.MapPath("~/Dashboard/BlogPic/" + FileUpload1.FileName));
        FileUpload2.SaveAs(Server.MapPath("~/Dashboard/BlogPic/" + FileUpload2.FileName));
        FileUpload3.SaveAs(Server.MapPath("~/Dashboard/BlogPic/" + FileUpload3.FileName));
        FileUpload4.SaveAs(Server.MapPath("~/Dashboard/BlogPic/" + FileUpload4.FileName));
        ab.ThumbnailPic = "/Dashboard/BlogPic/" + FileUpload1.FileName;
        ab.Description = TextBox2.Text;
        ab.Pic1= "/Dashboard/BlogPic/" + FileUpload2.FileName;
        ab.Pic2 = "/Dashboard/BlogPic/" + FileUpload3.FileName;
        ab.Pic3 = "/Dashboard/BlogPic/" + FileUpload4.FileName;
        ab.Date = DateTime.Now;
        ab.CreatedBy = Convert.ToInt32(Session["did"]);
        dl.da.AddBlogTables.InsertOnSubmit(ab);
        dl.da.SubmitChanges();
        Response.Write("<script>alert('Success')</script>");
        TextBox1.Text =TextBox2.Text= "";
    }
}