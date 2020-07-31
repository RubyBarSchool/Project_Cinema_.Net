using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.App_Code
{
    public class ItemDAO
    {
        public static List<Items> getAllItems(DateTime dateEnd)
        {
            string sql = "SELECT * FROM dbo.VatPham WHERE hanSuDung<@date";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@date",SqlDbType.DateTime)

            };
            param[0].Value = dateEnd;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            List<Items> listItems = new List<Items>();
            foreach (DataRow dr in dt.Rows)
            {
                Items il = new Items();
                il.ID = Convert.ToInt32(dr["id"].ToString());
                il.Name = dr["name"].ToString();
                il.Image = dr["image"].ToString();
                il.StartDate = Convert.ToDateTime(dr["ngayNhap"].ToString());
                il.Image = dr["image"].ToString();
                il.EndDate = Convert.ToDateTime(dr["hanSuDung"].ToString());
                il.Money = Convert.ToInt64(dr["giaTien"].ToString());
                il.Producer = dr["nhaSanXuat"].ToString();
                il.Combox = getItemByID(Convert.ToInt32(dr["idComBo"].ToString()));
                listItems.Add(il);
            }
            return listItems;
        }
        public static Combo getItemByID(int id)
        {
            string sql = "SELECT*FROM dbo.VatPham WHERE idComBo =@id";
            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int),
            };
            param[0].Value = id;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            Combo r = new Combo();
            foreach (DataRow dr in dt.Rows)
            {
                r.ID = Convert.ToInt32(dr["id"].ToString());
                r.Name = dr["name"].ToString();
                r.Note = dr["note"].ToString();
            }
            return r;
        }
        public static List<Combo> getAllCombo()
        {
            string sql = "SELECT* FROM dbo.ComBo";

            DataTable dt = DataAccess.ReadDataBySQL(sql);
            List<Combo> listCombo = new List<Combo>();
            foreach (DataRow dr in dt.Rows)
            {
                Combo cb = new Combo();
                cb.ID = Convert.ToInt32(dr["id"].ToString());
                cb.Name = dr["name"].ToString();
                cb.Note = dr["note"].ToString();
                listCombo.Add(cb);
            }
            return listCombo;
        }
        public static List<Combo> getAllCombobyID(int id)
        {
            string sql = "SELECT* FROM dbo.ComBo WHERE id = @id";

            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int),
            };
            param[0].Value = id;
            DataTable dt = DataAccess.ReadDataBySQL(sql);
            List<Combo> listCombo = new List<Combo>();
            foreach (DataRow dr in dt.Rows)
            {
                Combo cb = new Combo();
                cb.ID = Convert.ToInt32(dr["id"].ToString());
                cb.Name = dr["name"].ToString();
                cb.Note = dr["note"].ToString();
                listCombo.Add(cb);
            }
            return listCombo;
        }
        public static Items getImageTop1Item()
        {
            string sql = "SELECT TOP 1 * FROM dbo.VatPham";

            DataTable dt = DataAccess.ReadDataBySQL(sql);
            Items r = new Items();
            foreach (DataRow dr in dt.Rows)
            {
                r.ID = Convert.ToInt32(dr["id"].ToString());
                r.Name = dr["name"].ToString();
                r.Image = dr["image"].ToString();
                r.Money = float.Parse(dr["giaTien"].ToString());
                r.Producer = dr["nhaSanXuat"].ToString();
                r.StartDate = Convert.ToDateTime(dr["ngayNhap"].ToString());
                r.EndDate = Convert.ToDateTime(dr["hanSuDung"].ToString());
            }
            return r;
        }
        public static float getPriceByID(int id)
        {
            string sql = "SELECT (SUM(giaTien)*10/100 + SUM(giaTien)) AS a FROM dbo.VatPham WHERE idComBo= @id";

            SqlParameter[] param = new SqlParameter[]{
                new SqlParameter("@id",SqlDbType.Int),
            };
            param[0].Value = id;
            DataTable dt = DataAccess.ReadDataBySQLWithParameter(sql, param);
            float fl = 0;
            foreach (DataRow dr in dt.Rows)
            {
                fl = float.Parse(dr["a"].ToString());
            }

            return fl;
        }

        public static List<Items> getListItems()
        {
            List<Items> list = new List<Items>();
            string sql = "SELECT DISTINCT a.idComBo, b.name,b.note,a.image,a.giaTien FROM dbo.VatPham AS a INNER JOIN dbo.ComBo AS b ON a.idComBo = b.id";
            SqlCommand command = new SqlCommand(sql, DataAccess.getConnection());
            command.Connection.Open();
            SqlDataReader data = command.ExecuteReader();
            if (data.HasRows)
            {
                while(data.Read())
                {
                    Items it = new Items();
                    it.Combox = getCombobyID(Convert.ToInt32(data["idComBo"].ToString()));
                    it.Image = data["image"].ToString();
                    it.Money = float.Parse(data["giaTien"].ToString());
                    
                    list.Add(it);
                }
            }
            command.Connection.Close();
            return list;
        }

        public static Combo getCombobyID(int id)
        {
           // List<Combo> list = new List<Combo>();
            Combo it = new Combo();
            string sql = "SELECT id,name,note FROM dbo.ComBo WHERE id = @id";
            SqlCommand command = new SqlCommand(sql, DataAccess.getConnection());
            command.Parameters.Add(new SqlParameter("@id", id));
            command.Connection.Open();
            SqlDataReader data = command.ExecuteReader();
            if (data.HasRows)
            {
                if(data.Read())
                {
                   
                    it.ID = Convert.ToInt32(data["id"].ToString());
                    it.Name = data["name"].ToString();
                    it.Note = data["note"].ToString();
                }
            }
            command.Connection.Close();
            return it;
        }
    }

    

        //public static List<Items> getImageTop1Item()
        //{
        //    List<Items> items = new List<Items>();
        //    string sql = "SELECT TOP 1 image FROM dbo.VatPham";
        //    SqlCommand cmd = new SqlCommand(sql, DataAccess.getConnection());
        //    cmd.Connection.Open();
        //    SqlDataReader data = cmd.ExecuteReader();
        //    if (data.HasRows)
        //    {
        //        while (data.Read())
        //        {
        //            Items items1 = new Items();
        //            items1.Image = data["image"].ToString();
        //            items.Add(items1);
        //        }
        //    }
        //    cmd.Connection.Close();
        //    return items;
        //}

    

    
}