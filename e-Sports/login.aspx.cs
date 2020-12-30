using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace e_Sports
{
    public partial class login : System.Web.UI.Page
    {
        string con = "Data Source=.;Initial Catalog =tournament;User Id=mr_maverick;Password=sql@server";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection db = new SqlConnection(con);
                if(db.State == ConnectionState.Closed)
                { 
                    db.Open();
                }
                string check = "Select * from tbl_registration where email ='" + useremail.Text.Trim() + "' AND pass ='" + password.Text.Trim() + "'";
                SqlCommand cmd = new SqlCommand("Select * from tbl_registration where email ='" + useremail.Text.Trim() + "' AND pass ='" + password.Text.Trim() + "'", db);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        Response.Write("<script> alert('Login Successful !'); </script>");
                        Session["uid"] = dr.GetValue(0);
                        Session["role"] = dr.GetValue(1).ToString();
                        Session["username"] = dr.GetValue(2).ToString();
                        Session["usermail"] = dr.GetValue(4).ToString();
                    }
                    db.Close();
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script> alert('Invalid Credentials !'); </script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "'); </script>");
            }
        }
    }
} 