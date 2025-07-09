using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace hotelmanagement
{
    public partial class ThemPhong : Page
    {
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string maPhong = txtMaPhong.Text.Trim();
            string tenPhong = txtTenPhong.Text.Trim();
            string loaiPhong = ddlLoaiPhong.SelectedValue;
            string giaPhong = txtGiaPhong.Text.Trim();
            string trangThai = ddlTrangThai.SelectedValue;

            // Kiểm tra dữ liệu nhập
            if (maPhong == "" || tenPhong == "" || loaiPhong == "" || giaPhong == "" || trangThai == "")
            {
                Response.Write("<script>alert('Vui lòng nhập đầy đủ thông tin!');</script>");
                return;
            }

            // TODO: Lưu dữ liệu vào database ở đây
            // Ví dụ: INSERT INTO PHONG ...

            Response.Write("<script>alert('Thêm phòng thành công!'); window.location='Phong.aspx';</script>");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Phong.aspx");
        }
    }
}
