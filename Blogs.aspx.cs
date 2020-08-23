using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blogs : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        var q = from a in dl.da.AddBlogTables
                from b in dl.da.DeveloperTables.Where(k => k.Id == a.CreatedBy)
                select new
                {
                    a.BlogTitle,
                    Description = a.Description.Substring(0, 100),
                    a.ThumbnailPic,
                    a.Id,
                    Date = a.Date.Value.ToShortDateString(),
                    b.Name
                };
        Repeater1.DataSource = q;
        Repeater1.DataBind();

    }
}