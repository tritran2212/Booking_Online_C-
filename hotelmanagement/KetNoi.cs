using System.Data.SqlClient;
using System.Configuration;

namespace hotelmanagement
{
    public class KetNoi
    {
        public static SqlConnection TaoKetNoi()
        {
            string connStr = ConfigurationManager.ConnectionStrings["BookingDB"].ConnectionString;
            return new SqlConnection(connStr);
        }
    }
}