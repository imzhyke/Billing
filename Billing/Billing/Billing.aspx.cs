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
            dateTxtB.Text = DateTime.Now.ToString("MM/dd/yyyy");

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            Table1.Visible = true;
            cancelBtn.Enabled = true;

            double TAX = 0.0895;
            int qtyTvSold = Convert.ToInt32(tvSoldTxtB.Text);
            int qtyWPSold = Convert.ToInt32(waterPurSoldTxtB.Text);
            int qtyDVDSold = Convert.ToInt32(dvdSoldTxtB.Text);
            int qtyACSold = Convert.ToInt32(airconSoldTxtB.Text);

            double tvAmountSold, watPurAmountSold, dvdAmountSold, airConAmountSold;
            double subTotal, taxAmount, totalP;

            tvAmountSold = qtyTvSold * 12000.25;
            watPurAmountSold = qtyWPSold * 2550.90;
            dvdAmountSold = qtyDVDSold * 3520.50;
            airConAmountSold = qtyACSold * 16420.75;

            subTotal = tvAmountSold + watPurAmountSold + dvdAmountSold + airConAmountSold;
            taxAmount = subTotal * TAX;
            totalP = subTotal + taxAmount;

            tvQty.Text = qtyTvSold.ToString("#,#.#");
            watPurQty.Text = qtyWPSold.ToString("#,#.#");
            dvdQty.Text = qtyDVDSold.ToString("#,#.#");
            airConQty.Text = qtyACSold.ToString("#,#.#");

            tvTotalPrice.Text = tvAmountSold.ToString("#,#.#");
            warPurTotalPrice.Text = watPurAmountSold.ToString("#,#.#");
            dvdTotalPrice.Text = dvdAmountSold.ToString("#,#.#");
            airConTotalPrice.Text = airConAmountSold.ToString("#,#.#");

            subPrice.Text = subTotal.ToString("#,#.#");
            TaxPrice.Text = taxAmount.ToString("#,#.#");
            totalPrice.Text = totalP.ToString("#,#.#");
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            Table1.Visible = false;
            cancelBtn.Enabled = false;

            tvSoldTxtB.Text = "";
            waterPurSoldTxtB.Text = "";
            dvdSoldTxtB.Text = "";
            airconSoldTxtB.Text = "";
            nameTxtB.Text = "";
            addTxtB.Text = "";
            contactNumTxtB.Text = "";
        }
    }
}