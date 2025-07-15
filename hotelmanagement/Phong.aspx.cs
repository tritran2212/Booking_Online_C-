using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace hotelmanagement
{
    public partial class Phong : System.Web.UI.Page
    {
        // Chuỗi kết nối: Dùng 1 biến cố định, đúng đường dẫn của bạn.
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ADMIN\Downloads\Hotel\hotelmanagement\hotelmanagement\App_Data\DBBooking.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }

        private void LoadData()
        {
            string query = "SELECT MaPhong, TenPhong, LoaiPhong, GiaPhong, TrangThai,HinhAnh FROM PHONG";

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        gvPhong.DataSource = dt;
                        gvPhong.DataBind();
                    }
                }
            }
        }

        protected void btnAddPhong_Click(object sender, EventArgs e)
        {
            // Điều hướng sang trang thêm mới
            Response.Redirect("ThemPhong.aspx");
        }

        protected void gvPhong_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvPhong.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void gvPhong_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvPhong.EditIndex = -1;
            LoadData();
        }

        protected void gvPhong_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string maPhong = gvPhong.DataKeys[e.RowIndex].Value.ToString();
            string tenPhong = ((TextBox)gvPhong.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string loaiPhong = ((TextBox)gvPhong.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string giaPhong = ((TextBox)gvPhong.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string trangThai = ((TextBox)gvPhong.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "UPDATE PHONG SET TenPhong=@TenPhong, LoaiPhong=@LoaiPhong, GiaPhong=@GiaPhong, TrangThai=@TrangThai WHERE MaPhong=@MaPhong";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@TenPhong", tenPhong);
                    cmd.Parameters.AddWithValue("@LoaiPhong", loaiPhong);
                    cmd.Parameters.AddWithValue("@GiaPhong", giaPhong);
                    cmd.Parameters.AddWithValue("@TrangThai", trangThai);
                    cmd.Parameters.AddWithValue("@MaPhong", maPhong);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            gvPhong.EditIndex = -1;
            LoadData();
        }

        protected void gvPhong_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string maPhong = gvPhong.DataKeys[e.RowIndex].Value.ToString();

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "DELETE FROM PHONG WHERE MaPhong=@MaPhong";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@MaPhong", maPhong);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            LoadData();
        }

        protected void gvPhong_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Không cần xử lý gì nếu không dùng chức năng chọn dòng
        }
    }
}
