using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.Model
{
    public class SeatType
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public float Price { get; set; }
        public string BorderColor { get; set; }
        public string BackGroundColor { get; set; }
        public int NumberSeat { get; set; }
    }
}