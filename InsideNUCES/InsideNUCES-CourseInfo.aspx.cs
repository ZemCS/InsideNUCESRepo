using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsideNUCES
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if teacherName parameter exists in the query string
                if (Request.QueryString["courseName"] != null)
                {
                    // Retrieve teacher name from query string
                    string courseName = Request.QueryString["courseName"];
                    string query = "SELECT * FROM Course WHERE Course_Name = @CourseName";

                    SqlConnection connectionString = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\znaee\source\repos\InsideNUCESRepo\InsideNUCES\App_Data\InsideNUCES.mdf;Integrated Security=True");

                    using (SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\znaee\source\repos\InsideNUCESRepo\InsideNUCES\App_Data\InsideNUCES.mdf;Integrated Security=True"))
                    {
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@CourseName", courseName);

                        try
                        {
                            connection.Open();
                            SqlDataReader reader = command.ExecuteReader();
                            if (reader.Read())
                            {
                                // Set the text of the label to the teacher's bio
                                lblCourseDept.Text = reader["Department"].ToString();
                                lblCourseOverview.Text = reader["Bio"].ToString();
                                lblInstructor1.Text = reader["Instructor1"].ToString();
                                lblInstructor2.Text = reader["Instructor2"].ToString();
                                lblInstructor3.Text = reader["Instructor3"].ToString();
                                lblInstructor4.Text = reader["Instructor4"].ToString();
                                lblInstructor5.Text = reader["Instructor5"].ToString();
                                lblIns1Time.Text = reader["I1Time"].ToString();
                                lblIns2Time.Text = reader["I2Time"].ToString();
                                lblIns3Time.Text = reader["I3Time"].ToString();
                                lblIns4Time.Text = reader["I4Time"].ToString();
                                lblIns5Time.Text = reader["I5Time"].ToString();
                                lblIns1Venue.Text = reader["I1Venue"].ToString();
                                lblIns2Venue.Text = reader["I2Venue"].ToString();
                                lblIns3Venue.Text = reader["I3Venue"].ToString();
                                lblIns4Venue.Text = reader["I4Venue"].ToString();
                                lblIns5Venue.Text = reader["I5Venue"].ToString();
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