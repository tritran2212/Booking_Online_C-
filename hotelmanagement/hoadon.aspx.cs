using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelmanagement
{
	public partial class hoadon : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            
                if (!IsPostBack)
                    LoadData();
            }

        private void LoadData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("MAHD");
            dt.Columns.Add("HOTEN");
            dt.Columns.Add("TENPHONG");
            dt.Columns.Add("NGAYLAP");
            dt.Columns.Add("TONGTIEN");

            dt.Rows.Add("HD001", "Nguyễn Văn A", "P101", "09/07/2025", 1000000);
            dt.Rows.Add("HD002", "Trần Thị B", "P202", "09/07/2025", 1600000);

            gvHoaDon.DataSource = dt;
            gvHoaDon.DataBind();
        }
    }
}
	