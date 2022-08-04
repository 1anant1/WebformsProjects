using LogIn_Form.Dll;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LogIn_Form
{
    public partial class RegistrationInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FormRegistration Dll = new FormRegistration();
                DataTable dt = Dll.selectAllDeatails();
                GridView1.DataSource = dt;
                GridView1.DataBind();
                lblmsg.Text = Convert.ToString(Session["WelcomeMessage"]);
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            //int registration_Id = Convert.ToInt32((sender as Button).CommandArgument);
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            //int registration_Id = Convert.ToInt32((sender as Button).CommandArgument);
        }

        protected void Select_Click(object sender, EventArgs e)
        {
            int registration_Id = Convert.ToInt32((sender as LinkButton).CommandArgument);

            FormRegistration reg = new FormRegistration();
            DataTable dt =reg.GetDeatailsById(registration_Id);
        }

        protected void Select_Click1(object sender, EventArgs e)
        {
        }
    }
}