using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class GenresDAO
    {
        public static Genres getGenresdByID(int id)
        {
            string sql = "SELECT * FROM dbo.Genres WHERE id = @id";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int),
            };
            param[0].Value = id;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            Genres r = new Genres();
            foreach (DataRow dr in dt.Rows)
            {
                r.ID = Convert.ToInt32(dr["id"].ToString());
                r.Name = dr["name"].ToString();
            }
            return r;
        }
    }
}