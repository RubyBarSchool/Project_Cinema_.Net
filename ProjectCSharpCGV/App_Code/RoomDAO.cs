using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class RoomDAO
    {
        public static Room getRoomByID(int a)
        {
            Room r = new Room();
            string sql = "SELECT id,name FROM dbo.Phong WHERE id = @id";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int)
            };
            param[0].Value = a;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            foreach(DataRow dr in dt.Rows)
            {
                r.ID = Convert.ToInt32(dr["id"].ToString());
                r.Name = dr["name"].ToString();
            }
            return r;
        }
    }
}