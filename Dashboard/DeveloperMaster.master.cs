using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_DeveloperMaster : System.Web.UI.MasterPage
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if(Session["did"].ToString()=="")
            {
                Response.Redirect("~/Developer/DeveloperSignIn.aspx");
            }
        }
        catch
        {
            Response.Redirect("~/Developer/DeveloperSignIn.aspx");

        }
        var q = (from a in dl.da.DeveloperTables
                 where a.Id == Convert.ToInt32(Session["did"])
                 select a).FirstOrDefault();
        Literal1.Text = q.Name;
        Literal3.Text = q.Name;
        Literal2.Text = q.Email;
    }
}
