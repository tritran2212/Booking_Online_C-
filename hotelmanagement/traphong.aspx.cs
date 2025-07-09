using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace hotelmanagement
{
	public partial class traphong : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                // GIẢ LẬP: Danh sách phòng đang có khách
                ddlPhongDangO.Items.Add("Chọn phòng");
                ddlPhongDangO.Items.Add("P201 - Nguyễn Văn A");
                ddlPhongDangO.Items.Add("P301 - Trần Thị B");
            }
        }

        protected void ddlPhongDangO_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlPhongDangO.SelectedIndex <= 0)
            {
                pnlThongTin.Visible = false;
                return;
            }

            // GIẢ LẬP: Lấy thông tin từ DB
            string maPhong = ddlPhongDangO.SelectedValue.Split('-')[0].Trim();
            lblHoTen.Text = ddlPhongDangO.SelectedValue.Split('-')[1].Trim();

            DateTime ngayNhan = new DateTime(2025, 7, 5);
            DateTime ngayTra = DateTime.Now;

            lblNgayNhan.Text = ngayNhan.ToShortDateString();
            lblNgayTra.Text = ngayTra.ToShortDateString();

            decimal giaPhong = 800000;
            int soNgay = (ngayTra - ngayNhan).Days;
            if (soNgay == 0) soNgay = 1;

            lblGiaPhong.Text = giaPhong.ToString("N0") + " đ";
            lblSoNgay.Text = soNgay.ToString();
            lblTongTien.Text = (giaPhong * soNgay).ToString("N0") + " đ";

            pnlThongTin.Visible = true;
        }

        protected void btnXacNhanTra_Click(object sender, EventArgs e)
        {
            // TODO: Update trạng thái phòng, thêm hóa đơn vào DB
            Response.Write("<script>alert('Trả phòng thành công!'); window.location='TrangChu.aspx';</script>");
        }
    }
}
	
