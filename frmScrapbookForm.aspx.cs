using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Forms_frmScrapbookForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Page Title
        this.Title = "Scrapbooks";


        //Panel Design (Content Page becuase CSS not wirking with master page
        this.pnlFormBody.BorderStyle = BorderStyle.Double;
        this.pnlFormBody.BorderWidth = 9;
        this.pnlFormBody.BackColor = System.Drawing.Color.White;
        this.pnlFormBody.Attributes.CssStyle.Add("opacity", "0.88");
        this.pnlFormBody.Attributes.CssStyle.Add("padding", "14px");


        if (!IsPostBack)
        {
            
            ddlScrapState.Items.Add("Select Your State");
            ddlScrapState.Items.Add("Alabama");
            ddlScrapState.Items.Add("Alaska");
            ddlScrapState.Items.Add("Arizona");
            ddlScrapState.Items.Add("Arkansas");
            ddlScrapState.Items.Add("California");
            ddlScrapState.Items.Add("Colorado");
            ddlScrapState.Items.Add("Connecticut");
            ddlScrapState.Items.Add("Delaware");
            ddlScrapState.Items.Add("Florida");
            ddlScrapState.Items.Add("Georgia");
            ddlScrapState.Items.Add("Hawaii");
            ddlScrapState.Items.Add("Idaho");
            ddlScrapState.Items.Add("Illinois");
            ddlScrapState.Items.Add("Indiana");
            ddlScrapState.Items.Add("Iowa");
            ddlScrapState.Items.Add("Kansas");
            ddlScrapState.Items.Add("Kentucky");
            ddlScrapState.Items.Add("Louisiana");
            ddlScrapState.Items.Add("Maine");
            ddlScrapState.Items.Add("Maryland");
            ddlScrapState.Items.Add("Massachusetts");
            ddlScrapState.Items.Add("Michigan");
            ddlScrapState.Items.Add("Minnesota");
            ddlScrapState.Items.Add("Mississippi");
            ddlScrapState.Items.Add("Missouri");
            ddlScrapState.Items.Add("Montana");
            ddlScrapState.Items.Add("Nebraska");
            ddlScrapState.Items.Add("Nevada");
            ddlScrapState.Items.Add("New Hampshire");
            ddlScrapState.Items.Add("New Jersey");
            ddlScrapState.Items.Add("New Mexico");
            ddlScrapState.Items.Add("New York");
            ddlScrapState.Items.Add("North Carolina");
            ddlScrapState.Items.Add("North Dakota");
            ddlScrapState.Items.Add("Ohio");
            ddlScrapState.Items.Add("Oklahoma");
            ddlScrapState.Items.Add("Oregon");
            ddlScrapState.Items.Add("Pennsylvania");
            ddlScrapState.Items.Add("Rhode Island");
            ddlScrapState.Items.Add("South Carolina");
            ddlScrapState.Items.Add("South Dakota");
            ddlScrapState.Items.Add("Tennessee");
            ddlScrapState.Items.Add("Texas");
            ddlScrapState.Items.Add("Utah");
            ddlScrapState.Items.Add("Vermont");
            ddlScrapState.Items.Add("Virginia");
            ddlScrapState.Items.Add("Washington");
            ddlScrapState.Items.Add("West Virginia");
            ddlScrapState.Items.Add("Wisconsin");
            ddlScrapState.Items.Add("Wyoming");


        }
    }
    protected void btnSubmitCard_Click(object sender, EventArgs e)
    {
        Session["FirstName"] = txtInviteFName.Text.Trim();
        Session["LastName"] = txtInviteLName.Text.Trim();

        try
        {
            if (txtInviteFName.Text == "" || txtInviteFName.Text == null)
            {
                txtInviteFName.BackColor = System.Drawing.Color.Yellow;
                txtInviteFName.Text = "Required";
                return;
            }

            if (txtInviteLName.Text == "")
            {
                txtInviteLName.BackColor = System.Drawing.Color.Yellow;
                txtInviteLName.Text = "Required";
                return;
            }

            if (txtInvitePhone1.Text == "")
            {
                txtInvitePhone1.BackColor = System.Drawing.Color.Yellow;
                txtInvitePhone1.Text = "Required";
                return;
            }

            if (txtInvitePhone2.Text == "")
            {
                txtInvitePhone2.BackColor = System.Drawing.Color.Yellow;
                txtInvitePhone2.Text = "Required";
                return;
            }

            if (txtInvitePhone3.Text == "")
            {
                txtInvitePhone3.BackColor = System.Drawing.Color.Yellow;
                txtInvitePhone3.Text = "Required";
                return;
            }

            if (txtInviteStreet1.Text == "")
            {
                txtInviteStreet1.BackColor = System.Drawing.Color.Yellow;
                txtInviteStreet1.Text = "Required";
                return;
            }
        }

        catch
        {
        }

        clsProduct product = new clsProduct();
        dsProductOrder DS = new dsProductOrder();
        clsCartItemList cart = clsCartItemList.GetCart();


        DS = clsDataLayer.GetOrderProduct(152);
        DataRow dr = DS.Tables[0].Rows[0];

        decimal myval = 0;

        if (!(Decimal.TryParse(dr["Price"].ToString(), out myval)))
        {
            dr["Price"] = 0;
        }
        if (!(Decimal.TryParse(dr["ShippingPrice"].ToString(), out myval)))
        {
            dr["ShippingPrice"] = 0;
        }

        product.ItemId = dr["ItemId"].ToString();
        product.ItemDesc = "Custom Invite";
        product.ItemName = dr["ItemName"].ToString();
        product.ItemLongDesc = " Custom Order: " + txtInviteTheme.Text;
        product.Price = decimal.Parse(dr["Price"].ToString());
        product.ShippingPrice = decimal.Parse(dr["ShippingPrice"].ToString());
        product.ItemUrl = dr["ItemUrl"].ToString();
        cart.AddItem(product, 1);

    }

    protected void btnViewCart_Click(object sender, EventArgs e)
    {
        {
            Response.Redirect("~/Forms/frmCart.aspx");
        }
    }
}