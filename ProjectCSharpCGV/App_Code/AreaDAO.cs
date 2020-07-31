using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class AreaDAO
    {
        public static Area getAreaByID(int a)
        {
            Area r = new Area();
            string sql = "SELECT id,name FROM dbo.KhuVuc WHERE id = @id";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int)
            };
            param[0].Value = a;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            foreach (DataRow dr in dt.Rows)
            {
                r.ID = Convert.ToInt32(dr["id"].ToString());
                r.Name = dr["name"].ToString();
            }
            return r;
        }

        public static List<Area> getAllArea()
        {
            List<Area> list = new List<Area>();
            string sql = "SELECT * FROM dbo.KhuVuc";
            DataTable a = DataAccess.ReadDataBySQL(sql);
            foreach (DataRow dr in a.Rows)
            {
                Area ar = new Area();
                ar.ID = Convert.ToInt32(dr["id"].ToString());
                ar.Name = dr["name"].ToString();
                list.Add(ar);
            }
            return list;

        }
    }
}