using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.Model
{
    public class SlotShow
    {
        public Theart_Room Theart_Roomx { get; set; }
        public Films Filmsx { get; set; }
        public Slots Slotsx { get; set; }
        public DateTime ShowDate { get; set; }
        public string Booked { get; set; }
        public bool StatusClose { get; set; }
    }
}