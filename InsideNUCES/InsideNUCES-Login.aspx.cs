using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace InsideNUCES
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\znaee\source\repos\InsideNUCESRepo\InsideNUCES\App_Data\InsideNUCES.mdf;Integrated Security=True");
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (HiddenUsername.Value != "" && HiddenPassword.Value != "")
            {
                string query = "SELECT Type, Name FROM [User] WHERE Username = @Username AND Password = @Password";
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", HiddenUsername.Value);
                cmd.Parameters.AddWithValue("@Password", HiddenPassword.Value);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    string userType = reader["Type"].ToString();
                    string studentName = reader["Name"].ToString();
                    conn.Close();
                    switch (userType)
                    {
                        case "Public":
                            Response.Redirect("InsideNUCES-PublicHome.aspx");
                            break;
                        case "Student":
                            Response.Redirect($"InsideNUCES-StudentHome.aspx?studentName={HttpUtility.UrlEncode(studentName)}");
                            break;
                        case "Admin":
                            Response.Redirect("InsideNUCES-AdminHome.aspx");
                            break;
                        default:
                            // Handle unknown user types or unexpected errors
                            string script = "alert('Unknown user type or error occurred');";
                            ClientScript.RegisterStartupScript(this.GetType(), "loginFailed", script, true);
                            break;
                    }
                }
                else
                {
                    conn.Close();
                    string script = "alert('Wrong Username or Password');";
                    ClientScript.RegisterStartupScript(this.GetType(), "loginFailed", script, true);
                }
            }
            else
            {
                string script = "alert('Fill All Fields');";
                ClientScript.RegisterStartupScript(this.GetType(), "loginFailed", script, true);
            }
        }

    }
}
