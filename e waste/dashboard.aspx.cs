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
    public partial class dashboard : System.Web.UI.Page
    {
        //connection to DB
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            fillproducts();
        }

        //search button
        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {
            string pdt = DropDownList1.SelectedItem.Value;
            try
            {
               
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SELECT id, c_name, status, method FROM appliances WHERE type = @pdt", con);
                        cmd.Parameters.AddWithValue("@pdt", pdt);
                        SqlDataAdapter oda = new SqlDataAdapter(cmd);
                        DataTable tab = new DataTable();
                        oda.Fill(tab);
                        GridView1.DataSource = tab;
                        GridView1.DataBind();
                    }
                    catch (Exception ex)
                    {
                        // Log or display the error message
                        Response.Write("Error: " + ex.Message);
                    }
                    finally
                    {
                        con.Close();
                    }
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }


        }



        //subjects from backend
        [Obsolete]
        void fillproducts()
        {
            if (!IsPostBack)
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT distinct type FROM appliances order by type", con);

                    SqlDataReader dr = cmd.ExecuteReader();

                    DropDownList1.DataSource = dr;
                    DropDownList1.DataTextField = "type";
                    DropDownList1.DataValueField = "type";
                    DropDownList1.DataBind();
                    dr.Close();
                    con.Close();


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }

        //clearform
        void clearform()
        {
            DropDownList1.SelectedValue = "";
            DropDownList1.Text = "";

        }
    }
}