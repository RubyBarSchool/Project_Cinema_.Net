using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.Model
{
    public class Theart_Room
    {
        public Theart Theartx { get; set; }
        public Room Roomx { get; set; }
        public int NumberMaxSeat { get; set; }
        public string Note { get; set; }
        public List<SeatType> SeatTypes { get; set; }
    }
}