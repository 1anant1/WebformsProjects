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

namespace LogIn_Form.Dll
{

    public class FormRegistration
    {
        SqlConnection con;
        public FormRegistration()
        {
            string connection = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            con = new SqlConnection(connection);
        }

        public void savealldetails(Registration alldetail)
        {

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("InsertingRegistration", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", alldetail.Username);
                cmd.Parameters.AddWithValue("@Password", alldetail.Password);
                cmd.Parameters.AddWithValue("@FirstName", alldetail.FirstName);
                cmd.Parameters.AddWithValue("@LastName", alldetail.LastName);
                cmd.Parameters.AddWithValue("@Address", alldetail.Address);
                cmd.Parameters.AddWithValue("@Gender", alldetail.Gender);
                cmd.Parameters.AddWithValue("@IsvalidUser",alldetail.IsvalidUser);
                cmd.Parameters.AddWithValue("@IsvalidKey",alldetail.IsvalidKey);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                con.Close();
            }
        }
        public bool checklogindetails(Registration odata)
        {
            bool blncheck = false;

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Registraion where Username=@Username and Password=@Password", con);
                cmd.Parameters.AddWithValue("@UserName", odata.Username);
                cmd.Parameters.AddWithValue("@Password", odata.Password);
                DataTable dt = new DataTable();
                SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                adpt.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    blncheck = true;
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            finally
            {
                con.Close();
            }
            return blncheck;

        }

        public void updateAllDeatils(Registration udata)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("UpdatingRegistration", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Registration_Id", udata.Registration_Id);
                cmd.Parameters.AddWithValue("@UserName", udata.Username);
                cmd.Parameters.AddWithValue("@Password", udata.Password);
                cmd.Parameters.AddWithValue("@FirstName", udata.FirstName);
                cmd.Parameters.AddWithValue("@LastName", udata.LastName);
                cmd.Parameters.AddWithValue("@Address", udata.Address);
                cmd.Parameters.AddWithValue("@Gender", udata.Gender);
                cmd.ExecuteNonQuery();
                con.Close();


            }
            catch (Exception ex)
            {

                throw;
            }
            finally
            {
                con.Close();
            }
        }

        public DataTable selectAllDeatails()
        {
            DataTable dt;
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SelectingRegistration", con);
                cmd.CommandType = CommandType.StoredProcedure;
                dt = new DataTable();
                SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                adpt.Fill(dt);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                con.Close();
            }
            return dt;
        }

        public void deleteAllDetails(Registration deldata)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("DeletingRegistration", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Registration_Id", deldata.Registration_Id);
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                con.Close();
            }
        }
        public DataTable GetDeatailsById(int registrationId)
        {
            DataTable dt;
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("GettingRecordById", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Registration_Id", registrationId);
                dt = new DataTable();
                SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                adpt.Fill(dt);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                con.Close();
            }
            return dt;
        }




    }
}