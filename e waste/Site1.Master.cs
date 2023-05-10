using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_waste
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null && !string.IsNullOrEmpty(Session["role"].ToString()))
            {
                try
                {
                    if (Session["role"].Equals("USER"))
                    {
                        LinkButton3.Visible = false;
                        LinkButton7.Visible = false;
                        LinkButton2.Visible = true;
                        LinkButton4.Visible = true;
                        LinkButton4.Text = "Hello " + Session["name"].ToString();


                    }
                }

                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }
            else
            {
                LinkButton3.Visible = true;
                LinkButton7.Visible = true;
                LinkButton2.Visible = false;
                LinkButton4.Visible = false;
            }
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            LinkButton3.Visible = true;
            LinkButton7.Visible = true;
            LinkButton2.Visible = false;
            LinkButton4.Visible = false;
            Response.Redirect("userlogin.aspx");
        }

    }
}