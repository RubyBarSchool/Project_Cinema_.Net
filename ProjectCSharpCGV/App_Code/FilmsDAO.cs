using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
namespace ProjectCSharpCGV.App_Code
{
    public class FilmsDAO
    {
        public static List<Films> getAllFilmsNowShowing(bool isclose, DateTime dateStart)
        {
            string sql = "SELECT id,name,image,daoDien,dienVien,ngayKhoiChieu,thoiGian,ngonNgu,idRated,idGenres,idCountry,numberXem FROM dbo.Films" +
                " WHERE isClose = @close AND ngayKhoiChieu < @date ORDER BY numberXem ASC";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@close",SqlDbType.Bit),
                new SqlParameter("@date",SqlDbType.DateTime)

            };
            param[0].Value = isclose;
            param[1].Value = dateStart;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            List<Films> listFilm = new List<Films>();
            foreach (DataRow dr in dt.Rows)
            {
                Films fl = new Films();
                fl.ID = Convert.ToInt32(dr["id"].ToString());
                fl.Name = dr["name"].ToString();
                fl.Image = dr["image"].ToString();
                fl.Directors = dr["daoDien"].ToString();
                fl.Actor = dr["dienVien"].ToString();
                fl.ReleaseTime = Convert.ToDateTime(dr["ngayKhoiChieu"].ToString());
                fl.Time = Convert.ToInt32(dr["thoiGian"].ToString());
                fl.Language = dr["ngonNgu"].ToString();
                fl.CountRate = Convert.ToInt32(dr["numberXem"].ToString());
                fl.Ratedx = RatedDAO.getRatedByID(Convert.ToInt32(dr["idRated"].ToString()));
                fl.Genresx = GenresDAO.getGenresdByID(Convert.ToInt32(dr["idGenres"].ToString()));
                fl.Countryx = CountryADO.getCountrydByID(Convert.ToInt32(dr["idCountry"].ToString()));
                listFilm.Add(fl);
            }
            return listFilm;
        }
        public static List<Films> getAllFilmsFutureShowing(bool isclose, DateTime dateStart)
        {
            string sql = "SELECT id,name,image,daoDien,dienVien,ngayKhoiChieu,thoiGian,ngonNgu,idRated,idGenres,idCountry,numberXem FROM dbo.Films" +
                " WHERE isClose = @close AND ngayKhoiChieu < @date ORDER BY numberXem ASC";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@close",SqlDbType.Bit),
                new SqlParameter("@date",SqlDbType.DateTime)

            };
            param[0].Value = isclose;
            param[1].Value = dateStart;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            List<Films> listFilm = new List<Films>();
            foreach (DataRow dr in dt.Rows)
            {
                Films fl = new Films();
                fl.ID = Convert.ToInt32(dr["id"].ToString());
                fl.Name = dr["name"].ToString();
                fl.Image = dr["image"].ToString();
                fl.Directors = dr["daoDien"].ToString();
                fl.Actor = dr["dienVien"].ToString();
                fl.ReleaseTime = Convert.ToDateTime(dr["ngayKhoiChieu"].ToString());
                fl.Time = Convert.ToInt32(dr["thoiGian"].ToString());
                fl.Language = dr["ngonNgu"].ToString();
                fl.CountRate = Convert.ToInt32(dr["numberXem"].ToString());
                fl.Ratedx = RatedDAO.getRatedByID(Convert.ToInt32(dr["idRated"].ToString()));
                fl.Genresx = GenresDAO.getGenresdByID(Convert.ToInt32(dr["idGenres"].ToString()));
                fl.Countryx = CountryADO.getCountrydByID(Convert.ToInt32(dr["idCountry"].ToString()));
                listFilm.Add(fl);
            }
            return listFilm;
        }

        public static Films getDetailFilm(int id)
        {
            string sql = "SELECT id,name,image,daoDien,dienVien,ngayKhoiChieu,thoiGian,ngonNgu,idRated,idGenres,idCountry,numberXem FROM dbo.Films where id  = @id ";

            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int)

            };
            param[0].Value = id;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql,param);
            Films fl = new Films();
            foreach (DataRow dr in dt.Rows)
            {
                fl.ID = Convert.ToInt32(dr["id"].ToString());
                fl.Name = dr["name"].ToString();
                fl.Image = dr["image"].ToString();
                fl.Directors = dr["daoDien"].ToString();
                fl.Actor = dr["dienVien"].ToString();
                fl.ReleaseTime = Convert.ToDateTime(dr["ngayKhoiChieu"].ToString());
                fl.Time = Convert.ToInt32(dr["thoiGian"].ToString());
                fl.Language = dr["ngonNgu"].ToString();
                fl.CountRate = Convert.ToInt32(dr["numberXem"].ToString());
                fl.Ratedx = RatedDAO.getRatedByID(Convert.ToInt32(dr["idRated"].ToString()));
                fl.Genresx = GenresDAO.getGenresdByID(Convert.ToInt32(dr["idGenres"].ToString()));
                fl.Countryx = CountryADO.getCountrydByID(Convert.ToInt32(dr["idCountry"].ToString()));
            }
            return fl;
        }
    }
}