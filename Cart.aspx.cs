using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.Data;
using System.Configuration;


namespace Bakery
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                this.getlv();
            }

            string bill="";
            using (SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-01LTDBQ\SQLEXPRESS;Initial Catalog=loginDB;Integrated Security=True"))
            {
                 con.Open();
                 string query = "select sum(t.Total) as Total_Bill from(select Item, Cost, SUM(Quantity) as T_Quant, (Cost * SUM(Quantity)) as Total FROM Cart GROUP BY Item, Cost) as t;";
                 SqlCommand cmd = new SqlCommand(query, con);
                 SqlDataReader read = cmd.ExecuteReader();
                 while(read.Read())
                 {
                    bill = read["Total_Bill"].ToString();
                 }
                 con.Close();
                 Label2.Text = bill.ToString();
            }
        }

        private void getlv()
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select Item,Cost, SUM(Quantity) as T_Quant,(Cost* SUM(Quantity)) as Total FROM Cart GROUP BY Item,Cost order by Item desc";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            sqlconn.Close();

        }

        public void Button1_Click(object sender, EventArgs e)
        {
            string message = "Thanks for your order. Have a Good Day!.";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "DELETE from Cart";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();


            
            ScriptManager.RegisterStartupScript(this, typeof(Page), "script", "setTimeout(function(){window.location.href='Home.aspx';},5000);", true);


        }
    }
}