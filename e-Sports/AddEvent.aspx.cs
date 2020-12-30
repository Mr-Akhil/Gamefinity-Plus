using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data;
using System.Data.SqlClient;

namespace e_Sports
{
    public partial class AddEvent : System.Web.UI.Page
    {
        string con = "Data Source=.;Initial Catalog =tournament;User Id=mr_maverick;Password=sql@server";
        string idate;
        protected void Page_Load(object sender, EventArgs e)
        {
            date.Attributes.Add("autocomplete", "off");
        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidateNewEvent())
                {
                    SqlConnection db = new SqlConnection(con);
                    if (db.State == ConnectionState.Closed)
                    {
                        db.Open();
                    }
                    SqlCommand cmd = new SqlCommand("insert into tbl_upcoming(gamename,gamedate,disdate,distime,prizepool,perkill,entryfee,gametype,gameversion,map,about,spotsize,spotregistered,emptyspot,rid) values(@gamename,@gamedate,@disdate,@distime,@prizepool,@perkill,@entryfee,@gametype,@gameversion,@map,@about,@spotsize,0,@emptyspot,@rid)", db);
                    cmd.Parameters.AddWithValue("@gamename", gameName.SelectedValue);
                    cmd.Parameters.AddWithValue("@gamedate", idate);
                    cmd.Parameters.AddWithValue("@disdate", date.Text);
                    cmd.Parameters.AddWithValue("@distime", txtTime.Text.Trim());
                    cmd.Parameters.AddWithValue("@prizepool", prizePool.Text.Trim());
                    cmd.Parameters.AddWithValue("@perkill", perKill.Text.Trim());
                    cmd.Parameters.AddWithValue("@entryfee", entryFee.Text.Trim());
                    cmd.Parameters.AddWithValue("@gametype", gameType.SelectedValue);
                    cmd.Parameters.AddWithValue("@gameversion", gameVersion.SelectedValue);
                    cmd.Parameters.AddWithValue("@map", map.Text.Trim());
                    cmd.Parameters.AddWithValue("@about", about.Text);
                    cmd.Parameters.AddWithValue("@spotsize", spotsize.Text.Trim());
                    cmd.Parameters.AddWithValue("@emptyspot", spotsize.Text.Trim());
                    cmd.Parameters.AddWithValue("@rid", Session["uid"]);
                    int m = cmd.ExecuteNonQuery();
                    if (m == 0)
                    {
                        Response.Write("<script> alert('Add Event Fail !'); </script>");
                    }
                    else
                    {
                        Response.Write("<script> alert('Event Added !'); </Script>");
                        Response.Write("<script> window.location.href='AddEvent.aspx'; </script>");
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script> alert('Error:" + ex.Message + "'); </Script>");
            }

        }




        protected bool ValidateNewEvent()
        {
            if(IsGameName() && IsDateTimeValid() && IsPrizePoolValid() && IsPerKillValid() && IsEntryValid() && IsGameTypeValid() && IsMapValid() && IsGameVersion() && IsSpotValid())
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected bool IsGameName()
        { 
            if (!(gameName.SelectedValue == "Select Game"))
                return true;
            else
            {
                Response.Write("<script> alert('Please Select Game Name !'); </Script>");
                return false;
            }
        }
        protected bool IsDateValid()
        {
            if(date.Text != "")
            {
                return true;
            }
            else
            {
                Response.Write("<script> alert('Please Select a Date!'); </Script>");
                return false;
            }
        }
        protected bool IsTimeValid()
        {
            if (txtTime.Text != "")
            {
                return true;
            }
            else
            {
                Response.Write("<script> alert('Please Select Time!'); </Script>");
                return false;
            }
        }
        protected bool IsDateTimeValid()
        {
            if (IsDateValid() && IsTimeValid())
            {
                idate = date.Text + " " + txtTime.Text;
                DateTime today = DateTime.Today;
                DateTime sel = DateTime.Parse(idate);
                int re = DateTime.Compare(today,sel);
                if (re < 0)
                    return true;
                else
                {
                    Response.Write("<script> alert('Date is out !'); </script>");
                    return false;
                }
            }
            else
                return false;
        }
        protected bool IsPrizePoolValid()
        {
            if(Regex.IsMatch(prizePool.Text, @"^[0-9]"))
            {
                return true;
            }
            else
            {
                Response.Write("<script> alert('Enter a valid amount !'); </script>");
                return false;
            }
        }
        protected bool IsPerKillValid()
        {
            if (Regex.IsMatch(perKill.Text, @"^[0-9]"))
            {
                return true;
            }
            else
            {
                Response.Write("<script> alert('Enter a valid amount !'); </script>");
                return false;
            }
        }
        protected bool IsEntryValid()
        {
            if (Regex.IsMatch(entryFee.Text, @"^[0-9]"))
            {
                return true;
            }
            else
            {
                Response.Write("<script> alert('Enter a Valid Amount !'); </script>");
                return false;
            }
        }
        protected bool IsMapValid()
        {
            if (Regex.IsMatch(map.Text, @"^[a-zA-Z'.\s]{1,25}"))
            {
                return true;
            }
            else
            {
                Response.Write("<script> alert('Enter a Valid Map !'); </script>");
                return false;
            }
        }

        protected bool IsSpotValid()
        {
            if (! Regex.IsMatch(spotsize.Text, @"^[1-9][0-9]?$|^100$"))
            {
                Response.Write("<script> alert('Enter a Valid Spot Size !'); </script>");
                return false;
            }
            else
            {
                return true;
            }
        }
        protected bool IsGameTypeValid()
        {
            if (!(gameType.SelectedValue == "Game Type"))
                return true;
            else
            {
                Response.Write("<script> alert('Please Select Game Type !'); </Script>");
                return false;
            }
        }
        protected bool IsGameVersion()
        {
            if (!(gameVersion.SelectedValue == "Game Version"))
                return true;
            else
            {
                Response.Write("<script> alert('Please Select Game Version !'); </Script>");
                return false;
            }
        }
    }
}