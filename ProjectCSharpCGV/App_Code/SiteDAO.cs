using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace ProjectCSharpCGV.App_Code
{
    public class SiteDAO
    {      
        public static DataTable getAllSite()
        {
            string sql = "SELECT id,name FROM dbo.Rap";
            return DataAccess.ReadDataBySQL(sql);
        }
    }
}