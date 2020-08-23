using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_AViewRevies : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }
    void Bind()
    {
        Repeater1.DataSource = dl.da.FeedbackTables;
        Repeater1.DataBind();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        var q = (from a in dl.da.FeedbackTables
                where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                select a).FirstOrDefault();
        dl.da.FeedbackTables.DeleteOnSubmit(q);
        dl.da.SubmitChanges();
        Bind();
    }
}