using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Sports
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    btnLoginOpen.Visible = true;
                    btnSignupOpen.Visible = true;

                    btndashboardOpen.Visible = false;
                    btngreeting.Visible = false;
                    btnlogoutOpen.Visible = false;
                }
                else if(Session["role"].Equals("Player"))
                {
                    btnLoginOpen.Visible = false;
                    btnSignupOpen.Visible = false;

                    btndashboardOpen.Visible = false;
                    btngreeting.Visible = true;
                    btnlogoutOpen.Visible = true;

                    btngreeting.Text = "Hello! " + Session["username"].ToString();
                }
                else if (Session["role"].Equals("Organizer"))
                {
                    btnLoginOpen.Visible = false;
                    btnSignupOpen.Visible = false;

                    btndashboardOpen.Visible = true;
                    btngreeting.Visible = true;
                    btnlogoutOpen.Visible = true;

                    btngreeting.Text = "Hello! " + Session["username"].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "'); </script>");
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {

        }

        protected void btnLoginOpen_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btnSignupOpen_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void btnlogoutOpen_Click(object sender, EventArgs e)
        {
            Session["uid"] = "";
            Session["role"] = "";
            Session["username"] = "";
            Session["usermail"] = "";

            btnLoginOpen.Visible = true;
            btnSignupOpen.Visible = true;

            btndashboardOpen.Visible = false;
            btngreeting.Visible = false;
            btnlogoutOpen.Visible = false;
            Response.Redirect("homepage.aspx");
        }

        protected void btndashboardOpen_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEvent.aspx");
        }
    }
}