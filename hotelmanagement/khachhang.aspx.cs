using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace hotelmanagement
{
    public partial class KhachHang : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ADMIN\Downloads\Hotel\hotelmanagement\hotelmanagement\App_Data\DBBooking.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }

        private void LoadData()
        {
            string query = "SELECT MaKH, HoTen, CMND, SDT, Email FROM KHACHHANG";

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        gvKhachHang.DataSource = dt;
                        gvKhachHang.DataBind();
                    }
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "INSERT INTO KHACHHANG (MaKH, HoTen, CMND, SDT, Email) VALUES (@MaKH, @HoTen, @CMND, @SDT, @Email)";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@MaKH", txtMaKH.Text.Trim());
                    cmd.Parameters.AddWithValue("@HoTen", txtHoTen.Text.Trim());
                    cmd.Parameters.AddWithValue("@CMND", txtCMND.Text.Trim());
                    cmd.Parameters.AddWithValue("@SDT", txtSDT.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            // Sau khi thêm thì clear form và load lại lưới
            txtMaKH.Text = "";
            txtHoTen.Text = "";
            txtCMND.Text = "";
            txtSDT.Text = "";
            txtEmail.Text = "";
            LoadData();
        }

        protected void gvKhachHang_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvKhachHang.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void gvKhachHang_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvKhachHang.EditIndex = -1;
            LoadData();
        }

        protected void gvKhachHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string maKH = gvKhachHang.DataKeys[e.RowIndex].Value.ToString();
            string hoTen = ((TextBox)gvKhachHang.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string cmnd = ((TextBox)gvKhachHang.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string sdt = ((TextBox)gvKhachHang.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string email = ((TextBox)gvKhachHang.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "UPDATE KHACHHANG SET HoTen=@HoTen, CMND=@CMND, SDT=@SDT, Email=@Email WHERE MaKH=@MaKH";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@HoTen", hoTen);
                    cmd.Parameters.AddWithValue("@CMND", cmnd);
                    cmd.Parameters.AddWithValue("@SDT", sdt);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@MaKH", maKH);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            gvKhachHang.EditIndex = -1;
            LoadData();
        }

        protected void gvKhachHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string maKH = gvKhachHang.DataKeys[e.RowIndex].Value.ToString();

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "DELETE FROM KHACHHANG WHERE MaKH=@MaKH";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@MaKH", maKH);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            LoadData();
        }
    }
}