using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class TheartTypeDAO
    {
        public static TheaterType getTheaterTypeByID(int a)
        {
            TheaterType r = new TheaterType();
            string sql = "SELECT id,name,Description,imageTitle,imageView FROM dbo.LoaiRap WHERE id = @id";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int)
            };
            param[0].Value = a;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            foreach (DataRow dr in dt.Rows)
            {
                r.ID = Convert.ToInt32(dr["id"].ToString());
                r.Name = dr["name"].ToString();
                r.Description = dr["Description"].ToString();
                r.ImageTitle = dr["imageTitle"].ToString();
                r.ImageView = dr["imageView"].ToString();

            }
            return r;
        }      

        public static List<TheaterType> getAlltTheater()
        {
            List<TheaterType> list = new List<TheaterType>();
            string sql = "SELECT * FROM dbo.LoaiRap";
            DataTable a = DataAccess.ReadDataBySQL(sql);
            foreach (DataRow dr in a.Rows)
            {
                TheaterType r = new TheaterType();
                r.ID = Convert.ToInt32(dr["id"].ToString());
                r.Name = dr["name"].ToString();
                r.Description = dr["Description"].ToString();
                r.ImageTitle = dr["imageTitle"].ToString();
                r.ImageView = dr["imageView"].ToString();
                list.Add(r);
            }
            return list;          
        }
    }


}