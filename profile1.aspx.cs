using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;

namespace AlumniTracking1
{
    public partial class profile1 : System.Web.UI.Page
    {
        String connectionstring;
        SqlConnection con;
        SqlCommand cmd;
        string use;
        string passwd;
        //int count = 0;
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //lblmesage.Visible = false;
                connection();
                use = Session["user"].ToString();

                Console.WriteLine(use);
                using (con)
                {
                    using (cmd = new SqlCommand("SELECT * FROM details WHERE Username='" + use + "'"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            sdr.Read();
                            string full_nm = sdr["FirstName"].ToString() + " " + sdr["LastName"].ToString();
                            TextBox1.Text = full_nm;
                            passwd = sdr["Password"].ToString();
                            TextBox3.Text = sdr["Contact"].ToString();
                            TextBox8.Text = sdr["Username"].ToString();
                            TextBox4.Text = sdr["Username"].ToString();
                            TextBox7.Text = sdr["Address"].ToString();
                            TextBox5.Text = sdr["City"].ToString();
                            TextBox6.Text = sdr["Pincode"].ToString();
                            //TextBox11.Text = sdr["PassoutYear"].ToString();
                            TextBox2.Text = sdr["DoB"].ToString();
                            TextBox9.Text = passwd;

                        }
                        //SqlDataAdapter sda = new SqlDataAdapter("select * from details where Username='" + TextBox8.Text + "'", con);
                        //DataTable dt = new DataTable();
                        //sda.Fill(dt);
                        //byte[] theBytes = Encoding.UTF8.GetBytes(dt.Rows[0]["ImageData"].ToString());

                        //if (dt.Rows[0]["ImageData"].ToString().Length > 1)
                        //{
                        //    //Image1.ImageUrl =dt.Rows[0]["ImageData"].ToString();
                        //    string strBase64 = Convert.ToBase64String(theBytes);

                        //    Image1.ImageUrl = "data:Image/png;base64," + strBase64;
                        //}
                        con.Close();
                    }
                }
            }
            
            
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    HttpPostedFile postedFile=FileUpload1.PostedFile;
        //    string fileName = Path.GetFileName(postedFile.FileName);
        //    string fileExtension = Path.GetExtension(fileName);
        //    int filesize = postedFile.ContentLength;

        //    if(fileExtension.ToLower()==".jpg"||fileExtension.ToLower()=="bmp"||fileExtension.ToLower()==".gif"||fileExtension.ToLower()==".png")
        //    {
        //        Stream stream=postedFile.InputStream;
        //        BinaryReader binaryReader = new BinaryReader(stream);
        //        byte[] bytes=binaryReader.ReadBytes((int)stream.Length);

        //        string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ASUS\Documents\sakshi.mdf;Integrated Security=True;Connect Timeout=30";
        //        using (SqlConnection con = new SqlConnection(cs))
        //        {
        //            SqlCommand cmd = new SqlCommand("spUploadImage", con);
        //            cmd.CommandType = CommandType.StoredProcedure;

        //            //SqlParameter paramName = new SqlParameter()
        //            //{
        //            //    ParameterName = "@Name",
        //            //    Value = fileName
        //            //};
        //            //cmd.Parameters.Add(paramName);
                    
        //            SqlParameter paramImageData = new SqlParameter()
        //            {
        //                ParameterName = "@ImageData",
        //                Value = bytes
        //            };
        //            cmd.Parameters.Add(paramImageData);
        //            SqlParameter paramUser = new SqlParameter()
        //            {
        //                ParameterName = "@Username",
        //                Value = TextBox4.Text
        //            };
        //            cmd.Parameters.Add(paramUser);
        //            //SqlParameter paramNewId = new SqlParameter()
        //            //{
        //            //    ParameterName = "@NewId",
        //            //    Value = -1,
        //            //    Direction = ParameterDirection.Output
        //            //};
        //            //cmd.Parameters.Add(paramNewId);

        //            con.Open();
        //            cmd.ExecuteNonQuery();
        //            con.Close();
                    
        //            lblmesage.Visible = true;
        //            lblmesage.Text = "uploaded successfully";
        //            lblmesage.ForeColor = System.Drawing.Color.Green;
                    
        //            con.Open();
        //            //SqlCommand command = new SqlCommand("spGetImageById", con);
        //            //command.CommandType = CommandType.StoredProcedure;

        //            //SqlParameter paramUsername = new SqlParameter()
        //            //{
        //            //    ParameterName = "@Username",
        //            //    Value = TextBox4.Text
        //            //};
        //            //command.Parameters.Add(paramUsername);
        //            //string[] bytes1 =command.ExecuteScalar();

        //            //string strBase64 = Convert.ToBase64String(bytes1);

        //            //Image1.ImageUrl = "data:Image/png;base64,"+strBase64;
        //        }
        //    }
        //    else
        //    {
        //        lblmesage.Visible = true;
        //        lblmesage.Text = "Only images(.jpg,.png,.bmp and .gif) can be uploaded";
        //        lblmesage.ForeColor = System.Drawing.Color.Red;
        //    }

            //new code

            


        //}
        public void connection()
        {
            connectionstring = @"Data Source=LAPTOP-CGQQIECB\SQLEXPRESS;Initial Catalog=Alumnidata;Integrated Security=True";
            con = new SqlConnection(connectionstring);

        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar1.SelectedDate.ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            connection();
            string full_name = TextBox1.Text;
            DateTime dob = Calendar1.SelectedDate;
            string cont = TextBox3.Text;
            email = TextBox4.Text;
            //string yr = TextBox11.Text;
            //int passout = int.Parse(yr);
            string cty = TextBox5.Text;
            int pin = int.Parse(TextBox6.Text);
            string add = TextBox7.Text;
            string uid = TextBox8.Text;
            string opass = TextBox9.Text;
            string npass = TextBox10.Text;

            use = Session["user"].ToString();
            con.Open();

            cmd = new SqlCommand("Update details set FullName=@fullname,DoB=@dob1,Contact=@con1,Username= @unm1,City=@cty1,Pincode=@pin1,Address=@add1,Password=@pass1 WHERE Username=@use", con);

            cmd.Parameters.AddWithValue("@fullname", full_name);
            cmd.Parameters.AddWithValue("@dob1", dob);
            cmd.Parameters.AddWithValue("@con1", cont);
            cmd.Parameters.AddWithValue("@unm1", email);
            //cmd.Parameters.AddWithValue("@passout1", passout);
            cmd.Parameters.AddWithValue("@cty1", cty);
            cmd.Parameters.AddWithValue("@pin1", pin);
            cmd.Parameters.AddWithValue("@add1", add);
            cmd.Parameters.AddWithValue("@use", use);
            if (TextBox10.Text == "")
            {
                cmd.Parameters.AddWithValue("@pass1", opass);
            }
            else
            {
                cmd.Parameters.AddWithValue("@pass1", npass);
            }
            cmd.ExecuteNonQuery();
            cmd.Dispose();

            


            con.Close();
            Response.Redirect("HomeUser.aspx");

        }
    }
}