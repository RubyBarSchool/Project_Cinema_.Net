using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class RatedDAO
    {
        public static Rated getRatedByID(int id)
        {
            string sql = "SELECT * FROM dbo.Rated WHERE id = @id";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int),
            };
            param[0].Value = id;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            Rated r = new Rated();
            foreach(DataRow dr in dt.Rows)
            {
                r.ID = Convert.ToInt32(dr["id"].ToString());
                r.Title = dr["title"].ToString();
                r.Image = dr["image"].ToString();
            }
            return r;
        }
    }
}