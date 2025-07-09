using System;
using System.Data;
using System.Web.UI.WebControls;

namespace hotelmanagement
{
    public partial class Phong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }

        private void LoadData()
        {
            // TODO: Kết nối database và load dữ liệu phòng vào DataTable
            DataTable dt = new DataTable();
            // Ví dụ giả lập dữ liệu:
            dt.Columns.Add("MAPHONG");
            dt.Columns.Add("TENPHONG");
            dt.Columns.Add("LOAIPHONG");
            dt.Columns.Add("GIAPHONG");
            dt.Columns.Add("TRANGTHAI");

            dt.Rows.Add("P101", "Phòng VIP 1", "VIP", "1500000", "Trống");
            dt.Rows.Add("P102", "Phòng Đơn 1", "Đơn", "500000", "Đang ở");

            gvPhong.DataSource = dt;
            gvPhong.DataBind();
        }

        protected void btnAddPhong_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThemPhong.aspx");
        }
    }
}
