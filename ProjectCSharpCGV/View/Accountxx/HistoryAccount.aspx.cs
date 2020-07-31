using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectCSharpCGV.App_Code;
using ProjectCSharpCGV.Model;
namespace ProjectCSharpCGV.View.Accountxx
{
    public partial class HistoryAccount : System.Web.UI.Page
    {
        public List<Films> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Account re = (Account)Session["account"];
              //  this.gvViewHistory.DataSource = BookingDAO.getAllBookingFilmByUsername(re.UserName);
               // this.gvViewHistory.DataBind();
               list = BookingDAO.getAllBookingFilmByUsername(re.UserName);
            }
        }
    }
}