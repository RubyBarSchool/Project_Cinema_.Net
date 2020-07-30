using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;

namespace ProjectCSharpCGV.App_Code
{
    public class DataAccess
    {
        public static SqlConnection getConnection()
        {
            string stringConnection = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
            return new SqlConnection(stringConnection);
        }

        public static DataTable ReadDataBySQL(string sql)
        {
            SqlCommand cmd = new SqlCommand(sql, getConnection());
            cmd.Connection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            cmd.Connection.Close();
            return dt;
        }
        public static DataTable ReadDataBySQLWithParameter(string sql, params SqlParameter[] parameters)
        {
            SqlCommand cmd = new SqlCommand(sql, getConnection());
            cmd.Parameters.AddRange(parameters);
            cmd.Connection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            cmd.Connection.Close();
            return dt;
        }

        public static bool CUDDataBySQL(string sql, params SqlParameter[] parameters)
        {
            SqlCommand cmd = new SqlCommand(sql, getConnection());
            cmd.Parameters.AddRange(parameters);
            cmd.Connection.Open();
            int numberAccess = cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            return numberAccess != 0;
        }

        public static DataTable getAllRap()
        {
            string sql = "SELECT * FROM dbo.Rap";
            return ReadDataBySQL(sql);
        }
        public static DataTable getgheDaChon()
        {
            string sql = "SELECT * FROM dbo.LoaiGhe WHERE id = 2";
            return ReadDataBySQL(sql);
        }

        public static DataTable getAllGhe(int idrap,int idphong,int idFilm,int idSlots)
        {
            string sql = " SELECT rp.numberMaxGhe,rp.note,ss.booked,rplg.number,name,lg.price,lg.muaVien,lg.mauBackGround FROM dbo.SlotShow AS ss " +
                " INNER JOIN dbo.Rap_Phong AS rp ON rp.idRap = ss.idRap AND rp.idPhong = ss.idPhong  " +
                " INNER JOIN dbo.Rap_Phong_LoaiGhe AS rplg ON rplg.idRap = rp.idRap AND rplg.idPhong = rp.idPhong " +
                " INNER JOIN dbo.LoaiGhe AS lg ON lg.id = rplg.idLoaiGhe " +
                " WHERE rp.idRap = @rap AND rp.idPhong = @phong AND ss.idFilms = @film AND ss.idSlots=@slot " +
                " ORDER BY rplg.idLoaiGhe ASC";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@rap",SqlDbType.Int),
                new SqlParameter("@phong",SqlDbType.Int),
                new SqlParameter("@film",SqlDbType.Int),
                new SqlParameter("@slot",SqlDbType.Int)
            };
            param[0].Value = idrap;
            param[1].Value = idphong;
            param[2].Value = idFilm;
            param[3].Value = idSlots;
            return ReadDataBySQLWithParameter(sql,param);
        }

    }
}