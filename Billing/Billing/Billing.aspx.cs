using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Billing
{
    public partial class Billing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            Table1.Visible = true;

            int qtyTvSold = Convert.ToInt32(tvSoldTxtB.Text);
            int qtyWPSold = Convert.ToInt32(waterPurSoldTxtB.Text);
            int qtyDVDSold = Convert.ToInt32(dvdSoldTxtB.Text);
            int qtyACSold = Convert.ToInt32(airconSoldTxtB.Text);

            tvQty.Text = qtyTvSold.ToString();
            watPurQty.Text = qtyWPSold.ToString();
            dvdQty.Text = qtyDVDSold.ToString();
            airConQty.Text = qtyACSold.ToString();
        }
    }
}