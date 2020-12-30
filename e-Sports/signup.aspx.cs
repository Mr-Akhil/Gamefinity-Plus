using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace e_Sports
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string con = "Data Source=.;Initial Catalog =tournament;User Id=mr_maverick;Password=sql@server";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signup_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsValidate())
                {
                    SqlConnection db = new SqlConnection(con);
                    if (db.State == ConnectionState.Closed)
                    {
                        db.Open();
                    }
                    string check = "Select count(*) from tbl_registration where email like '" + txtEmail.Text + "'";
                    SqlCommand ch = new SqlCommand(check, db);
                    Int32 k = (Int32)ch.ExecuteScalar();
                    if (k != 0)
                    {
                        Response.Write("<script> alert('Email Already Registered !'); </script>");
                    }
                    else
                    {
                        string insert = "insert into tbl_registration(rtype,fullname,phone,email,pass) values('" + type.SelectedValue + "','" + txtName.Text + "','" + txtPhone.Text + "','" + txtEmail.Text + "','" + txtPass.Text + "')";
                        SqlCommand cmd = new SqlCommand(insert, db);
                        int m = cmd.ExecuteNonQuery();
                        if (m == 0)
                        {
                            Response.Write("<script> alert('Registration Fail !'); </script>");
                        }
                        else
                        {
                            db.Close();
                            Response.Write("<script> alert('Registration Successful !'); </script>");
                            Response.Write("<script> window.location.href='homepage.aspx'; </script>");
                        }
                    }
                }

            }
            catch(Exception ex)
            {
                Response.Write("<script> alert('Error:"+ ex +"'); </Script>");
            }
        }
        protected bool IsValidate()
        {
            if (IsTypeValid() && IsNameValid() && IsPhoneValid() && IsEmailValid() && IsPassValid() && IsConfirmValid())
                return true;
            else
                return false;
        }
        protected bool IsTypeValid()
        {
            if (type.SelectedValue == "Player" || type.SelectedValue == "Organizer")
                return true;
            else
            {
                Response.Write("<script> alert('Please Select valid usertype !'); </Script>");
                return false;
            }
        }
        protected bool IsNameValid()
        {
            if (Regex.IsMatch(txtName.Text, @"^[a-zA-Z'.\s]{1,50}"))
                return true;
            else
            {
                Response.Write("<script> alert('Please Enter a Valid Name !'); </script>");
                return false;
            }
        }
        protected bool IsPhoneValid()
        {
            if (Regex.IsMatch(txtPhone.Text, @"^[0-9]{10}"))
                return true;
            else
            {
                Response.Write("<script> alert('Please Enter a Valid Phone Number !'); </script>");
                return false;
            }
        }
        protected bool IsEmailValid()
        {
            if (Regex.IsMatch(txtEmail.Text, @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"))
                return true;
            else
            {
                Response.Write("<script> alert('Please Enter a Valid email !'); </script>");
                return false;
            }
        }
        protected bool IsPassValid()
        {
            if (Regex.IsMatch(txtPass.Text, @"(?=^.{8,10}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_+}{:;'?/>.<,])(?!.*\s).*$"))
                return true;
            else
            {
                Response.Write("<script> alert('Please Enter a Valid Password !'); </script>");
                return false;
            }
        }
        protected bool IsConfirmValid()
        {
            if (! txtPass.Text.ToString().Equals(txtConfirm.Text.ToString()))
            {
                Response.Write("<script> alert('Password not Matched !'); </script>");
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}