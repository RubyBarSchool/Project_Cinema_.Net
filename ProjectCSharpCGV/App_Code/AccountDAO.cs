using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace ProjectCSharpCGV.App_Code
{
    public class AccountDAO
    {
        public static bool checkLogin(string username, string password)
        {

            string sql = " SELECT * FROM dbo.Account WHERE userName = @username AND passWord =  @pass ";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@username",SqlDbType.NVarChar),
                 new SqlParameter("@pass",SqlDbType.NVarChar)
            };
            param[0].Value = username;
            param[1].Value = password;
            DataTable a = DataAccess.ReadDataBySQLWithParameter(sql, param);
            int count = 0;
            foreach(DataRow dr  in a.Rows)
            {
                count++;
            }
            return count!=0;
        }
        public static bool insertAccount(string name, string phone, string email, string username, string password, DateTime dob, bool gender, int idRegion, int idSite)
        {
            string sql = "INSERT INTO dbo.Account(    userName,    passWord,    name,    phone,    idKhuVuc,      gender,    DOB,    gmail,    idRap   )VALUES( @username , @pass , @name , @phone , @idKhuVuc , @gender , @dob , @gmail , @idRap      )";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@username",SqlDbType.NVarChar),
                 new SqlParameter("@pass",SqlDbType.NVarChar),
                 new SqlParameter("@name",SqlDbType.NVarChar),
                 new SqlParameter("@phone",SqlDbType.NVarChar),
                 new SqlParameter("@idKhuVuc",SqlDbType.Int),
                 new SqlParameter("@gender",SqlDbType.Bit),
                 new SqlParameter("@dob",SqlDbType.DateTime),
                 new SqlParameter("@gmail",SqlDbType.NVarChar),
                 new SqlParameter("@idRap",SqlDbType.Int)
            };
            param[0].Value = username;
            param[1].Value = password;
            param[2].Value = name;
            param[3].Value = phone;
            param[4].Value = idRegion;
            param[5].Value = gender;
            param[6].Value = dob;
            param[7].Value = email;
            param[8].Value = idSite;
            return DataAccess.CUDDataBySQL(sql, param);
        }
        public static bool getAccountByUsername(string username)
        {
            string sql = "SELECT * FROM dbo.Account WHERE userName = @username ";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@username",SqlDbType.NVarChar)
                 
            };
            param[0].Value = username;
           
            DataTable a = DataAccess.ReadDataBySQLWithParameter(sql, param);
            int count = 0;
            foreach (DataRow dr in a.Rows)
            {
                count++;
            }
            return count != 0;
        }
    }
}