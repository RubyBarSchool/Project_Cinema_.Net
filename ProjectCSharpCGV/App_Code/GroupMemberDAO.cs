using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using ProjectCSharpCGV.Model;
namespace ProjectCSharpCGV.App_Code
{
    public class GroupMemberDAO
    {
        public static GroupMemBer getGroupMemberById(int id)
        {
            GroupMemBer m = new GroupMemBer();
            string sql = " SELECT * FROM dbo.NhomThanhVien WHERE id = @id ";
            SqlParameter[] para = new SqlParameter[]
            {
                new SqlParameter("@id",SqlDbType.Int)
            };
            para[0].Value = id;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, para);
            foreach(DataRow dr in dt.Rows)
            {
                m.ID = Convert.ToInt32(dr["id"].ToString());
                m.Name = dr["name"].ToString();
                m.PointCGV = Convert.ToInt32(dr["diemCGV"].ToString());
                m.ValueMember = dr["quyenloi"].ToString();
            }
            return m;
        }
    }
}