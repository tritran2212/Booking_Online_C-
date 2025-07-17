using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelmanagement
{
    public partial class TrangChuUser : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLienHe_Click(object sender, EventArgs e)
        {
            Server.Transfer("TrangLienHe.aspx");
        }

        protected void btnTrangChu_Click(object sender, EventArgs e)
        {
            Server.Transfer("TrangChuUser.aspx");
        }
    }
}