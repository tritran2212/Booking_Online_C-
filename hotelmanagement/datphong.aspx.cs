using System;
using System.Data.SqlClient;

namespace hotelmanagement
{
    public partial class DatPhong : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ADMIN\Downloads\Hotel\hotelmanagement\hotelmanagement\App_Data\DBBooking.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Lấy mã phòng từ URL
                string maPhong = Request.QueryString["MaPhong"];
                if (!string.IsNullOrEmpty(maPhong))
                {
                    txtMaPhong.Text = maPhong;
                }
            }
        }

        protected void btnDatPhong_Click(object sender, EventArgs e)
        {
            string maPhong = txtMaPhong.Text;
            string maKH = txtMaKH.Text;
            DateTime ngayNhan = DateTime.Parse(txtNgayNhan.Text);
            DateTime ngayTra = DateTime.Parse(txtNgayTra.Text);

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO DATPHONG (MaKH, MaPhong, NgayNhan, NgayTra, TrangThai) " +
                               "VALUES (@MaKH, @MaPhong, @NgayNhan, @NgayTra, N'Đã đặt')";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@MaKH", maKH);
                cmd.Parameters.AddWithValue("@MaPhong", maPhong);
                cmd.Parameters.AddWithValue("@NgayNhan", ngayNhan);
                cmd.Parameters.AddWithValue("@NgayTra", ngayTra);

                try
                {
                    conn.Open();
                    int rows = cmd.ExecuteNonQuery();
                    if (rows > 0)
                    {
                        lblThongBao.Text = "✅ Đặt phòng thành công!";
                        lblThongBao.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        lblThongBao.Text = "❌ Đặt phòng thất bại.";
                        lblThongBao.ForeColor = System.Drawing.Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    lblThongBao.Text = "❌ Lỗi: " + ex.Message;
                    lblThongBao.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}