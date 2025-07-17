using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace hotelmanagement
{
    public partial class TrangChuUser1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDanhSachPhong();
            }
        }
        private void LoadDanhSachPhong()
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ADMIN\Downloads\Hotel\hotelmanagement\hotelmanagement\App_Data\DBBooking.mdf;Integrated Security=True";
            string query = "SELECT * FROM PHONG";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                dlPhong.DataSource = dt;
                dlPhong.DataBind();
            }
        }

        protected void btnChiTiet_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string maPhong = btn.CommandArgument;
            Response.Redirect("ChiTietPhong.aspx?MaPhong=" + maPhong);
        }

        protected void btnDatPhong_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string maPhong = btn.CommandArgument;
            Response.Redirect("DatPhong.aspx?MaPhong=" + maPhong);
        }
        protected void dlPhong_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Ví dụ: lấy mã phòng từ item được chọn
            string maPhong = dlPhong.SelectedValue.ToString();

            // Chuyển hướng đến chi tiết phòng
            Response.Redirect($"TrangChiTietPhong.aspx?maphong={maPhong}");
        }
    }
}