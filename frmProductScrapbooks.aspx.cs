using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_frmProductScrapbooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.pnlScrapDisplay.BorderStyle = BorderStyle.Double;
        this.pnlScrapDisplay.BorderWidth = 9;
        this.pnlScrapDisplay.BackColor = System.Drawing.Color.White;
        this.pnlScrapDisplay.Attributes.CssStyle.Add("opacity", "0.88");

        this.pnlScrapVids1.BorderStyle = BorderStyle.Double;
        this.pnlScrapVids1.BorderWidth = 9;
        this.pnlScrapVids1.BackColor = System.Drawing.Color.White;
        this.pnlScrapVids1.Attributes.CssStyle.Add("opacity", "0.88");

        this.Title = "Scrapbook Selections";
    }
}