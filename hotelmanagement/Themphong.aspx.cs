using System;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

namespace hotelmanagement
{
    public partial class ThemPhong : System.Web.UI.Page

    {
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string maPhong = txtMaPhong.Text.Trim();
            string tenPhong = txtTenPhong.Text.Trim();
            string loaiPhong = ddlLoaiPhong.SelectedValue;
            int giaPhong = int.Parse(txtGiaPhong.Text.Trim());
            string trangThai = ddlTrangThai.SelectedValue;

            string fileName = "";

            if (fuHinhAnh.HasFile)
            {
                fileName = Path.GetFileName(fuHinhAnh.FileName);
                string savePath = Server.MapPath("~/Images/") + fileName;
                fuHinhAnh.SaveAs(savePath);
            }

            string connStr = ConfigurationManager.ConnectionStrings["BookingDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "INSERT INTO PHONG (MaPhong, TenPhong, LoaiPhong, GiaPhong, TrangThai, HinhAnh) " +
                             "VALUES (@MaPhong, @TenPhong, @LoaiPhong, @GiaPhong, @TrangThai, @HinhAnh)";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@MaPhong", maPhong);
                    cmd.Parameters.AddWithValue("@TenPhong", tenPhong);
                    cmd.Parameters.AddWithValue("@LoaiPhong", loaiPhong);
                    cmd.Parameters.AddWithValue("@GiaPhong", giaPhong);
                    cmd.Parameters.AddWithValue("@TrangThai", trangThai);
                    cmd.Parameters.AddWithValue("@HinhAnh", fileName);

                    conn.Open();

                    cmd.ExecuteNonQuery();
                }
            }

            // Chuyển về danh sách phòng sau khi thêm thành công
            Response.Redirect("Phong.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
           Response.Redirect("Phong.aspx");
       }

        protected void txtMaPhong_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
