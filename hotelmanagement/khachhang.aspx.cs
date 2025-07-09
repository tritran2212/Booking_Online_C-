using System;
using System.Data;
using System.Web.UI.WebControls;

namespace hotelmanagement
{
    public partial class KhachHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }

        private void LoadData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("MAKH");
            dt.Columns.Add("HOTEN");
            dt.Columns.Add("CMND");
            dt.Columns.Add("SDT");
            dt.Columns.Add("EMAIL");

            dt.Rows.Add("KH001", "Nguyễn Văn A", "123456789", "0909123456", "a@gmail.com");
            dt.Rows.Add("KH002", "Trần Thị B", "987654321", "0909988776", "b@gmail.com");

            gvKhachHang.DataSource = dt;
            gvKhachHang.DataBind();
        }

        protected void btnAddKhach_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThemKhachHang.aspx");
        }
    }
}
