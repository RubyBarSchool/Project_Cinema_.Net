using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.Model
{
    public class Theart
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Image { get; set; }
        public string Place { get; set; }
        public Area Areax { get; set; }
        public string Fax { get; set; }
        public string Hottline { get; set; }
        public TheaterType TheaterTypex { get; set; }
    }
}