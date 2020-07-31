using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
namespace ProjectCSharpCGV.App_Code
{
    public class BookingDAO
    {
        public static List<Films> getAllBookingFilmByUsername(string username)
        {
            List<Films> list = new List<Films>();
            string sql = "SELECT dbo.Films.id,dbo.Films.name,moneyBuy FROM dbo.Account INNER JOIN dbo.Booking ON Booking.userName = Account.userName INNER JOIN dbo.Films ON Films.name = Account.name WHERE dbo.Account.userName = @username ";
            SqlParameter[] para = new SqlParameter[]
            {
                new SqlParameter("@username",SqlDbType.NVarChar)
            };
            para[0].Value = username;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, para);
           foreach(DataRow dr in dt.Rows)
            {
                Films f = new Films();
                f.ID = Convert.ToInt32(dr["id"].ToString());
                f.Name = dr["name"].ToString();
                f.Image = dr["image"].ToString();
                list.Add(f);
            }
            return list;
        }
    }
}