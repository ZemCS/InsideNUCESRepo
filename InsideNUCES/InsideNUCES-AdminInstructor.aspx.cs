using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsideNUCES
{
    public partial class InsideNUCES_AdminInstructor : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\znaee\source\repos\InsideNUCESRepo\InsideNUCES\App_Data\InsideNUCES.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(HiddenInstructorName.Value) && !string.IsNullOrWhiteSpace(HiddenColumnName.Value) && !string.IsNullOrWhiteSpace(HiddenEntry.Value))
            {
                try
                {
                    conn.Open();
                    string updateQuery = "UPDATE Instructor SET " + HiddenColumnName.Value + " = @Entry WHERE Name = @InstructorName";
                    SqlCommand cmd = new SqlCommand(updateQuery, conn);
                    cmd.Parameters.AddWithValue("@Entry", HiddenEntry.Value);
                    cmd.Parameters.AddWithValue("@InstructorName", HiddenInstructorName.Value);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    conn.Close();

                    if (rowsAffected > 0)
                    {
                        string script = "alert('Updated Successfully');";
                        ClientScript.RegisterStartupScript(this.GetType(), "updatedSuccessfully", script, true);
                        Response.Redirect("InsideNUCES-TeacherInfo.aspx?teacherName=" + HiddenInstructorName.Value);
                    }
                    else
                    {
                        throw new Exception("No rows updated."); // or handle this case appropriately
                    }
                }
                catch (Exception ex)
                {
                    // Log the exception for debugging purposes
                    Console.WriteLine(ex.ToString());

                    string script = "alert('An error occurred while updating.');";
                    ClientScript.RegisterStartupScript(this.GetType(), "updateFailed", script, true);
                }
            }
            else
            {
                string script = "alert('Fill All Fields');";
                ClientScript.RegisterStartupScript(this.GetType(), "fillFields", script, true);
            }
        }
    }
}