using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class CountryADO
    {
        public static Country getCountrydByID(int id)
        {
            string sql = "SELECT * FROM dbo.Country WHERE id = @id";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int),
            };
            param[0].Value = id;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            Country r = new Country();
            foreach (DataRow dr in dt.Rows)
            {
                r.ID = Convert.ToInt32(dr["id"].ToString());
                r.Name = dr["name"].ToString();
            }
            return r;
        }
    }
}