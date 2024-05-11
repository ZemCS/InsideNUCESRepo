using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsideNUCES
{
    public partial class InsideNUCES_TeacherInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if teacherName parameter exists in the query string
                if (Request.QueryString["teacherName"] != null)
                {
                    // Retrieve teacher name from query string
                    string teacherName = Request.QueryString["teacherName"];
                    string query = "SELECT * FROM Instructor WHERE Name = @TeacherName";

                    SqlConnection connectionString = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Zainab Khan Lodhi\source\repos\InsideNUCESRepo\InsideNUCES\App_Data\teachers.mdf;Integrated Security=True");

                    using (SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Zainab Khan Lodhi\source\repos\InsideNUCESRepo\InsideNUCES\App_Data\teachers.mdf;Integrated Security=True"))
                    {
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@TeacherName", teacherName);

                        try
                        {
                            connection.Open();
                            SqlDataReader reader = command.ExecuteReader();
                            if (reader.Read())
                            {
                                // Set the text of the label to the teacher's bio
                                lblTeacherBio.Text = reader["Bio"].ToString();
                                lblTeacherBS.Text = reader["Bachelors"].ToString();
                                lblTeacherMS.Text = reader["Masters"].ToString();
                                lblTeacherPhD.Text = reader["PhD"].ToString();
                                lblTeacherCourse1.Text = reader["Course1"].ToString();
                                lblTeacherCourse2.Text = reader["Course2"].ToString();
                                lblTeacherCourse3.Text = reader["Course3"].ToString();
                                lblTeacherTimings.Text = reader["Office_Timings"].ToString();
                                lblTeacherEmail.Text = reader["Email"].ToString();
                                lblTeacherNumber.Text = reader["Contact_Number"].ToString();
                                lblTeacherTA_RollNo.Text = reader["TA_RollNumber"].ToString();

                                object taValue = reader["TA"];
                                if (taValue != DBNull.Value)
                                {
                                    lblTeacherTA.Text = taValue.ToString();
                                }
                                else
                                {
                                    lblTeacherTA.Text = "There is no TA affiliated with this teacher";
                                }
                            }
                            reader.Close();
                        }
                        catch (Exception ex)
                        {
                            // Handle any exceptions
                            Console.WriteLine(ex.Message);
                        }
                    }
                }
            }
        }

    }
}