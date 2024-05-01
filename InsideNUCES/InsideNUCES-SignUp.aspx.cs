using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.InteropServices;

namespace InsideNUCES
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\znaee\source\repos\InsideNUCES\InsideNUCES\App_Data\InsideNUCES.mdf;Integrated Security=True");
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (HiddenName.Value != "" && HiddenUsername.Value != "" && HiddenPassword.Value != "" && HiddenType.Value != "")
            {
                int v = check(HiddenUsername.Value);
                if (v != 1)
                {
                    try
                    {
                        conn.Open();
                        SqlCommand cmd = new SqlCommand("INSERT INTO [User] (Username, Password, Name, Type) VALUES (@Username, @Password, @Name, @Type)", conn);
                        cmd.Parameters.AddWithValue("@Username", HiddenUsername.Value);
                        cmd.Parameters.AddWithValue("@Name", HiddenName.Value);
                        cmd.Parameters.AddWithValue("@Password", HiddenPassword.Value);
                        cmd.Parameters.AddWithValue("@Type", HiddenType.Value);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        string script = "alert('Registered Successfully');";
                        ClientScript.RegisterStartupScript(this.GetType(), "registeredSuccessfully", script, true);
                        Response.Redirect("InsideNUCES-Login.aspx");
                    }
                    catch (Exception ex)
                    {
                        // Log the exception for debugging purposes
                        Console.WriteLine(ex.ToString());

                        string script = "alert('An error occurred during registration.');";
                        ClientScript.RegisterStartupScript(this.GetType(), "registrationFailed", script, true);
                    }
                }
                else
                {
                    string script = "alert('Enter a Different Username');";
                    ClientScript.RegisterStartupScript(this.GetType(), "registrationFailed", script, true);
                }
            }
            else
            {
                string script = "alert('Fill All Fields');";
                ClientScript.RegisterStartupScript(this.GetType(), "registrationFailed", script, true);
            }
        }


        int check(string username)
        {
            int count;
            using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\znaee\source\repos\InsideNUCES\InsideNUCES\App_Data\InsideNUCES.mdf;Integrated Security=True"))
            {
                conn.Open();
                string query = "SELECT COUNT(*) FROM dbo.[User] WHERE Username = @Username";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    count = (int)cmd.ExecuteScalar();
                }
            }
            return count;
        }

    }
}