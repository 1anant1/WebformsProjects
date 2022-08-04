using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;

namespace LogIn_Form.Common
{
    public static class EmailClass
    {
        public static void Email(string htmlString)
        {
            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                message.From = new MailAddress("FromMailAddress");
                message.To.Add(new MailAddress("ToMailAddress"));
                message.Subject = "Test";
                message.IsBodyHtml = true; //to make message body as html  
                message.Body = htmlString;
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com"; //for gmail host  
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("mailto:userrole95@gmail.com", "Anant123");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(message);

                //ViewCartItems.aspx? CartID = "+id+" & ProductID = "+productid
                StringBuilder MailBody = new StringBuilder();
                string Subject = "Verification Email";

                // MailBody.Append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please click the link for verification" + item.FirstName + " " + item.LastName + " has an anniversary coming up on " + UpCommingWADate + " <br/><br/>");


            }
            catch (Exception) { }
        }
    }
}