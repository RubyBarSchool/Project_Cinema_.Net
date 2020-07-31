using ProjectCSharpCGV.App_Code;
using ProjectCSharpCGV.Model;
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
        List<string> abc = new List<string>{"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R",
        "S","T","U","V","W","X","Y","Z"};
        static SlotShow ss;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int idRap = Convert.ToInt32(Request.Params["idrap"]);
                int idRoom = Convert.ToInt32(Request.Params["idPhong"]);
                int idFilms = Convert.ToInt32(Request.Params["idFilm"]);
                int idSlots = Convert.ToInt32(Request.Params["idSlot"]);
                //Session["Money"] = 0.0;
                //this.Label1.Text = "0";
                loadData(idRap, idRoom, idFilms, idSlots);
            }
        }
        public void loadData(int idRap, int idRoom, int idFilms, int idSlot)
        {
            ss = SlotsShowDAO.getAllSlotShowById(idRap, idRoom, idFilms, idSlot);
            string[] note = ss.Theart_Roomx.Note.Split('|');
            DataTable viewGhe = new DataTable();
            int numbermaxRow = 0;
            foreach (SeatType st in ss.Theart_Roomx.SeatTypes)
            {
                numbermaxRow += st.NumberSeat;
            }
            numbermaxRow = numbermaxRow / ss.Theart_Roomx.NumberMaxSeat;
            for (int col = 0; col <= ss.Theart_Roomx.NumberMaxSeat - 1; col++)
            {
                DataColumn colx = new DataColumn(col + "");
                viewGhe.Columns.Add(colx);
                DataColumn colCss = new DataColumn("css" + col);
                viewGhe.Columns.Add(colCss);
            }
            int count = 0;
            int nextSeatType = 0;
            if (note.Length != 0)
            {
                nextSeatType = 1;
            }
            for (int row = 0; row < numbermaxRow; row++)
            {
                DataRow dtRow = viewGhe.NewRow();
                viewGhe.Rows.Add(dtRow);
                for (int col = 0; col < viewGhe.Columns.Count - 1; col++)
                {
                    int colIndex = col / 2;
                    bool check = true;
                    for (int i = 1; i < note.Length - 1; i++)
                    {
                        int rowXXX = Convert.ToInt32(note[i].Split('-')[0]);
                        int colXXX = Convert.ToInt32(note[i].Split('-')[1]);
                        if (rowXXX == row + 1 && colXXX == colIndex + 1)
                        {
                            viewGhe.Rows[row][col] = "X";
                            viewGhe.Rows[row][col + 1] = ss.Theart_Roomx.SeatTypes[0].ID;
                            col += 1;
                            check = false;
                        }
                    }
                    if (check)
                    {
                        if (nextSeatType < ss.Theart_Roomx.SeatTypes.Count)
                        {
                            if (count < ss.Theart_Roomx.SeatTypes[nextSeatType].NumberSeat)
                            {
                                if (ss.Booked.Substring(row * 14 + colIndex, 1).Equals("1"))
                                {
                                    viewGhe.Rows[row][col] = abc[row] + (colIndex + 1);
                                    viewGhe.Rows[row][col + 1] = 2;
                                    col += 1;
                                }
                                else if (ss.Booked.Substring(row * 14 + colIndex, 1).Equals("2"))
                                {
                                    viewGhe.Rows[row][col] = abc[row] + (colIndex + 1);
                                    viewGhe.Rows[row][col + 1] = 12;
                                    col += 1;
                                }
                                else
                                {
                                    viewGhe.Rows[row][col] = abc[row] + (colIndex + 1);
                                    viewGhe.Rows[row][col + 1] = ss.Theart_Roomx.SeatTypes[nextSeatType].ID;
                                    col += 1;
                                }
                                count++;
                            }
                            else
                            {
                                nextSeatType++;
                                count = 0;
                                col -= 1;
                            }
                        }

                    }

                }
            }
            this.rptView.DataSource = viewGhe;
            this.rptView.DataBind();
            //this.Label1.Text = (float)Session["Money"] + "";
        }

        protected void rptView_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            
            bool check = false;
            string x = ((Button)e.CommandSource).Text;
            int indexRow = abc.IndexOf(x.Substring(0, 1)) + 1;
            int indexCol = Convert.ToInt32(x.Substring(1));
            int index = (indexRow - 1) * 14 + indexCol;
            string[] note = ss.Theart_Roomx.Note.Split('|');
            int count = 0;
            for (int i = 1; i < note.Length - 1; i++)
            {
                int rowXXX = Convert.ToInt32(note[i].Split('-')[0]);
                int colXXX = Convert.ToInt32(note[i].Split('-')[1]);
                int indexXXX = (rowXXX - 1) * 14 + colXXX;

                if (indexXXX < index)
                {
                    count++;
                }
            }
            int indexChoise = index - count;
            for (int i = 1; i < ss.Theart_Roomx.SeatTypes.Count; i++)
            {
                count = 0;
                for (int j = 1; j <= i; j++)
                {
                    count += ss.Theart_Roomx.SeatTypes[j].NumberSeat;
                }
                if (indexChoise <= count)
                {
                    //float money = (float)Session["Money"];
                    //money += ss.Theart_Roomx.SeatTypes[i].Price;
                    if (ss.Theart_Roomx.SeatTypes[i].ID == 6)
                    {
                        check = true;
                    }
                    break;
                }
            }
            string book = "";
            if (check)
            {
                if (indexCol % 2 == 0)
                {
                    if (indexCol != 14)
                    {
                        if (ss.Booked[index - 1].Equals('2'))
                        {
                            book = ss.Booked.Substring(0, index - 2) + "00" + ss.Booked.Substring(index);
                        }
                        else
                        {
                            book = ss.Booked.Substring(0, index - 2) + "22" + ss.Booked.Substring(index);
                        }
                    }
                    else
                    {
                        if (ss.Booked[index - 1].Equals('2'))
                        {
                            book = ss.Booked.Substring(0, index - 2) + "00";
                        }
                        else
                        {
                            book = ss.Booked.Substring(0, index - 2) + "22";
                        }
                    }

                }
                else
                {
                    if (ss.Booked[index - 1].Equals('2'))
                    {
                        book = ss.Booked.Substring(0, index - 1) + "00" + ss.Booked.Substring(index + 1);
                    }
                    else
                    {
                        book = ss.Booked.Substring(0, index - 1) + "22" + ss.Booked.Substring(index + 1);
                    }
                }
            }
            else
            {
                if (ss.Booked[index - 1].Equals('2'))
                {
                    book = ss.Booked.Substring(0, index - 1) + "0" + ss.Booked.Substring(index);
                }
                else
                {
                    book = ss.Booked.Substring(0, index - 1) + "2" + ss.Booked.Substring(index);
                }
            }
            ss.Booked = book;
            loadData2(ss);
        }
        public void loadData2(SlotShow ss1)
        {
            ss = ss1;
            string[] note = ss.Theart_Roomx.Note.Split('|');
            DataTable viewGhe = new DataTable();
            int numbermaxRow = 0;
            foreach (SeatType st in ss.Theart_Roomx.SeatTypes)
            {
                numbermaxRow += st.NumberSeat;
            }
            numbermaxRow = numbermaxRow / ss.Theart_Roomx.NumberMaxSeat;
            for (int col = 0; col <= ss.Theart_Roomx.NumberMaxSeat - 1; col++)
            {
                DataColumn colx = new DataColumn(col + "");
                viewGhe.Columns.Add(colx);
                DataColumn colCss = new DataColumn("css" + col);
                viewGhe.Columns.Add(colCss);
            }
            int count = 0;
            int nextSeatType = 0;
            if (note.Length != 0)
            {
                nextSeatType = 1;
            }
            for (int row = 0; row < numbermaxRow; row++)
            {
                DataRow dtRow = viewGhe.NewRow();
                viewGhe.Rows.Add(dtRow);
                for (int col = 0; col < viewGhe.Columns.Count - 1; col++)
                {
                    int colIndex = col / 2;
                    bool check = true;
                    for (int i = 1; i < note.Length - 1; i++)
                    {
                        int rowXXX = Convert.ToInt32(note[i].Split('-')[0]);
                        int colXXX = Convert.ToInt32(note[i].Split('-')[1]);
                        if (rowXXX == row + 1 && colXXX == colIndex + 1)
                        {
                            viewGhe.Rows[row][col] = "X";
                            viewGhe.Rows[row][col + 1] = ss.Theart_Roomx.SeatTypes[0].ID;
                            col += 1;
                            check = false;
                        }
                    }
                    if (check)
                    {
                        if (nextSeatType < ss.Theart_Roomx.SeatTypes.Count)
                        {
                            if (count < ss.Theart_Roomx.SeatTypes[nextSeatType].NumberSeat)
                            {
                                if (ss.Booked.Substring(row * 14 + colIndex, 1).Equals("1"))
                                {
                                    viewGhe.Rows[row][col] = abc[row] + (colIndex + 1);
                                    viewGhe.Rows[row][col + 1] = 2;
                                    col += 1;
                                }
                                else if (ss.Booked.Substring(row * 14 + colIndex, 1).Equals("2"))
                                {
                                    viewGhe.Rows[row][col] = abc[row] + (colIndex + 1);
                                    viewGhe.Rows[row][col + 1] = 12;
                                    col += 1;
                                }
                                else
                                {
                                    viewGhe.Rows[row][col] = abc[row] + (colIndex + 1);
                                    viewGhe.Rows[row][col + 1] = ss.Theart_Roomx.SeatTypes[nextSeatType].ID;
                                    col += 1;
                                }
                                count++;
                            }
                            else
                            {
                                nextSeatType++;
                                count = 0;
                                col -= 1;
                            }
                        }

                    }

                }
            }
            this.rptView.DataSource = viewGhe;
            this.rptView.DataBind();
            //this.Label1.Text = (float)Session["Money"]+"";
        }
    }
}