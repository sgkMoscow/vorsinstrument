using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Web.Mail;
using System.IO;


namespace vorsinstrument
{
    public partial class ZakazOnline : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

            try
            {
                System.Net.Mail.MailMessage m = new System.Net.Mail.MailMessage();
                m.From = new System.Net.Mail.MailAddress("info@vorsinstrument.ru");
                m.To.Add(new MailAddress("info@vorsinstrument.ru"));
                m.Subject = "Письмо с сайта vorsinstrument.ru";
                m.Body = "Имя: " + tbName.Text + "   /" +
                          "Организация: " + tbOrg.Text + "   /" +
                          "Телефон/Маил: " + tbContact.Text + "   /" +
                          "Сообщение: " + tbName.Text;
           
                //Вложение в письмо:
                //string attachFile = Path.GetFileName(FileUploadZakaz.PostedFile.FileName);
                //if (!string.IsNullOrEmpty(attachFile))
                //{
                //    m.Attachments.Add(new Attachment(attachFile));
                //};
                
                //Вложение в письмо, вариант 2:
                Attachment newAt = new Attachment(FileUploadZakaz.PostedFile.InputStream, Path.GetFileName(FileUploadZakaz.PostedFile.FileName));
                m.Attachments.Add(newAt);
            
                          

                System.Net.Mail.SmtpClient Smtp = new SmtpClient("smtp.yandex.ru", 25);
                Smtp.EnableSsl = true;
                Smtp.Credentials = new System.Net.NetworkCredential("info@vorsinstrument.ru", "k7335915");
                Smtp.Send(m);
                Response.Redirect("buyOK.aspx");

            }

            catch { }



        }
    }
}