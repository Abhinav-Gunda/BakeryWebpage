using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Bakery
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        public void samosa_cb_CheckedChanged(object sender, EventArgs e)
        {
            if(samosa_cb.Checked is true)
            {
                samosa_dd.Enabled = true;
                samosa_add.Enabled = true;

            }
            else
            {
                samosa_dd.Enabled = false;
                samosa_add.Enabled = false;
            }
        }

        public void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            if(sting_cb.Checked==true)
            {
                sting_add.Enabled = true;
            }
        }

        public void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        public void exe(string item, int c, int q, int s)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-01LTDBQ\SQLEXPRESS;Initial Catalog=loginDB;Integrated Security=True"))
            {
                con.Open();
                string query = "INSERT into Cart values('" + item + "', '" + c + "', '" + q + "', '" + s + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                con.Close();

                string message = "Added to Cart!.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
        }
        public void sting_add_Click(object sender, EventArgs e)
        {
            string item = sting_cb.Text;
            int c = 30;
            int q = sting_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }

        protected void rb_add_Click(object sender, EventArgs e)
        {
            string item = rb_cb.Text;
            int c = 90;
            int q = rb_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }

        protected void ln_add_Click(object sender, EventArgs e)
        {
            string item = ln_cb.Text;
            int c = 90;
            int q = ln_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }

        protected void cap_add_Click(object sender, EventArgs e)
        {
            string item = cap_cb.Text;
            int c = 120;
            int q = cap_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }

        protected void choc_add_Click(object sender, EventArgs e)
        {
            string item = choc_cb.Text;
            int c = 70;
            int q = choc_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }

        protected void van_add_Click(object sender, EventArgs e)
        {
            string item = van_cb.Text;
            int c = 70;
            int q = van_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }

        protected void bs_add_Click(object sender, EventArgs e)
        {
            string item = bs_cb.Text;
            int c = 120;
            int q = bs_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }

        protected void rv_add_Click(object sender, EventArgs e)
        {
            string item = rv_cb.Text;
            int c = 150;
            int q = rv_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }

        protected void samosa_add_Click(object sender, EventArgs e)
        {
            string item = samosa_cb.Text;
            int c = 15;
            int q = samosa_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }

        protected void roll_add_Click(object sender, EventArgs e)
        {
            string item = roll_cb.Text;
            int c = 25;
            int q = roll_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }

        protected void burger_add_Click(object sender, EventArgs e)
        {
            string item = burger_cb.Text;
            int c = 80;
            int q = burger_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }

        protected void pizza_add_Click(object sender, EventArgs e)
        {
            string item = pizza_cb.Text;
            int c = 100;
            int q = pizza_dd.SelectedIndex;
            int s = c * q;

            exe(item, c, q, s);
        }
    }
}