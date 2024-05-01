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
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\znaee\source\repos\InsideNUCES\InsideNUCES\App_Data\InsideNUCES.mdf;Integrated Security=True");
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(HiddenUsername.Value!="" && HiddenPassword.Value != "")
            {
                string query = "select count(*) from [User] where Username = '" + HiddenUsername.Value + "' and Password = '" + HiddenPassword.Value + "'";
                conn.Open();
                SqlCommand cmd= new SqlCommand(query, conn);
                int v = (int)cmd.ExecuteScalar();
                if (v != 1)
                {
                    string script = "alert('Wrong Username or Password');";
                    ClientScript.RegisterStartupScript(this.GetType(), "loginFailed", script, true);
                }
                else
                {
                    Response.Redirect("InsideNUCES-PublicHome.aspx");
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