using ProjectCSharpCGV.App_Code;
using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectCSharpCGV.View.Film
{
    public partial class DetailFilm : System.Web.UI.Page
    {
        public Films Films;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.Params["id"]);
                Films = FilmsDAO.getDetailFilm(id);
            }
        }
    }
}