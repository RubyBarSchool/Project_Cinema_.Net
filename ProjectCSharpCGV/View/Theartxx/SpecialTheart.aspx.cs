using ProjectCSharpCGV.App_Code;
using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ProjectCSharpCGV.View.Theartxx
{
    public partial class SpecialTheart : System.Web.UI.Page
    {
        public List<TheaterType> listTheater;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listTheater = TheartTypeDAO.getAlltTheater();
            }
        }

        
    }
}