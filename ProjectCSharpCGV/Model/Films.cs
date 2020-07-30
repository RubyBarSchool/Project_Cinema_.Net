using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCSharpCGV.Model
{
    public class Films
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Image { get; set; }
        public string Directors { get; set; }
        public string Actor { get; set; }
        public DateTime ReleaseTime { get; set; }
        public int Time { get; set; }
        public string Language { get; set; }
        public int CountRate { get; set; }
        public Genres Genresx { get; set; }
        public Rated Ratedx { get; set; }
        public Country Countryx { get; set; }
    }
}