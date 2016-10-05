using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_frmShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        checkoutLabel.Attributes.CssStyle.Add("font-family", "Lucida Calligraphy");
        checkoutLabel.Attributes.CssStyle.Add("text-align", "center");
        checkoutLabel.Attributes.CssStyle.Add("font-size", "large");
        checkoutLabel.Attributes.CssStyle.Add("margin-left", "180px");
        //checkoutLabel.Attributes.CssStyle.Add("", "");
        //checkoutLabel.Attributes.CssStyle.Add("", "");
        //checkoutLabel.Attributes.CssStyle.Add("", "");
        //checkoutLabel.Attributes.CssStyle.Add("", "");
        //checkoutLabel.Attributes.CssStyle.Add("", "");
        //checkoutLabel.Attributes.CssStyle.Add("", "");

        
        this.pnlShopCart.BorderStyle = BorderStyle.Double;
        this.pnlShopCart.BorderWidth = 9;
        this.pnlShopCart.BackColor = System.Drawing.Color.White;
        this.pnlShopCart.Attributes.CssStyle.Add("opacity", "0.88");
    }
}