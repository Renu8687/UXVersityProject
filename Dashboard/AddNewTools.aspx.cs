
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_AddNewTools : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = dl.da.CategoryTables;
            DropDownList1.DataTextField = "CatName";
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");

        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ToolTable TT = new ToolTable();
        TT.Cat =Convert.ToInt32(DropDownList1.SelectedValue);
        TT.ToolName = TextBox2.Text;
        TT.ThumbPic = "~/Dashboard/ThumbnailPic/" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath("~/Dashboard/ThumbnailPic/" + FileUpload1.FileName));
        FileUpload2.SaveAs(Server.MapPath("~/Dashboard/ThumbnailPic/" + FileUpload2.FileName));
        FileUpload3.SaveAs(Server.MapPath("~/Dashboard/ThumbnailPic/" + FileUpload3.FileName));
        FileUpload4.SaveAs(Server.MapPath("~/Dashboard/ThumbnailPic/" + FileUpload4.FileName));
        FileUpload5.SaveAs(Server.MapPath("~/Dashboard/ThumbnailPic/" + FileUpload5.FileName));
        FileUpload6.SaveAs(Server.MapPath("~/Dashboard/ThumbnailPic/" + FileUpload5.FileName));

        TT.Content1 = TextBox2.Text;
        TT.Pic1 = "/Dashboard/ThumbnailPic/" + FileUpload2.FileName;
        TT.Content2 = TextBox3.Text;
        TT.Pic2 = "/Dashboard/ThumbnailPic/" + FileUpload3.FileName;
        TT.Content3 = TextBox4.Text;
        TT.Pic3 = "/Dashboard/ThumbnailPic/" + FileUpload4.FileName;
        TT.Content4 = TextBox5.Text;
        TT.Pic4 = "/Dashboard/ThumbnailPic/" + FileUpload5.FileName;
        TT.MianContent = TextBox1.Text;
        TT.SourceCode = "/Dashboard/SourceCode/" + FileUpload6.FileName;


        dl.da.ToolTables.InsertOnSubmit(TT);
        dl.da.SubmitChanges();
        Response.Write("<script>alert('Success')</script>");
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
    }
}