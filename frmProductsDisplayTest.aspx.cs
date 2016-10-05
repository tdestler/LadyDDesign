using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_frmProductsDisplayTest : System.Web.UI.Page
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

        Session["Seasonal"] = clsDataLayer.GetConfig();

        String season = Session["Seasonal"].ToString();

        if (season == "Winter")
        {


            selectCSS.Href = "../CSS/WinterForm.css";
            selectCSS.Attributes["rel"] = "stylesheet";
            selectCSS.Attributes["type"] = "text/css";
            selectCSS.Attributes["media"] = "all";
            Page.Header.Controls.Add(selectCSS);
        }

        else if (season == "Spring")
        {


            selectCSS.Href = "../CSS/SpringForm.css";
            selectCSS.Attributes["rel"] = "stylesheet";
            selectCSS.Attributes["type"] = "text/css";
            selectCSS.Attributes["media"] = "all";
            Page.Header.Controls.Add(selectCSS);
        }

        else if (season == "Summer")
        {


            selectCSS.Href = "../CSS/SummerForm.css";
            selectCSS.Attributes["rel"] = "stylesheet";
            selectCSS.Attributes["type"] = "text/css";
            selectCSS.Attributes["media"] = "all";
            Page.Header.Controls.Add(selectCSS);
        }

        else
        {


            selectCSS.Href = "../CSS/AutumnForm.css";
            selectCSS.Attributes["rel"] = "stylesheet";
            selectCSS.Attributes["type"] = "text/css";
            selectCSS.Attributes["media"] = "all";
            Page.Header.Controls.Add(selectCSS);
        }
    }
}