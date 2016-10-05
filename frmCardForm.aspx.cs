using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Forms_frmCardForm : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        this.Title = "Cards";

        //Panel Design (Content Page becuase CSS not wirking with master page
        this.pnlFormBody.BorderStyle = BorderStyle.Double;
        this.pnlFormBody.BorderWidth = 9;
        this.pnlFormBody.BackColor = System.Drawing.Color.White;
        this.pnlFormBody.Attributes.CssStyle.Add("opacity", "0.88");

        this.ddlCardsDesign.Items.Add("Select Design");
        this.ddlCardsDesign.Items.Add("Traditional Design");
        this.ddlCardsDesign.Items.Add("Custom Design");

        txtCardsFName.BackColor = System.Drawing.Color.White;

        if (!IsPostBack)
        {
            ddlCardsState.Items.Add("Select Your State");
            ddlCardsState.Items.Add("Alabama");
            ddlCardsState.Items.Add("Alaska");
            ddlCardsState.Items.Add("Arizona");
            ddlCardsState.Items.Add("Arkansas");
            ddlCardsState.Items.Add("California");
            ddlCardsState.Items.Add("Colorado");
            ddlCardsState.Items.Add("Connecticut");
            ddlCardsState.Items.Add("Delaware");
            ddlCardsState.Items.Add("Florida");
            ddlCardsState.Items.Add("Georgia");
            ddlCardsState.Items.Add("Hawaii");
            ddlCardsState.Items.Add("Idaho");
            ddlCardsState.Items.Add("Illinois");
            ddlCardsState.Items.Add("Indiana");
            ddlCardsState.Items.Add("Iowa");
            ddlCardsState.Items.Add("Kansas");
            ddlCardsState.Items.Add("Kentucky");
            ddlCardsState.Items.Add("Louisiana");
            ddlCardsState.Items.Add("Maine");
            ddlCardsState.Items.Add("Maryland");
            ddlCardsState.Items.Add("Massachusetts");
            ddlCardsState.Items.Add("Michigan");
            ddlCardsState.Items.Add("Minnesota");
            ddlCardsState.Items.Add("Mississippi");
            ddlCardsState.Items.Add("Missouri");
            ddlCardsState.Items.Add("Montana");
            ddlCardsState.Items.Add("Nebraska");
            ddlCardsState.Items.Add("Nevada");
            ddlCardsState.Items.Add("New Hampshire");
            ddlCardsState.Items.Add("New Jersey");
            ddlCardsState.Items.Add("New Mexico");
            ddlCardsState.Items.Add("New York");
            ddlCardsState.Items.Add("North Carolina");
            ddlCardsState.Items.Add("North Dakota");
            ddlCardsState.Items.Add("Ohio");
            ddlCardsState.Items.Add("Oklahoma");
            ddlCardsState.Items.Add("Oregon");
            ddlCardsState.Items.Add("Pennsylvania");
            ddlCardsState.Items.Add("Rhode Island");
            ddlCardsState.Items.Add("South Carolina");
            ddlCardsState.Items.Add("South Dakota");
            ddlCardsState.Items.Add("Tennessee");
            ddlCardsState.Items.Add("Texas");
            ddlCardsState.Items.Add("Utah");
            ddlCardsState.Items.Add("Vermont");
            ddlCardsState.Items.Add("Virginia");
            ddlCardsState.Items.Add("Washington");
            ddlCardsState.Items.Add("West Virginia");
            ddlCardsState.Items.Add("Wisconsin");
            ddlCardsState.Items.Add("Wyoming");


        }
    }



    protected void btnSubmitCard_Click(object sender, EventArgs e)
    {
        Session["FirstName"] = txtCardsFName.Text.Trim();
        Session["LastName"] = txtCardsLName.Text.Trim();
 
        try
        {
            if (txtCardsFName.Text == "" || txtCardsFName.Text == null)
            {
                txtCardsFName.BackColor = System.Drawing.Color.Yellow;
                txtCardsFName.Text = "Required";
                return;
            }

            if (txtCardsLName.Text == "")
            {
                txtCardsLName.BackColor = System.Drawing.Color.Yellow;
                txtCardsLName.Text = "Required";
                return;
            }

            if (txtCardsPhone1.Text == "")
            {
                txtCardsPhone1.BackColor = System.Drawing.Color.Yellow;
                txtCardsPhone1.Text = "Required";
                return;
            }

            if (txtCardsPhone2.Text == "")
            {
                txtCardsPhone2.BackColor = System.Drawing.Color.Yellow;
                txtCardsPhone2.Text = "Required";
                return;
            }

            if (txtCardsPhone3.Text == "")
            {
                txtCardsPhone3.BackColor = System.Drawing.Color.Yellow;
                txtCardsPhone3.Text = "Required";
                return;
            }

            if (txtCardsStreet1.Text == "")
            {
                txtCardsStreet1.BackColor = System.Drawing.Color.Yellow;
                txtCardsStreet1.Text = "Required";
                return;
            }
        }

        catch
        {
        }
  
        clsProduct product = new clsProduct();
        dsProductOrder DS = new dsProductOrder();
        clsCartItemList cart = clsCartItemList.GetCart();
        

        DS = clsDataLayer.GetOrderProduct(153);
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
        product.ItemDesc = "Custom Cards";
        product.ItemName = dr["ItemName"].ToString();
        product.ItemLongDesc = "Send Date: " + txtSendDate.Text + " Card Delivery Date: " + txtCardsDeliveryDate.Text + " Custom Order: " + txtCardsSuggestions.Text;
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