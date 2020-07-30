using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.Model
{
    public class Cards
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int Discount { get; set; }
        public string NumberCard { get; set; }
        public DateTime DateStart { get; set; }
    }
}