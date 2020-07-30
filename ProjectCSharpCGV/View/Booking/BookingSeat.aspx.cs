using ProjectCSharpCGV.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectCSharpCGV.View.Booking
{
    public partial class BookingSeat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadData();
        }
        public void loadData()
        {
            string[] nameRow = new string[] {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "M", "N",
            "O","P","Q","R","S","T","U","V","W","X","Y","Z"};
            DataTable dataGhe = DataAccess.getAllGhe(1, 1, 1, 1);
            DataTable gheDaChon = DataAccess.getgheDaChon();
            int numbermaxCol = Convert.ToInt32(dataGhe.Rows[0]["numberMaxGhe"].ToString());
            int numberghe = dataGhe.Rows.Count;
            string[] note = dataGhe.Rows[0]["note"].ToString().Split('|');
            //this.Label1.Text = note[1];
            string booked = dataGhe.Rows[0]["booked"].ToString().Trim();
            //this.Label1.Text = booked.Substring(0, 2);
            int numbermaxRow = booked.Length / numbermaxCol;
            DataTable viewGhe = new DataTable();
            DataColumn col0 = new DataColumn("Book");
            viewGhe.Columns.Add(col0);

            for (int col = 1; col <= numbermaxCol; col++)
            {
                DataColumn colx = new DataColumn(col + "");
                viewGhe.Columns.Add(colx);
            }
            int count = 0;
            int nextrow = 0;
            if (note.Length != 0)
            {
                nextrow = 1;
            }
            for (int row = 0; row < numbermaxRow; row++)
            {
                DataRow dtRow = viewGhe.NewRow();
                viewGhe.Rows.Add(dtRow);
                for (int col = 0; col < viewGhe.Columns.Count; col++)
                {
                    if (col == 0)
                    {
                        viewGhe.Rows[row][col] = nameRow[row] + (row + 1);
                    }
                    else
                    {
                        bool check = true;
                        for (int i = 1; i < note.Length - 1; i++)
                        {
                            int rowXXX = Convert.ToInt32(note[i].Split('-')[0]);
                            int colXXX = Convert.ToInt32(note[i].Split('-')[1]);
                            if (rowXXX == row + 1 && colXXX == col)
                            {
                                viewGhe.Rows[row][col] = "X";
                                check = false;
                            }
                        }
                        if (check)
                        {
                            if (count < Convert.ToInt32(dataGhe.Rows[nextrow]["number"].ToString()))
                            {
                                if (booked.Substring(row * 14 + col - 1, 1).Equals("1"))
                                {
                                    viewGhe.Rows[row][col] = "Da Chon";
                                }
                                else
                                {
                                    viewGhe.Rows[row][col] = dataGhe.Rows[nextrow]["name"].ToString();
                                }
                                count++;
                            }
                            else
                            {
                                nextrow++;
                                count = 0;
                                col -= 1;
                            }


                        }
                    }
                }
            }
            this.rptView.DataSource = viewGhe;
            this.rptView.DataBind();
        }

        protected void rptView_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}