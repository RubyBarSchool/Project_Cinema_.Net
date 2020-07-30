using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class Theart_RoomDAO
    {
        public static List<Theart_Room> getAllRapPhong()
        {
            List<Theart_Room> list = new List<Theart_Room>();
            string sql = "SELECT rp.idRap,rp.idPhong,rp.numberMaxGhe,rp.note FROM dbo.Rap_Phong ";
            DataTable dt = DataAccess.ReadDataBySQL(sql);
            foreach(DataRow dr in dt.Rows)
            {
                Theart_Room tr = new Theart_Room();
                tr.Theartx = TheartDAO.getTheartByID(Convert.ToInt32(dr["idRap"].ToString()));
                tr.Roomx = RoomDAO.getRoomByID(Convert.ToInt32(dr["idPhong"].ToString()));
                tr.NumberMaxSeat = Convert.ToInt32(dr["numberMaxGhe"].ToString());
                tr.Note = dr["note"].ToString();
                tr.SeatTypes = SeatTypeDAO.getAllSeatTypeByIdRapIdPhong(tr.Theartx.ID,tr.Roomx.ID);
                list.Add(tr);
            }
            return list;
        }
        public static Theart_Room getAllRapPhongByID(int idRap,int idPhong)
        {
            string sql = "SELECT rp.idRap,rp.idPhong,rp.numberMaxGhe,rp.note FROM dbo.Rap_Phong AS rp" +
                " WHERE rp.idRap = @idRap AND rp.idPhong = @idPhong";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@idRap",SqlDbType.Int),
                new SqlParameter("@idPhong",SqlDbType.Int)
            };
            param[0].Value = idRap;
            param[1].Value = idPhong;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql,param);
            Theart_Room tr = new Theart_Room();
            foreach (DataRow dr in dt.Rows)
            {
                tr.Theartx = TheartDAO.getTheartByID(Convert.ToInt32(dr["idRap"].ToString()));
                tr.Roomx = RoomDAO.getRoomByID(Convert.ToInt32(dr["idPhong"].ToString()));
                tr.NumberMaxSeat = Convert.ToInt32(dr["numberMaxGhe"].ToString());
                tr.Note = dr["note"].ToString();
                tr.SeatTypes = SeatTypeDAO.getAllSeatTypeByIdRapIdPhong(tr.Theartx.ID, tr.Roomx.ID);
            }
            return tr;
        }

    }
}