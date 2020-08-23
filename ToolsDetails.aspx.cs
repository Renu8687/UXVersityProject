using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ToolsDetails : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

        var q = dl.da.ToolTables.Where(k => k.TId == Convert.ToInt32((Request.QueryString["tid"]))).FirstOrDefault();
        Image1.ImageUrl = q.ThumbPic;

        Literal1.Text = q.Content1;
        Image2.ImageUrl = q.Pic1;

        Literal2.Text = q.Content2;
        Image3.ImageUrl = q.Pic2;

        Literal3.Text = q.Content3;
        Image4.ImageUrl = q.Pic3;

        Literal4.Text = q.Content4;
        Image5.ImageUrl = q.Pic4;

        Literal5.Text = q.MianContent;

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        var q = dl.da.ToolTables.Where(k => k.TId == Convert.ToInt32(Request.QueryString["tid"])).FirstOrDefault();
        string path = q.SourceCode;
        string name = System.IO.Path.GetFileName(path);
        Response.ContentType = "application/zip";
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + name);
        Response.TransmitFile(Server.MapPath(path));
        Response.End();

    }
}