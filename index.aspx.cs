using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace AlumniTracking1
{
    public partial class register : System.Web.UI.Page
    {
        String connectionstring = @"Data Source=LAPTOP-CGQQIECB\SQLEXPRESS;Initial Catalog=Alumnidata;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }

        }

        protected void btns_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "" || txtPassword.Text == "")
                lblErrorMessage.Text = "Please enter mandatory fields";
            else if (txtPassword.Text != txtConfirmPassword.Text)
                lblErrorMessage.Text = "Entered password do not match";
            else
            {
                using (SqlConnection sqlcon = new SqlConnection(connectionstring))
                {
                    sqlcon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserAdd", sqlcon);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    //sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
                    sqlCmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Contact", txtContact.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Gender", ddlGender.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    lblSuccessMessage.Text = "Submitted Successfully";
                    //VerifyAlumni verify = new VerifyAlumni();
                }
            }

        }
        void Clear()
        {
            txtFirstName.Text = txtLastName.Text = txtContact.Text = txtAddress.Text = txtUsername.Text = txtPassword.Text = txtConfirmPassword.Text = "";
            //hfUserID.Value = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
        }
    }
}