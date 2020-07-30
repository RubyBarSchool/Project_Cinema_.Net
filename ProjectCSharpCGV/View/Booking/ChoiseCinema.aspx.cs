using ProjectCSharpCGV.App_Code;
using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectCSharpCGV.View.Booking
{
    public partial class ChoiseCinema : System.Web.UI.Page
    {
        public List<SlotShow> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 list = SlotsShowDAO.getAllSlotShow();
            }
        }
    }
}