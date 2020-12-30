using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace e_Sports
{
    public partial class upcomingevent : System.Web.UI.Page
    {
        string con = "Data Source=.;Initial Catalog =tournament;User Id=mr_maverick;Password=sql@server";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection db = new SqlConnection(con);
                if (db.State == ConnectionState.Closed)
                {
                    db.Open();
                }
                string query = "select uid,gamename,gamedate,disdate,distime,prizepool,perkill,entryfee,gametype,gameversion,map,about,spotsize,spotregistered,emptyspot,rid,fullname from tbl_upcoming left join tbl_registration on tbl_upcoming.rid = tbl_registration.id where gamedate >= GETDATE() and gamename=@gamename";
                SqlCommand cmd = new SqlCommand(query, db);
                cmd.Parameters.AddWithValue("@gamename", Session["cardname"]);
                RepeatUpcoming.DataSource = cmd.ExecuteReader();
                RepeatUpcoming.DataBind();
                db.Close();
            }
            catch(Exception ex)
            {
                Response.Write("<script> alert('Error:" + ex + "'); </Script>");
            }

        }
        protected void Button_Click(object sender,EventArgs e)
        {
            if (Session["Role"] == null)
            {
                Response.Write("<script> alert('Please Login First'); </Script>");
            }
            else if(Session["Role"].Equals("Player"))
            {
                try
                {
                    Button b = sender as Button;
                    SqlConnection db = new SqlConnection(con);
                    if (db.State == ConnectionState.Closed)
                    {
                        db.Open();
                    }
                    string check = "Select count(*) from tbl_playerReg where pid = @pid and uid = @uid";
                    SqlCommand ch = new SqlCommand(check, db);
                    ch.Parameters.AddWithValue("@pid", Session["uid"]);
                    ch.Parameters.AddWithValue("@uid", b.CommandArgument);
                    Int32 k = (Int32)ch.ExecuteScalar();
                    if (k != 0)
                    {
                        Response.Write("<script> alert('Alredy Registered for this game!'); </script>");
                    }
                    else
                    {
                        string inp = "insert into tbl_playerReg(pid,uid) values(@pid,@uid)";
                        SqlCommand cmd = new SqlCommand(inp, db);
                        cmd.Parameters.AddWithValue("@pid", Session["uid"]);
                        cmd.Parameters.AddWithValue("@uid", b.CommandArgument);
                        int m = cmd.ExecuteNonQuery();
                        if (m == 0)
                        {
                            Response.Write("<script> alert('Fail to Join !'); </Script>");
                            //Response.Write("<script> window.location.href='AddEvent.aspx'; </script>");
                        }
                        else
                        {
                            string q = "update tbl_upcoming SET spotregistered = spotregistered+1, emptyspot = spotsize-(spotregistered+1) where uid = @uid";
                            SqlCommand cmd2 = new SqlCommand(q, db);
                            cmd2.Parameters.AddWithValue("@uid", b.CommandArgument);
                            int n = cmd2.ExecuteNonQuery();
                            if (n == 0)
                            {
                                Response.Write("<script> alert('Fail To Join !'); </Script>");
                            }
                            else
                            {
                                Response.Write("<script> alert('Event Joined !'); </Script>");
                                Response.Write("<script> window.location.href='event.aspx'; </script>");
                            }
                        }
                        db.Close();
                    }
                }
                catch(Exception ex)
                {
                    Response.Write("<script> alert('Error:" + ex + "'); </Script>");
                }
                
            }
            else if(Session["role"].Equals("Organizer"))
            {
                Response.Write("<script> alert('You are an Organizer'); </Script>");
            }
        }
        
    }
}