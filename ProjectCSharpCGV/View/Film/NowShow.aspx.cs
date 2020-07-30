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
    public partial class NowShow : System.Web.UI.Page
    {
        public List<Films> listFilm1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listFilm1 = FilmsDAO.getAllFilmsNowShowing(false, DateTime.Now);
            }
        }
    }
}