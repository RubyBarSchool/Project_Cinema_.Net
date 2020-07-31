using ProjectCSharpCGV.App_Code;
using ProjectCSharpCGV.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectCSharpCGV.View.Booking
{
    public partial class ChooseItemOrCombo : System.Web.UI.Page
    {
        public List<Combo> listCombo;
        public List<Items> listItems;
        public Items items;
        public float discount;
        public float total;
        ItemDAO dAO = new ItemDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listCombo = ItemDAO.getAllCombo();

                listItems = ItemDAO.getListItems();

                //foreach (Items it in listItems)
                //{
                //    discount = ((it.Money * 10) / 100) + it.Money;
                //}
                //int num = Convert.ToInt32(txtNumber.Value);

                foreach (Combo it in listCombo)
                {
                    foreach (Items di in listItems)
                    {
                        if (it.ID == di.Combox.ID)
                        {
                            discount = ItemDAO.getPriceByID(it.ID);
                        }
                    }
                }
                foreach (Combo combo in listCombo)
                {
                    if (Convert.ToInt32(num.Value) > 0)
                    {
                        total += discount * Convert.ToInt32(num.Value);
                    }
                }
            }
        }
    }
}