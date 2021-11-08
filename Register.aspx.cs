using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Bakery
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            reg_error.Visible = false;
        }

        protected void reg_login_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-01LTDBQ\SQLEXPRESS;Initial Catalog=loginDB;Integrated Security=True"))
            {
                con.Open();
                string p1 = reg_pass.Text;
                string p2 = reg_con_pass.Text;
                string u = reg_username.Text;

                if (p1 == p2)
                {
                    string query = "INSERT into tbl_users values('" + u + "', '" + p1 + "')";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    reg_error.Visible = true;
                    reg_pass.Text = "";
                    reg_con_pass.Text ="";
                    reg_username.Text = "";
                }
                con.Close();
            }
        }
    }
}