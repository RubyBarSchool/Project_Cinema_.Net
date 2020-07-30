using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.Model
{
    public class Items
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public DateTime StartDate { get; set; }
        public string Image { get; set; }
        public DateTime EndDate { get; set; }
        public float Money { get; set; }
        public string Producer { get; set; }
        public Combo Combox { get; set; }

    }
}