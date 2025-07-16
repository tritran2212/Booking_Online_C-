using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace hotelmanagement
{
    public partial class Hoadon : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ADMIN\Downloads\Hotel\hotelmanagement\hotelmanagement\App_Data\DBBooking.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }

        private void LoadData()
        {
            string query = "SELECT MaHD, MaDatPhong, NgayLap, TongTien FROM HOADON";

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        gvHoaDon.DataSource = dt;
                        gvHoaDon.DataBind();
                    }
                }
            }
        }

        protected void btnAddHoaDon_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThemHoadon.aspx");
        }

        protected void gvHoaDon_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvHoaDon.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void gvHoaDon_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvHoaDon.EditIndex = -1;
            LoadData();
        }

        protected void gvHoaDon_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string maHD = gvHoaDon.DataKeys[e.RowIndex].Value.ToString();
            string maDatPhong = ((TextBox)gvHoaDon.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string ngayLap = ((TextBox)gvHoaDon.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string tongTien = ((TextBox)gvHoaDon.Rows[e.RowIndex].Cells[3].Controls[0]).Text;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "UPDATE HOADON SET MaDatPhong=@MaDatPhong, NgayLap=@NgayLap, TongTien=@TongTien WHERE MaHD=@MaHD";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@MaDatPhong", maDatPhong);
                    cmd.Parameters.AddWithValue("@NgayLap", ngayLap);
                    cmd.Parameters.AddWithValue("@TongTien", tongTien);
                    cmd.Parameters.AddWithValue("@MaHD", maHD);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            gvHoaDon.EditIndex = -1;
            LoadData();
        }

        protected void gvHoaDon_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string maHD = gvHoaDon.DataKeys[e.RowIndex].Value.ToString();

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "DELETE FROM HOADON WHERE MaHD=@MaHD";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@MaHD", maHD);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            LoadData();
        }
    }
}
