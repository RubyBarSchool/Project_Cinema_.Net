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
    public partial class DetailMovie : System.Web.UI.Page
    {
        public Films Film;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32( Request.Params["id"]);
                Film = FilmsDAO.getDetailFilm(id);
            }
        }
    }
}