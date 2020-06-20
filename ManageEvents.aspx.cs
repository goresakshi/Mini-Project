using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace AlumniTracking1
{
    public partial class ManageEvents : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                clear();
            }
        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            if (FormLink.Text == null || Description.Text == null)
            {
                lblcheck.Text = "fill mandatory fields";
            }
            else
            {
                SqlConnection sql = new SqlConnection(@"Data Source=LAPTOP-CGQQIECB\SQLEXPRESS;Initial Catalog=Alumnidata;Integrated Security=True");
                sql.Open();
                SqlCommand cmd = new SqlCommand("linkAdd", sql);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FormLink", FormLink.Text.Trim());
                cmd.Parameters.AddWithValue("@Description", Description.Text.Trim());
                cmd.ExecuteNonQuery();
                lblcheck.Text = "Event uploaded";
            } 
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
           Response.Redirect(GridView1.SelectedRow.Cells[1].Text);
        }
        void clear()
        {
            FormLink.Text = Description.Text = "";
            lblcheck.Text = "";
        }
    }
}