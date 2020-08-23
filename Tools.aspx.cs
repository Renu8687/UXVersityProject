using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tools : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = dl.da.ToolTables.Where(k => k.Cat == Convert.ToInt32(Request.QueryString["cid"]));
            Repeater1.DataBind();
        }
    }


}