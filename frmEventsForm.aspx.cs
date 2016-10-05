using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_frmEventsForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Page Title
        this.Title = "Events";


        //Panel Design (Content Page becuase CSS not wirking with master page
        this.pnlFormBody.BorderStyle = BorderStyle.Double;
        this.pnlFormBody.BorderWidth = 9;
        this.pnlFormBody.BackColor = System.Drawing.Color.White;
        this.pnlFormBody.Attributes.CssStyle.Add("opacity", "0.88");
        this.pnlFormBody.Attributes.CssStyle.Add("padding", "14");

        
        if (!IsPostBack)
        {
            this.chlistEventServices.Items.Add("Setup");
            this.chlistEventServices.Items.Add("Clean up");
            this.chlistEventServices.Items.Add("Drop Off");

            this.ddlEventState.Items.Add("Select Your State");
            this.ddlEventState.Items.Add("Alabama");
            this.ddlEventState.Items.Add("Alaska");
            this.ddlEventState.Items.Add("Arizona");
            this.ddlEventState.Items.Add("Arkansas");
            ddlEventState.Items.Add("California");
            ddlEventState.Items.Add("Colorado");
            ddlEventState.Items.Add("Connecticut");
            ddlEventState.Items.Add("Delaware");
            ddlEventState.Items.Add("Florida");
            ddlEventState.Items.Add("Georgia");
            ddlEventState.Items.Add("Hawaii");
            ddlEventState.Items.Add("Idaho");
            ddlEventState.Items.Add("Illinois");
            ddlEventState.Items.Add("Indiana");
            ddlEventState.Items.Add("Iowa");
            ddlEventState.Items.Add("Kansas");
            ddlEventState.Items.Add("Kentucky");
            ddlEventState.Items.Add("Louisiana");
            ddlEventState.Items.Add("Maine");
            ddlEventState.Items.Add("Maryland");
            ddlEventState.Items.Add("Massachusetts");
            ddlEventState.Items.Add("Michigan");
            ddlEventState.Items.Add("Minnesota");
            ddlEventState.Items.Add("Mississippi");
            ddlEventState.Items.Add("Missouri");
            ddlEventState.Items.Add("Montana");
            ddlEventState.Items.Add("Nebraska");
            ddlEventState.Items.Add("Nevada");
            ddlEventState.Items.Add("New Hampshire");
            ddlEventState.Items.Add("New Jersey");
            ddlEventState.Items.Add("New Mexico");
            ddlEventState.Items.Add("New York");
            ddlEventState.Items.Add("North Carolina");
            ddlEventState.Items.Add("North Dakota");
            ddlEventState.Items.Add("Ohio");
            ddlEventState.Items.Add("Oklahoma");
            ddlEventState.Items.Add("Oregon");
            ddlEventState.Items.Add("Pennsylvania");
            ddlEventState.Items.Add("Rhode Island");
            ddlEventState.Items.Add("South Carolina");
            ddlEventState.Items.Add("South Dakota");
            ddlEventState.Items.Add("Tennessee");
            ddlEventState.Items.Add("Texas");
            ddlEventState.Items.Add("Utah");
            ddlEventState.Items.Add("Vermont");
            ddlEventState.Items.Add("Virginia");
            ddlEventState.Items.Add("Washington");
            ddlEventState.Items.Add("West Virginia");
            ddlEventState.Items.Add("Wisconsin");
            ddlEventState.Items.Add("Wyoming");


        }
    }
}