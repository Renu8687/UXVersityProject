using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard_SendNotification : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MailMessage mm = new MailMessage();
        mm.To.Add(TextBox1.Text);
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
        TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
    }
}