using LogIn_Form.Dll;
using LogIn_Form.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogIn_Form
{
    public partial class Information : System.Web.UI.Page
    {
        string gender = string.Empty;
        int registration_Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FormRegistration Dll = new FormRegistration();
                DataTable dt = Dll.selectAllDeatails();
                datatablegridview.DataSource = dt;
                datatablegridview.DataBind();
            }
            
        }

        protected void select_Click(object sender, EventArgs e)
        {
            registration_Id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            Session["registration_Id"] = registration_Id;
            FormRegistration reg = new FormRegistration();
            DataTable dt = reg.GetDeatailsById(registration_Id);
            Username.Text = dt.Rows[0]["Username"].ToString();
            Password.Text = dt.Rows[0]["Password"].ToString();
            Firstname.Text = dt.Rows[0]["FirstName"].ToString();
            Lastname.Text = dt.Rows[0]["LastName"].ToString();
            Address.Text = dt.Rows[0]["Address"].ToString();
            if (dt.Rows[0]["Gender"].ToString() == "Male")
            {
                rbtnmale.Checked = true;
            }
            else
            {
                rbtnfemale.Checked = true;
            }
           

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Registration regobj = new Registration();
            regobj.Username = Username.Text;
            regobj.Password = Password.Text;
            regobj.FirstName = Firstname.Text;
            regobj.LastName = Lastname.Text;
            regobj.Address = Address.Text;

            if (rbtnmale.Checked)
            {
                regobj.Gender = "Male";
            }
            else
            {
                regobj.Gender = "Female";
            }

            FormRegistration reg = new FormRegistration();
            reg.savealldetails(regobj);
            DataTable ds = reg.selectAllDeatails();
            datatablegridview.DataSource = ds;
            datatablegridview.DataBind();
            Clear();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            Registration regobj = new Registration();
            regobj.Registration_Id = Convert.ToInt32(Session["registration_Id"]);
            regobj.Username = Username.Text;
            regobj.Password = Password.Text;
            regobj.FirstName = Firstname.Text;
            regobj.LastName = Lastname.Text;
            regobj.Address = Address.Text;

            if (rbtnmale.Checked)
            {
                regobj.Gender = "Male";
            }
            else
            {
                regobj.Gender = "Female";
            }

            FormRegistration reg = new FormRegistration();
            reg.updateAllDeatils(regobj);
            DataTable ds = reg.selectAllDeatails();
            datatablegridview.DataSource = ds;
            datatablegridview.DataBind();
            Clear();

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            Registration regobj = new Registration();
            regobj.Registration_Id = Convert.ToInt32(Session["registration_Id"]);
            FormRegistration frmreg = new FormRegistration();
            frmreg.deleteAllDetails(regobj);
            DataTable ds = frmreg.selectAllDeatails();
            datatablegridview.DataSource = ds;
            datatablegridview.DataBind();
            Clear();
        }

        public void Clear()
        {
            Username.Text = "";
            Password.Text = "";
            Firstname.Text = "";
            Lastname.Text = "";
            Address.Text = "";
            rbtnmale.Checked = false;
            rbtnfemale.Checked = false;
        }
    }
}