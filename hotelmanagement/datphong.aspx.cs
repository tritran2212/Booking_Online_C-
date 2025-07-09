using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace hotelmanagement
{
	public partial class datphong : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
        protected void btnTimPhong_Click(object sender, EventArgs e)
        {
            string loaiPhong = ddlLoaiPhong.SelectedValue;
            string ngayNhan = txtNgayNhan.Text;
            string ngayTra = txtNgayTra.Text;

            if (loaiPhong == "" || ngayNhan == "" || ngayTra == "")
            {
                Response.Write("<script>alert('Vui lòng nhập đầy đủ thông tin!');</script>");
                return;
            }

            // GIẢ LẬP phòng trống
            DataTable dt = new DataTable();
            dt.Columns.Add("MAPHONG");
            dt.Columns.Add("TENPHONG");
            dt.Columns.Add("LOAIPHONG");
            dt.Columns.Add("GIAPHONG");

            if (loaiPhong == "Đơn")
            {
                dt.Rows.Add("P101", "Phòng Đơn 1", "Đơn", "500000");
                dt.Rows.Add("P102", "Phòng Đơn 2", "Đơn", "500000");
            }
            else if (loaiPhong == "Đôi")
            {
                dt.Rows.Add("P201", "Phòng Đôi 1", "Đôi", "800000");
            }
            else if (loaiPhong == "VIP")
            {
                dt.Rows.Add("P301", "VIP View Biển", "VIP", "1500000");
            }

            gvPhongTrong.DataSource = dt;
            gvPhongTrong.DataBind();
        }

        protected void gvPhongTrong_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Dat")
            {
                string maPhong = e.CommandArgument.ToString();
                // TODO: lưu thông tin đặt phòng vào DB
                Response.Write($"<script>alert('Đã đặt phòng {maPhong} thành công!');</script>");
            }
        }
    }
}
	