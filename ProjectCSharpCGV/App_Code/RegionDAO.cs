using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using ProjectCSharpCGV.Model;

namespace ProjectCSharpCGV.App_Code
{
    public class RegionDAO
    {       
        public static DataTable getAllRegion()
        {
            string sql = "SELECT * FROM dbo.KhuVuc";
            return DataAccess.ReadDataBySQL(sql);
        }
        public static Area getAreaById(int id)
        {
            string sql = "SELECT * FROM dbo.KhuVuc WHERE id = @id ";
            SqlParameter[] para = new SqlParameter[]
            {
                new SqlParameter("@id",SqlDbType.Int)
            };
            para[0].Value = id;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, para);
            Area a = new Area();
            foreach(DataRow dr in dt.Rows)
            {
                a.ID = Convert.ToInt32(dr["id"].ToString());
                a.Name = dr["name"].ToString();
            }
            return a;
        }
    }
}