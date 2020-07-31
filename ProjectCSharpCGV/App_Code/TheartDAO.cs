using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class TheartDAO
    {
        public static Theart getTheartByID(int a)
        {
            Theart r = new Theart();
            string sql = "SELECT id,name,image,diaDiem,idKhuVuc,fax,hotline,idLoaiRap FROM dbo.Rap WHERE id = @id";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int)
            };
            param[0].Value = a;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            foreach (DataRow dr in dt.Rows)
            {
                r.ID = Convert.ToInt32(dr["id"].ToString());
                r.Name = dr["name"].ToString();
                r.Image = dr["image"].ToString();
                r.Areax = AreaDAO.getAreaByID(Convert.ToInt32(dr["idKhuVuc"].ToString()));
                r.TheaterTypex = TheartTypeDAO.getTheaterTypeByID(Convert.ToInt32(dr["idLoaiRap"].ToString()));
                r.Fax = dr["fax"].ToString();
                r.Hottline = dr["hotline"].ToString();
            }
            return r;
        }

        public static List<Theart> getAlltTheart()
        {
            List<Theart> list = new List<Theart>();
            string sql = "SELECT * FROM dbo.Rap";
            DataTable a = DataAccess.ReadDataBySQL(sql);
            foreach (DataRow dr in a.Rows)
            {
                Theart r = new Theart();
                r.ID = Convert.ToInt32(dr["id"].ToString());
                r.Name = dr["name"].ToString();
                r.Image = dr["image"].ToString();
                r.Place = dr["diaDiem"].ToString();
                
                //r.Areax = Convert.ToInt32(dr["idKhuVuc"].ToString());
                
                r.Fax = dr["fax"].ToString();
                r.Hottline = dr["hotline"].ToString();

                //r.TheaterTypex
                list.Add(r);
            }
            return list;
        }

        public Area getOneArea(int id)
        {
            Area area = new Area();
            string sql = "select id,name from KhuVuc where id = @id";
            SqlCommand sqlCommand = new SqlCommand(sql, DataAccess.getConnection());
            sqlCommand.Parameters.Add(new SqlParameter("@id",id));
            sqlCommand.Connection.Open();
            SqlDataReader data = sqlCommand.ExecuteReader();
            if (data.HasRows)
            {
                while (data.Read())
                {
                    area.ID = Convert.ToInt32(data["id"].ToString());
                    area.Name = data["name"].ToString();
                }
            }
            sqlCommand.Connection.Close();
            return area;

        }
        public static List<Theart> getALlArea(int id)
        {
            List<Theart> list = new List<Theart>();
            string sql = "select a.name,a.image,a.diaDiem,a.fax,a.hotline from Rap as a inner join KhuVuc as b on a.idLoaiRap = b.id where b.id = @id";
            SqlCommand sqlCommand = new SqlCommand(sql, DataAccess.getConnection());
            sqlCommand.Parameters.Add(new SqlParameter("@id", id));
            sqlCommand.Connection.Open();
            SqlDataReader data = sqlCommand.ExecuteReader();
            if (data.HasRows)
            {
                while (data.Read())
                {
                    Theart th = new Theart();
                    th.Name = data["name"].ToString();
                    th.Image = data["image"].ToString();
                    th.Place = data["diaDiem"].ToString();
                    th.Fax = data["fax"].ToString();
                    th.Hottline = data["hotline"].ToString();
                    list.Add(th);

                }
            }
            sqlCommand.Connection.Close();
            return list;

        }
    }
}