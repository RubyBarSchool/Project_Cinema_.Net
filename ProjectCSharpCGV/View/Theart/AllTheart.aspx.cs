using ProjectCSharpCGV.App_Code;
using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectCSharpCGV.View.Theart
{
    public partial class AllTheart : System.Web.UI.Page
    {
        public List<Area> listA;
        public List<Model.Theart> listthread;
        TheartDAO th = new TheartDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listA = AreaDAO.getAllArea();
                if (!string.IsNullOrEmpty(Request.Params["ID"]))
                {
                    
                }

                int id = Convert.ToInt32( Request.QueryString["ID"]);
                listthread = TheartDAO.getALlArea(id);

            }
        }
    }
}