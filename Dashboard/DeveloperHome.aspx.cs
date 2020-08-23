using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_DeveloperHome : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        Literal1.Text = dl.da.AddBlogTables.Where(k => k.CreatedBy == Convert.ToInt32(Session["did"])).Count().ToString();
        Literal2.Text = dl.da.ToolTables.Count().ToString();
        Literal3.Text = dl.da.UserTables.Count().ToString();
        Literal4.Text = dl.da.FeedbackTables.Count().ToString();
    }
}