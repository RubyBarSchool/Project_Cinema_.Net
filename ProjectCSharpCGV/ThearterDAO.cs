using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProjectCSharpCGV.Model;
using ProjectCSharpCGV.App_Code;

namespace ProjectCSharpCGV
{
    public class ThearterDAO
    {
        public static Theart getThearterById(int id)
        {
            Theart t = new Theart();
            string sql = "SELECT * FROM dbo.Rap WHERE id = @id ";
            SqlParameter[] para = new SqlParameter[]
            {
                new SqlParameter("@id",SqlDbType.Int)
            };
            para[0].Value = id;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, para);
            foreach (DataRow dr in dt.Rows)
            {
                t.ID = Convert.ToInt32(dr["id"].ToString());
                t.Name = dr["name"].ToString();
                t.Image = dr["image"].ToString();
                t.Place = dr["diaDiem"].ToString();
                t.Fax = dr["fax"].ToString();
            }
            return t;

        }
    }
}