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
        public static List<SlotShow> getAllSlotShowByIdFilms(int idFilm)
        {
            string sql = "SELECT idRap,idPhong,idFilms,showDate,booked,statusClose,idSlots FROM dbo.SlotShow WHERE idFilms = @id";
            List<SlotShow> list = new List<SlotShow>();
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int)
            };
            param[0].Value = idFilm;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
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
        public static SlotShow getAllSlotShowById(int idRapx, int idRoomx, int idFilmx, int idSlotx)
        {
            string sql = "SELECT idRap,idPhong,idFilms,showDate,booked,statusClose,idSlots FROM dbo.SlotShow " +
                "WHERE idFilms = @idFilm AND idRap = @idRap AND idPhong = @idRoom AND idSlots = @idSlots";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@idFilm",SqlDbType.Int),
                new SqlParameter("@idRap",SqlDbType.Int),
                new SqlParameter("@idRoom",SqlDbType.Int),
                new SqlParameter("@idSlots",SqlDbType.Int)
            };
            param[0].Value = idFilmx;
            param[1].Value = idRapx;
            param[2].Value = idRoomx;
            param[3].Value = idSlotx;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            SlotShow ss = new SlotShow();
            foreach (DataRow dr in dt.Rows)
            {
                int idRap = Convert.ToInt32(dr["idRap"].ToString());
                int idPhong = Convert.ToInt32(dr["idPhong"].ToString());
                ss.Theart_Roomx = Theart_RoomDAO.getAllRapPhongByID(idRap, idPhong);
                ss.Filmsx = FilmsDAO.getDetailFilm(Convert.ToInt32(dr["idFilms"].ToString()));
                ss.ShowDate = Convert.ToDateTime(dr["showDate"].ToString());
                ss.Booked = dr["booked"].ToString();
                ss.StatusClose = Convert.ToBoolean(dr["statusClose"].ToString());
                int idSlots = Convert.ToInt32(dr["idSlots"].ToString());
                ss.Slotsx = SlotsDAO.getSlotsByID(idSlots);
            }
            return ss;
        }
        public static bool updateSlotsShow(SlotShow ssshow)
        {
            string sql = "UPDATE [dbo].[SlotShow]   SET      [booked] = @book  " +
                "WHERE idRap = @idRap AND idPhong = @idRoom AND idFilms = @idFilm AND idSlots = @slot AND showDate = @showDate ";

            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@book",SqlDbType.NVarChar),
                new SqlParameter("@idRap",SqlDbType.Int),
                new SqlParameter("@idRoom",SqlDbType.Int),
                new SqlParameter("@idFilm",SqlDbType.Int),
                new SqlParameter("@slot",SqlDbType.Int),
                new SqlParameter("@showDate",SqlDbType.DateTime)
            };
            param[0].Value = ssshow.Booked;
            param[1].Value = ssshow.Theart_Roomx.Theartx.ID;
            param[2].Value = ssshow.Theart_Roomx.Roomx.ID;
            param[3].Value = ssshow.Filmsx.ID;
            param[4].Value = ssshow.Slotsx.ID;
            param[5].Value = ssshow.ShowDate;
            return DataAccess.CUDDataBySQL(sql, param);
        }
    }
}