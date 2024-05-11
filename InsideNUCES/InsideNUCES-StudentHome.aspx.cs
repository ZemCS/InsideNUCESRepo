using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsideNUCES
{
    public partial class InsideNUCES_StudentHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if teacherName parameter exists in the query string
                if (Request.QueryString["studentName"] != null)
                {
                    // Retrieve teacher name from query string
                    string studentName = Request.QueryString["studentName"];
                    string query = "SELECT * FROM Student WHERE Name = @StudentName";

                    SqlConnection connectionString = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\znaee\source\repos\InsideNUCESRepo\InsideNUCES\App_Data\InsideNUCES.mdf;Integrated Security=True");

                    using (SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\znaee\source\repos\InsideNUCESRepo\InsideNUCES\App_Data\InsideNUCES.mdf;Integrated Security=True"))
                    {
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@StudentName", studentName);

                        try
                        {
                            connection.Open();
                            SqlDataReader reader = command.ExecuteReader();
                            if (reader.Read())
                            {
                                // Set the text of the label to the teacher's bio
                                stdName.Text = stdName.Text + reader["Name"].ToString();
                                stdRollNo.Text = stdRollNo.Text + reader["RollNo"].ToString();
                                stdDegree.Text = stdDegree.Text + reader["Degree"].ToString();
                                stdSection.Text = stdSection.Text + reader["Section"].ToString();
                                stdCGPA.Text = stdCGPA.Text + reader["CGPA"].ToString();
                                stdT1.Text = reader["Course1"].ToString() + ": " + reader["Transcript1"].ToString();
                                stdT2.Text = reader["Course2"].ToString() + ": " + reader["Transcript2"].ToString();
                                stdT3.Text = reader["Course3"].ToString() + ": " + reader["Transcript3"].ToString();
                                stdT4.Text = reader["Course4"].ToString() + ": " + reader["Transcript4"].ToString();
                                stdT5.Text = reader["Course5"].ToString() + ": " + reader["Transcript5"].ToString();
                                stdA1.Text = reader["Course1"].ToString() + ": " + reader["Attendance1"].ToString();
                                stdA2.Text = reader["Course2"].ToString() + ": " + reader["Attendance2"].ToString();
                                stdA3.Text = reader["Course3"].ToString() + ": " + reader["Attendance3"].ToString();
                                stdA4.Text = reader["Course4"].ToString() + ": " + reader["Attendance4"].ToString();
                                stdA5.Text = reader["Course5"].ToString() + ": " + reader["Attendance5"].ToString();
                                stdV1.Text = reader["Venue1"].ToString();
                                stdV2.Text = reader["Venue2"].ToString();
                                stdV3.Text = reader["Venue3"].ToString();
                                stdV4.Text = reader["Venue4"].ToString();
                                stdV5.Text = reader["Venue5"].ToString();
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