using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Forms_frmInviteForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //Page Title
        this.Title = "Invitations";


        //Panel Design (Content Page becuase CSS not wirking with master page
        this.pnlFormBody.BorderStyle = BorderStyle.Double;
        this.pnlFormBody.BorderWidth = 9;
        this.pnlFormBody.BackColor = System.Drawing.Color.White;
        this.pnlFormBody.Attributes.CssStyle.Add("opacity", "0.88");
        this.pnlFormBody.Attributes.CssStyle.Add("padding", "14px");

        if (!IsPostBack)
        {
            ddlInviteState.Items.Add("Select Your State");
            ddlInviteState.Items.Add("Alabama");
            ddlInviteState.Items.Add("Alaska");
            ddlInviteState.Items.Add("Arizona");
            ddlInviteState.Items.Add("Arkansas");
            ddlInviteState.Items.Add("California");
            ddlInviteState.Items.Add("Colorado");
            ddlInviteState.Items.Add("Connecticut");
            ddlInviteState.Items.Add("Delaware");
            ddlInviteState.Items.Add("Florida");
            ddlInviteState.Items.Add("Georgia");
            ddlInviteState.Items.Add("Hawaii");
            ddlInviteState.Items.Add("Idaho");
            ddlInviteState.Items.Add("Illinois");
            ddlInviteState.Items.Add("Indiana");
            ddlInviteState.Items.Add("Iowa");
            ddlInviteState.Items.Add("Kansas");
            ddlInviteState.Items.Add("Kentucky");
            ddlInviteState.Items.Add("Louisiana");
            ddlInviteState.Items.Add("Maine");
            ddlInviteState.Items.Add("Maryland");
            ddlInviteState.Items.Add("Massachusetts");
            ddlInviteState.Items.Add("Michigan");
            ddlInviteState.Items.Add("Minnesota");
            ddlInviteState.Items.Add("Mississippi");
            ddlInviteState.Items.Add("Missouri");
            ddlInviteState.Items.Add("Montana");
            ddlInviteState.Items.Add("Nebraska");
            ddlInviteState.Items.Add("Nevada");
            ddlInviteState.Items.Add("New Hampshire");
            ddlInviteState.Items.Add("New Jersey");
            ddlInviteState.Items.Add("New Mexico");
            ddlInviteState.Items.Add("New York");
            ddlInviteState.Items.Add("North Carolina");
            ddlInviteState.Items.Add("North Dakota");
            ddlInviteState.Items.Add("Ohio");
            ddlInviteState.Items.Add("Oklahoma");
            ddlInviteState.Items.Add("Oregon");
            ddlInviteState.Items.Add("Pennsylvania");
            ddlInviteState.Items.Add("Rhode Island");
            ddlInviteState.Items.Add("South Carolina");
            ddlInviteState.Items.Add("South Dakota");
            ddlInviteState.Items.Add("Tennessee");
            ddlInviteState.Items.Add("Texas");
            ddlInviteState.Items.Add("Utah");
            ddlInviteState.Items.Add("Vermont");
            ddlInviteState.Items.Add("Virginia");
            ddlInviteState.Items.Add("Washington");
            ddlInviteState.Items.Add("West Virginia");
            ddlInviteState.Items.Add("Wisconsin");
            ddlInviteState.Items.Add("Wyoming");

            ddlStyle.Items.Add("Select Style");
            ddlStyle.Items.Add("Traditional");
            ddlStyle.Items.Add("Custom");
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


        DS = clsDataLayer.GetOrderProduct(160);
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
        product.ItemLongDesc = "Send Date: " + txtInviteSendInvite.Text + " Save The Date: " + txtInviteSaveTheDate.Text + " Custom Order: " + txtInviteTheme.Text;
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