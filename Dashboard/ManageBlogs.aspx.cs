using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_ManageBlogs : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            bind();
        }

    }
    void bind()
    {
        var q = from a in dl.da.AddBlogTables.Where(k => k.CreatedBy == Convert.ToInt32(Session["did"]))
                from b in dl.da.DeveloperTables.Where(k => k.Id == a.CreatedBy)
                select new
                {
                    a.BlogTitle,
                    Description = a.Description.Substring(0, 100),
                    a.ThumbnailPic,
                    a.Id,
                    Date = a.Date.Value.ToShortDateString(),
                    Time = a.Date.Value.ToShortTimeString(),
                    b.Name
                };
        Repeater1.DataSource = q;
        Repeater1.DataBind();
    }


    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        var q = (from a in dl.da.AddBlogTables
                 where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                 select a).FirstOrDefault();
        dl.da.AddBlogTables.DeleteOnSubmit(q);
        dl.da.SubmitChanges();
        bind();
        Response.Write("<script>'SUCCESSFULLY DELETED'</script>");
    }

}