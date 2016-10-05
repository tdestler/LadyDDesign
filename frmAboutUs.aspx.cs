using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_frmAboutUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "About Us";

        //this.contactUsLeft.BorderStyle = BorderStyle.Double;
        //this.contactUsLeft.BorderWidth = 9;
        //this.contactUsLeft.BackColor = System.Drawing.Color.White;
        //this.contactUsLeft.Attributes.CssStyle.Add("opacity", "0.88");

        this.contactUsRight.BorderStyle = BorderStyle.Double;
        this.contactUsRight.BorderWidth = 9;
        this.contactUsRight.BackColor = System.Drawing.Color.White;
        this.contactUsRight.Attributes.CssStyle.Add("opacity", "0.88");
    }

   
}
