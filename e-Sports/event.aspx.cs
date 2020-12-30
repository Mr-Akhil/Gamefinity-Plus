using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Sports
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void freefire_Click(object sender, EventArgs e)
        {
            Session["cardname"] = "freefire";
            Response.Redirect("upcomingevent.aspx");
        }

        protected void pubg_Click(object sender, EventArgs e)
        {
            Session["cardname"] = "pubg";
            Response.Redirect("upcomingevent.aspx");
        }

        protected void velorent_Click(object sender, EventArgs e)
        {
            Session["cardname"] = "velorent";
            Response.Redirect("upcomingevent.aspx");
        }

        protected void cod_Click(object sender, EventArgs e)
        {
            Session["cardname"] = "cod";
            Response.Redirect("upcomingevent.aspx");
        }
    }
}