using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class Theart_RoomDAO
    {
        public static List<Theart_Room> getAllRapPhong()
        {
            List<Theart_Room> list = new List<Theart_Room>();
            string sql = "SELECT rp.idRap,rp.idPhong,rp.numberMaxGhe,rp.note FROM dbo.Rap_Phong";
            DataTable dt = DataAccess.ReadDataBySQL(sql);
            foreach(DataRow dr in dt.Rows)
            {
                Theart_Room tr = new Theart_Room();
                
            }
            return list;
        }

    }
}