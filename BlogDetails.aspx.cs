using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BlogDetails : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        var q = (from a in dl.da.AddBlogTables
                 where a.Id == Convert.ToInt32(Request.QueryString["bid"])
                 select a).FirstOrDefault();
        Image1.ImageUrl = q.ThumbnailPic;
        Literal1.Text = q.BlogTitle;
        Literal2.Text = q.Description;


        Repeater1.DataSource = dl.da.AddBlogTables;
        Repeater1.DataBind();
    }
}