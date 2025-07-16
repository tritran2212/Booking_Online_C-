using System;
using System.Data.SqlClient;

namespace hotelmanagement
{
    public partial class Login : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ADMIN\Downloads\Hotel\hotelmanagement\hotelmanagement\App_Data\DBBooking.mdf;Integrated Security=True";

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "SELECT role FROM Accounts WHERE username = @username AND password = @password";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);

                    conn.Open();
                    object result = cmd.ExecuteScalar();

                    if (result != null)
                    {
                        string role = result.ToString();
                        if (role == "Admin")
                        {
                            Response.Redirect("Trangchu.aspx");
                        }
                        else if (role == "User")
                        {
                            Response.Redirect("TrangChuUser.aspx");
                        }
                        else
                        {
                            lblError.Text = "Quyền không hợp lệ!";
                        }
                    }
                    else
                    {
                        lblError.Text = "Tên đăng nhập hoặc mật khẩu không đúng!";
                    }
                }
            }
        }
    }
}