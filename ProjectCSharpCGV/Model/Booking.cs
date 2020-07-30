using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.Model
{
    public class Booking
    {
        public SlotShow SlotShowx { get; set; }
        public Account Accountx { get; set; }
        public string Book { get; set; }
        public List<Combo> Combox { get; set; }
    }
}