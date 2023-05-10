using System;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace e_waste
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        //connection to DB
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            Lb1.Visible = false;
        }

        [Obsolete]
        protected void Login_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('login click')</script>");
            string mail = TextBox1.Text.Trim();
            string pass = TextBox2.Text.Trim();

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM USERS WHERE EMAIL = '" + mail + "' AND PASSWORD = '" + pass + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login successful')</script>");
                        Session["name"] = dr.GetValue(1).ToString();
                        Session["lname"] = dr.GetValue(2).ToString();
                        Session["role"] = "USER";
                        Response.Redirect("dashboard.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('user does not exist;')</script>");
                    Lb1.Visible = true;
                }
                dr.Close();
                con.Close();
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        //create new account
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

    }
}