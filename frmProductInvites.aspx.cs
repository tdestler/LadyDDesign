using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_frmProductInvites : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.pnlProductType.BorderStyle = BorderStyle.Double;
        this.pnlProductType.BorderWidth = 9;
        this.pnlProductType.BackColor = System.Drawing.Color.White;
        this.pnlProductType.Attributes.CssStyle.Add("opacity", "0.88");

        this.Title = "Invitation Selections";
    }
}