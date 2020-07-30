using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
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
    }
}