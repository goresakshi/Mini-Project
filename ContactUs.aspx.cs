using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AlumniTracking1
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                clear();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conn = @"Data Source=LAPTOP-CGQQIECB\SQLEXPRESS;Initial Catalog=Alumnidata;Integrated Security=True";
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from ContactUs", con);
            SqlDataReader reader = cmd.ExecuteReader();
            string email = "";
            string ContactNo = "";
            while(reader.Read())
            {
                email = email + reader[0];
                ContactNo = ContactNo + reader[1];
            }
            reader.Close();
            if(email==""||ContactNo=="")
            {
                SqlCommand sqlcmd = new SqlCommand("insert into ContactUs(Email,ContactNo) values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
                sqlcmd.ExecuteNonQuery();
                lblSuccess.Text = "Updated successfully";
                
                
            }
            else
            {
                SqlCommand command = new SqlCommand("delete from ContactUs where Email='" + email + "'",con);
                command.ExecuteNonQuery();
                SqlCommand sqlcmd1 = new SqlCommand("insert into ContactUs(Email,ContactNo) values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
                sqlcmd1.ExecuteNonQuery();
                lblSuccess.Text = "Updated successfully";
            }
        }
        void clear()
        {
            TextBox1.Text = TextBox2.Text = "";
            lblSuccess.Text = "";
        }
    }
}