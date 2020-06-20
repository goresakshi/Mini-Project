using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace AlumniTracking1
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String connectionstring = @"Data Source=LAPTOP-CGQQIECB\SQLEXPRESS;Initial Catalog=Alumnidata;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "spSearchEmployees";
                cmd.CommandType = CommandType.StoredProcedure;

                if (inputFirstname.Value.Trim() != "")
                {
                    SqlParameter param = new SqlParameter
                        ("@FirstName", inputFirstname.Value);
                    cmd.Parameters.Add(param);
                }

                if (inputLastname.Value.Trim() != "")
                {
                    SqlParameter param = new SqlParameter
                        ("@LastName", inputLastname.Value);
                    cmd.Parameters.Add(param);
                }



                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                gvSearchResults.DataSource = rdr;
                gvSearchResults.DataBind();

            }

        }
    }
}