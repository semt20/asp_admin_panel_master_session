using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taslak
{
    public partial class login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Global.SESSION_DURUMU = null;
        }

        protected void Buttongiris_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from USERS where USERNAME=@USERNAME and PASSWORD=@PASSWORD";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@USERNAME", TextBoxusername.Text);
            sqlcomm.Parameters.AddWithValue("@PASSWORD", TextBoxpassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            sqlcomm.ExecuteNonQuery();
            if (dt.Rows.Count > 0)
            {
                Session["Username"] = TextBoxusername.Text;
                Global.SESSION_DURUMU = TextBoxpassword.Text;
                Response.Redirect("index.aspx");
            }
            else
            {
                Labeldurum.Text = "Kullanıcı Adı & Parola Hatalı";
                Labeldurum.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}