using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_AdminSendNotification : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DropDownList1.DataSource = dl.da.UserTables;
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "Email";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select User Name--");

            DropDownList2.DataSource = dl.da.DeveloperTables;
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "Email";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--Select Developer Name--");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MailMessage mm = new MailMessage();
        mm.To.Add(DropDownList1.SelectedValue.ToString());
        mm.From = new MailAddress("uxversity71@gmail.com");
        mm.Subject = TextBox2.Text;
        mm.Body = TextBox3.Text;
        mm.IsBodyHtml = true;

        NetworkCredential nc = new NetworkCredential();
        nc.UserName = "uxversity71@gmail.com";
        nc.Password = "Uxversity@123";


        SmtpClient sc = new SmtpClient();
        sc.Host = "smtp.gmail.com";
        sc.Port = 587;
        sc.UseDefaultCredentials = true;
        sc.Credentials = nc;



        sc.EnableSsl = true;
        sc.Send(mm);
        Response.Write("<script>alert('Notificstion send successfully....!')</script>");
        TextBox2.Text = TextBox3.Text = "";
        DropDownList1.SelectedIndex = 0;
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MailMessage mm = new MailMessage();
        mm.To.Add(DropDownList1.SelectedValue.ToString());
        mm.From = new MailAddress("uxversity71@gmail.com");
        mm.Subject = TextBox2.Text;
        mm.Body = TextBox3.Text;
        mm.IsBodyHtml = true;

        NetworkCredential nc = new NetworkCredential();
        nc.UserName = "uxversity71@gmail.com";
        nc.Password = "Uxversity@123";


        SmtpClient sc = new SmtpClient();
        sc.Host = "smtp.gmail.com";
        sc.Port = 587;
        sc.UseDefaultCredentials = true;
        sc.Credentials = nc;



        sc.EnableSsl = true;
        sc.Send(mm);
        Response.Write("<script>alert('Notificstion send successfully....!')</script>");
        TextBox2.Text = TextBox3.Text = "";
        DropDownList1.SelectedIndex = 0;
    }
}