using System;
using System.Data.SqlClient;

namespace hotelmanagement
{
    public partial class ThemHoadon : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ADMIN\Downloads\Hotel\hotelmanagement\hotelmanagement\App_Data\DBBooking.mdf;Integrated Security=True";

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string maDatPhong = txtMaDatPhong.Text;
            string ngayLap = txtNgayLap.Text;
            string tongTien = txtTongTien.Text;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "INSERT INTO HOADON (MaDatPhong, NgayLap, TongTien) VALUES (@MaDatPhong, @NgayLap, @TongTien)";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@MaDatPhong", maDatPhong);
                    cmd.Parameters.AddWithValue("@NgayLap", ngayLap);
                    cmd.Parameters.AddWithValue("@TongTien", tongTien);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            Response.Redirect("Hoadon.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hoadon.aspx");
        }
    }
}
