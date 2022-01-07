using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Http;
using System.Net.Mail;
using SendGrid;
using Newtonsoft.Json.Linq;

/*
File name: Contact.aspx.cs
Author's name: Hae Yeon Kang (Lucy)
web site name: Hae Yeon's Portfolio Website
file description: C# file to control the form in Contact page
*/

namespace ASPNET_Portfolio
{

    public class EnvioEmail
    {
        private MailMessage email;
        private SmtpClient server;

        public EnvioEmail()
        {
            server = new SmtpClient();
            server.Credentials = new NetworkCredential("manupais22@gmail.com", "paisano0912");
            server.EnableSsl = true;
            server.Port = 587;
            server.Host = "smtp.gmail.com";
        }

        public void armarCorreoContacto(string from, string fromName, string companyName, string phoneNum, string longMessage)
        {
            string emailDestino = "manupais22@gmail.com";
            email = new MailMessage();
            email.From = new MailAddress(from);
            email.To.Add(emailDestino);
            email.Subject = "Contacto Nuevo";
            email.Body = " Message Detail \n" +
                "From: " + fromName + "(" + from + ") \n" +
                "Company: " + companyName + "\n" +
                "Contact Number: " + phoneNum + "\n" +
                "Message: " + longMessage;
        }

        public void enviarEmail()
        {
            try
            {
                server.Send(email);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }

    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            
        }

        /**
         * This event handler method will reset the form when reset button is clicked.
         * @return void
         */
        protected void ResetBtn_Click(object sender, EventArgs e)
        {
            //clear all the fields.
            FullNameTextBox.Text = "";
            CompanyTextBox.Text = "";
            EmailTextBox.Text = "";
            PhoneNumberTextBox.Text = "";
            MessageTextBox.Text = "";
        }
        /**
         * This event handler method will process the contact form when submit button is clicked.
         * @return void
         */
        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            EnvioEmail emailService = new EnvioEmail();
            var from = EmailTextBox.Text;
            var fromName = FullNameTextBox.Text;
            var companyName = CompanyTextBox.Text;
            var phoneNum = PhoneNumberTextBox.Text;
            var longMessage = MessageTextBox.Text;

            emailService.armarCorreoContacto(from, fromName, companyName, phoneNum, longMessage);
            try
            {
                emailService.enviarEmail();
                var page = HttpContext.Current.CurrentHandler as Page;
                //show confirmation message and reset the fields.
            alertMessage.Attributes.Add("class", "alert alert-info");
            alertMessage.InnerHtml = "Your email was sent successfully!"; 
             }
            catch (Exception ex)
            {
                throw ex;
            }


          
           
        }
        
       
       
    }
}
