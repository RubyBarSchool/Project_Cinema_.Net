using ProjectCSharpCGV.App_Code;
using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectCSharpCGV.View.Movies
{
    public partial class FutureShowing : System.Web.UI.Page
    {
        public List<Films> listFilm;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listFilm = FilmsDAO.getAllFilmsFutureShowing(true, DateTime.Now);
            }
        }
    }
}