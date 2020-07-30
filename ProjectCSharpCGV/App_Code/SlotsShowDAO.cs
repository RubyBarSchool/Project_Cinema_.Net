using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class SlotsShowDAO
    {
        public static List<SlotShow> getAllSlotShow()
        {
            string sql = "SELECT idRap,idPhong,idFilms,showDate,booked,statusClose,idSlots FROM dbo.SlotShow";
            List<SlotShow> list = new List<SlotShow>();
            DataTable dt = DataAccess.ReadDataBySQL(sql);
            foreach(DataRow dr in dt.Rows)
            {
                SlotShow ss = new SlotShow();
                int idRap = Convert.ToInt32(dr["idRap"].ToString());
                int idPhong = Convert.ToInt32(dr["idPhong"].ToString());
                ss.Theart_Roomx = Theart_RoomDAO.getAllRapPhongByID(idRap, idPhong);
                ss.Filmsx = FilmsDAO.getDetailFilm(Convert.ToInt32(dr["idFilms"].ToString()));
                ss.ShowDate = Convert.ToDateTime(dr["showDate"].ToString());
                ss.Booked = dr["booked"].ToString();
                ss.StatusClose = Convert.ToBoolean(dr["statusClose"].ToString());
                int idSlots = Convert.ToInt32(dr["idSlots"].ToString());
                ss.Slotsx = SlotsDAO.getSlotsByID(idSlots);
                list.Add(ss);
            }
            return list;
        }
        public static List<SlotShow> getAllSlotShowByIdFilms(int idFilm)
        {
            string sql = "SELECT idRap,idPhong,idFilms,showDate,booked,statusClose,idSlots FROM dbo.SlotShow WHERE idFilms = @id";
            List<SlotShow> list = new List<SlotShow>();
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int)
            };
            param[0].Value = idFilm;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql,param);
            foreach (DataRow dr in dt.Rows)
            {
                SlotShow ss = new SlotShow();
                int idRap = Convert.ToInt32(dr["idRap"].ToString());
                int idPhong = Convert.ToInt32(dr["idPhong"].ToString());
                ss.Theart_Roomx = Theart_RoomDAO.getAllRapPhongByID(idRap, idPhong);
                ss.Filmsx = FilmsDAO.getDetailFilm(Convert.ToInt32(dr["idFilms"].ToString()));
                ss.ShowDate = Convert.ToDateTime(dr["showDate"].ToString());
                ss.Booked = dr["booked"].ToString();
                ss.StatusClose = Convert.ToBoolean(dr["statusClose"].ToString());
                int idSlots = Convert.ToInt32(dr["idSlots"].ToString());
                ss.Slotsx = SlotsDAO.getSlotsByID(idSlots);
                list.Add(ss);
            }
            return list;
        }
    }
}