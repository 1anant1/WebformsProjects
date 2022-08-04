using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using LogIn_Form.Model;
using LogIn_Form.Dll;

namespace LogIn_Form
{
    public partial class About : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                Registration regObj = new Registration();
                regObj.Username = Username.Text;
                regObj.Password = Password.Text;
                FormRegistration Dll = new FormRegistration();
                bool blncheck = Dll.checklogindetails(regObj);
                if (blncheck)
                {
                    Session["WelcomeMessage"] = "You have sucessfully logIn"; 
                    Response.Redirect("RegistrationInfo.aspx");

                }
                else
                {
                    msglable1.Text= "Please enter correct username and password";
                }

            }
            catch (Exception ex)
            {
                throw (ex);
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }
    }
}