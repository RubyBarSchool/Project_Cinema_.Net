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
    public partial class NowShowing : System.Web.UI.Page
    {
        public List<Films> listFilm = new List<Films>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listFilm = FilmsDAO.getAllFilmsNowShowing(false, DateTime.Now);
            }
        }
    }
}