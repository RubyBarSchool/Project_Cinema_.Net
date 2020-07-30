using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.Model
{
    public class Account
    {
        public string UserName { get; set; }
        public string PassWord { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }

        public Area Areax { get; set; }
        public string Place { get; set; }
        public bool Gender { get; set; }
        public DateTime DOB { get; set; }
        public string Gmail { get; set; }

        public Theart Thearts { get; set; }
        public float MoneyBuy { get; set; }
        public GroupMemBer GroupMemBerx { get; set; }

        public List<Cards> Cardsx { get; set; }
    }
}