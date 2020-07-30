using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class SeatTypeDAO
    {
        public static List<SeatType> getAllSeatTypeByIdRapIdPhong(int idRap,int idPhong)
        {
            List<SeatType> seatTypes = new List<SeatType>();
            string sql = "SELECT id,lg.name,lg.price,lg.muaVien,lg.mauBackGround,rplg.number FROM dbo.Rap_Phong_LoaiGhe AS rplg " +
                "INNER JOIN dbo.LoaiGhe AS lg ON lg.id = rplg.idLoaiGhe WHERE rplg.idRap = @idRap AND rplg.idPhong = @idPhong ORDER BY lg.id ASC";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@idRap",SqlDbType.Int),
                new SqlParameter("@idPhong",SqlDbType.Int)
            };
            param[0].Value = idRap;
            param[1].Value = idPhong;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            foreach(DataRow dr in dt.Rows)
            {
                SeatType st = new SeatType();
                st.ID = Convert.ToInt32(dr["id"].ToString());
                st.Name = dr["name"].ToString();
                st.BorderColor = dr["muaVien"].ToString();
                st.BackGroundColor = dr["mauBackGround"].ToString();
                st.NumberSeat = Convert.ToInt32(dr["number"].ToString());
                seatTypes.Add(st);
            }
            return seatTypes;
        }
    }
}