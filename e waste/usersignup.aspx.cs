using System;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_waste
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //connection to DB
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            clearform();
        }

        [Obsolete]
        protected void Signup_Click(object sender, EventArgs e)
        {
            string fname = TextBox1.Text.Trim();
            string lname = TextBox2.Text.Trim();
            string mail = TextBox3.Text.Trim();
            string pass = TextBox5.Text.Trim();

            if (usercheck(mail))
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();

                    SqlCommand cmd = new SqlCommand("INSERT INTO USERS (FNAME, LNAME, EMAIL, PASSWORD) VALUES('" + fname + "','" + lname + "','" + mail + "','" + pass + "')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Sign Up Succesfull.Go to login page');</script>");
                    Response.Redirect("userlogin.aspx");
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('user already exist with this email id.');</script>");
            }
        }
            //existance of user
            bool usercheck(string mail)
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);

                    con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM USERS WHERE EMAIL ='" + mail + "'");

                    SqlDataAdapter oda = new SqlDataAdapter(cmd.CommandText, con);

                    DataTable tab = new DataTable();

                    oda.Fill(tab);

                    con.Close();

                    if (tab.Rows.Count > 0)
                        return false;
                    else
                        return true;
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                    return false;
                }


            }

        void clearform()
        {
            TextBox1.Text=null;
            TextBox2.Text=null;
            TextBox3.Text=null;
            TextBox5.Text=null;
        }

            


        }
}