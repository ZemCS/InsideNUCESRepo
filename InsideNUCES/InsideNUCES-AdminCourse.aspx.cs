using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace InsideNUCES
{
    public partial class InsideNUCES_AdminCourse : Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\znaee\source\repos\InsideNUCESRepo\InsideNUCES\App_Data\InsideNUCES.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(HiddenCourseName.Value) && !string.IsNullOrWhiteSpace(HiddenColumnName.Value) && !string.IsNullOrWhiteSpace(HiddenEntry.Value))
            {
                try
                {
                    conn.Open();
                    string updateQuery = "UPDATE Course SET " + HiddenColumnName.Value + " = @Entry WHERE Course_Name = @CourseName";
                    SqlCommand cmd = new SqlCommand(updateQuery, conn);
                    cmd.Parameters.AddWithValue("@Entry", HiddenEntry.Value);
                    cmd.Parameters.AddWithValue("@CourseName", HiddenCourseName.Value);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    conn.Close();

                    if (rowsAffected > 0)
                    {
                        string script = "alert('Updated Successfully');";
                        ClientScript.RegisterStartupScript(this.GetType(), "updatedSuccessfully", script, true);
                        Response.Redirect("InsideNUCES-CourseInfo.aspx?courseName=" + HiddenCourseName.Value);
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
