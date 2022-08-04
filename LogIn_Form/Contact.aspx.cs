using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using LogIn_Form.Model;
using LogIn_Form.Dll;

namespace LogIn_Form
{
    public partial class Contact : Page
    {
        SqlConnection con;
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {
            string connection = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            con = new SqlConnection(connection);
        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
           
            try
            {
                if (rbtnmale.Checked)
                {
                    gender = "Male";
                }
                else
                {
                    gender = "Female";
                }
                //SqlCommand cmd = new SqlCommand("InsertingRegistration", con);
                //cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@UserName", userename.Text);
                //cmd.Parameters.AddWithValue("@Password", Password.Text);
                //cmd.Parameters.AddWithValue("@FirstName", firstname.Text);
                //cmd.Parameters.AddWithValue("@LastName", lastname.Text);
                //cmd.Parameters.AddWithValue("@Address", address.Text);
                //cmd.Parameters.AddWithValue("@Gender", gender);
                //cmd.ExecuteNonQuery();
                //con.Close();
                Registration regObj = new Registration();
                regObj.Username = userename.Text;
                regObj.Password = Password.Text;
                regObj.FirstName = firstname.Text;
                regObj.LastName = lastname.Text;
                regObj.Address = address.Text;
                regObj.Gender = gender;
                FormRegistration Dll= new FormRegistration();
                Dll.savealldetails(regObj);
                msglable.Text = "All details save sucessfully";
                

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            
        }

        protected void Btnupdate_Click(object sender, EventArgs e)
        {
            if (rbtnmale.Checked)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }

            Registration regObj = new Registration();
            regObj.Registration_Id = 9;
            regObj.Username = userename.Text;
            regObj.Password = Password.Text;
            regObj.FirstName = firstname.Text;
            regObj.LastName = lastname.Text;
            regObj.Address = address.Text;
            regObj.Gender = gender;
            FormRegistration Dll = new FormRegistration();
            Dll.updateAllDeatils(regObj);
            msglable.Text = "All details updated sucessfully";
            Response.Redirect("RegistrationInfo.aspx");
        }

        
        //it is Button Show 
        protected void Btndelete_Click(object sender, EventArgs e)
        {

            int i = 1;
            FormRegistration Dll = new FormRegistration();
            DataTable dt = Dll.selectAllDeatails();
            userename.Text = dt.Rows[i]["UserName"].ToString();
            Password.Text = dt.Rows[i]["Password"].ToString();
            firstname.Text = dt.Rows[i]["FirstName"].ToString();
            lastname.Text = dt.Rows[i]["Lastname"].ToString();
            address.Text = dt.Rows[i]["Address"].ToString();
            if (dt.Rows[i]["Gender"].ToString() == "Male")
            {
                rbtnmale.Checked = true;
            }
            else
            {
                rbtnmale.Checked = false;
            }
        }

        protected void Btndelete1_Click(object sender, EventArgs e)
        {
            Registration regobj = new Registration();
            regobj.Registration_Id = 9;
            FormRegistration frmreg = new FormRegistration();
            frmreg.deleteAllDetails(regobj);
            Response.Redirect("RegistrationInfo.aspx");

        }
    }
}