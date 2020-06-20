using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace AlumniTracking1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }
        }
        
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem.Text=="Alumni")
            {
                if (TextBoxUname.Text == "")
                {
                    Lblusername.Text = "*";
                }
                if (TextBoxPwd.Text == "")
                {
                    lblpwd.Text = "*";
                }
                String con = @"Data Source=LAPTOP-CGQQIECB\SQLEXPRESS;Initial Catalog=Alumnidata;Integrated Security=True";
                SqlConnection sql = new SqlConnection(con);
                sql.Open();
                SqlCommand command = new SqlCommand("select Username from details where Username='" + TextBoxUname.Text + "'", sql);
                SqlDataReader user = command.ExecuteReader();
                String foundUser = "";
                while (user.Read())
                {
                    foundUser = foundUser + user[0];
                }
                user.Close();
                if (foundUser == TextBoxUname.Text)
                {
                    //Response.Write("found");
                    SqlCommand sqlCommand = new SqlCommand("select Password from details where Username='" + TextBoxUname.Text + "'", sql);
                    SqlDataReader reader = sqlCommand.ExecuteReader();
                    //reader.Close();
                    String pwd = "";
                    while (reader.Read())
                    {
                        pwd = pwd + reader[0];
                    }
                    if (pwd == TextBoxPwd.Text)
                    {
                        lblValidity.Text = "valid User";
                        Session["user"] = TextBoxUname.Text;
                        Server.Transfer("profile1.aspx");
                        Response.Redirect("profile1.aspx");

                    }
                    else
                    {
                        lblValidity.Text = "Password is incorrect";
                    }
                }
                else
                {
                    lblValidity.Text = "Username is incorret";
                }
            }
            if(RadioButtonList1.SelectedItem.Text=="Admin")
            {
                if (TextBoxUname.Text == "")
                {
                    Lblusername.Text = "*";
                }
                if (TextBoxPwd.Text == "")
                {
                    lblpwd.Text = "*";
                }
                String con = @"Data Source=LAPTOP-CGQQIECB\SQLEXPRESS;Initial Catalog=Alumnidata;Integrated Security=True";
                SqlConnection sql = new SqlConnection(con);
                sql.Open();
                SqlCommand command = new SqlCommand("select Username from AdminDetails where Username='" + TextBoxUname.Text + "'", sql);
                SqlDataReader user = command.ExecuteReader();
                String foundUser = "";
                while (user.Read())
                {
                    foundUser = foundUser + user[0];
                }
                user.Close();
                if (foundUser == TextBoxUname.Text)
                {
                    //Response.Write("found");
                    SqlCommand sqlCommand = new SqlCommand("select Password from AdminDetails where Username='" + TextBoxUname.Text + "'", sql);
                    SqlDataReader reader = sqlCommand.ExecuteReader();
                    //reader.Close();
                    String pwd = "";
                    while (reader.Read())
                    {
                        pwd = pwd + reader[0];
                    }
                    if (pwd == TextBoxPwd.Text)
                    {
                        lblValidity.Text = "valid User";
                        //Session["user"] = TextBoxUname.Text;
                        //Server.Transfer("profile1.aspx");
                        Response.Redirect("Home.aspx");

                    }
                    else
                    {
                        lblValidity.Text = "Password is incorrect";
                    }
                }
                else
                {
                    lblValidity.Text = "Username is incorret";
                }
            }
        }
        void Clear()
        {
            TextBoxUname.Text = TextBoxPwd.Text = "";
            Lblusername.Text = lblpwd.Text = "";

        }

       

        //protected void Alumni_CheckedChanged(object sender, EventArgs e)
        //{

        //}
    }
}