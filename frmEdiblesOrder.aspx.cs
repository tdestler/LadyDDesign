using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Forms_frmEdiblesOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Edibles";

        //Panel Design (Content Page becuase CSS not wirking with master page
        this.pnlFormBody.BorderStyle = BorderStyle.Double;
        this.pnlFormBody.BorderWidth = 9;
        this.pnlFormBody.BackColor = System.Drawing.Color.White;
        this.pnlFormBody.Attributes.CssStyle.Add("opacity", "0.88");

        if (!IsPostBack)
        {

            ddlEdibleState.Items.Add("Select Your State");
            ddlEdibleState.Items.Add("Alabama");
            ddlEdibleState.Items.Add("Alaska");
            ddlEdibleState.Items.Add("Arizona");
            ddlEdibleState.Items.Add("Arkansas");
            ddlEdibleState.Items.Add("California");
            ddlEdibleState.Items.Add("Colorado");
            ddlEdibleState.Items.Add("Connecticut");
            ddlEdibleState.Items.Add("Delaware");
            ddlEdibleState.Items.Add("Florida");
            ddlEdibleState.Items.Add("Georgia");
            ddlEdibleState.Items.Add("Hawaii");
            ddlEdibleState.Items.Add("Idaho");
            ddlEdibleState.Items.Add("Illinois");
            ddlEdibleState.Items.Add("Indiana");
            ddlEdibleState.Items.Add("Iowa");
            ddlEdibleState.Items.Add("Kansas");
            ddlEdibleState.Items.Add("Kentucky");
            ddlEdibleState.Items.Add("Louisiana");
            ddlEdibleState.Items.Add("Maine");
            ddlEdibleState.Items.Add("Maryland");
            ddlEdibleState.Items.Add("Massachusetts");
            ddlEdibleState.Items.Add("Michigan");
            ddlEdibleState.Items.Add("Minnesota");
            ddlEdibleState.Items.Add("Mississippi");
            ddlEdibleState.Items.Add("Missouri");
            ddlEdibleState.Items.Add("Montana");
            ddlEdibleState.Items.Add("Nebraska");
            ddlEdibleState.Items.Add("Nevada");
            ddlEdibleState.Items.Add("New Hampshire");
            ddlEdibleState.Items.Add("New Jersey");
            ddlEdibleState.Items.Add("New Mexico");
            ddlEdibleState.Items.Add("New York");
            ddlEdibleState.Items.Add("North Carolina");
            ddlEdibleState.Items.Add("North Dakota");
            ddlEdibleState.Items.Add("Ohio");
            ddlEdibleState.Items.Add("Oklahoma");
            ddlEdibleState.Items.Add("Oregon");
            ddlEdibleState.Items.Add("Pennsylvania");
            ddlEdibleState.Items.Add("Rhode Island");
            ddlEdibleState.Items.Add("South Carolina");
            ddlEdibleState.Items.Add("South Dakota");
            ddlEdibleState.Items.Add("Tennessee");
            ddlEdibleState.Items.Add("Texas");
            ddlEdibleState.Items.Add("Utah");
            ddlEdibleState.Items.Add("Vermont");
            ddlEdibleState.Items.Add("Virginia");
            ddlEdibleState.Items.Add("Washington");
            ddlEdibleState.Items.Add("West Virginia");
            ddlEdibleState.Items.Add("Wisconsin");
            ddlEdibleState.Items.Add("Wyoming");


        }
        
    }
    protected void btnSubmitCard_Click(object sender, EventArgs e)
    {
        Session["FirstName"] = txtEdibleFName.Text.Trim();
        Session["LastName"] = txtEdibleLName.Text.Trim();

        try
        {
            if (txtEdibleFName.Text == "" || txtEdibleFName.Text == null)
            {
                txtEdibleFName.BackColor = System.Drawing.Color.Yellow;
                txtEdibleFName.Text = "Required";
                return;
            }

            if (txtEdibleLName.Text == "")
            {
                txtEdibleLName.BackColor = System.Drawing.Color.Yellow;
                txtEdibleLName.Text = "Required";
                return;
            }

            if (txtEdiblePhone1.Text == "")
            {
                txtEdiblePhone1.BackColor = System.Drawing.Color.Yellow;
                txtEdiblePhone1.Text = "Required";
                return;
            }

            if (txtEdiblePhone2.Text == "")
            {
                txtEdiblePhone2.BackColor = System.Drawing.Color.Yellow;
                txtEdiblePhone2.Text = "Required";
                return;
            }

            if (txtEdiblePhone3.Text == "")
            {
                txtEdiblePhone3.BackColor = System.Drawing.Color.Yellow;
                txtEdiblePhone3.Text = "Required";
                return;
            }

            if (txtEdibleStreet1.Text == "")
            {
                txtEdibleStreet1.BackColor = System.Drawing.Color.Yellow;
                txtEdibleStreet1.Text = "Required";
                return;
            }
        }

        catch
        {
        }

        clsProduct product = new clsProduct();
        dsProductOrder DS = new dsProductOrder();
        clsCartItemList cart = clsCartItemList.GetCart();


        DS = clsDataLayer.GetOrderProduct(161);
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
        product.ItemDesc = "Custom Edibles";
        product.ItemName = dr["ItemName"].ToString();
        product.ItemLongDesc = " Edible Delivery Date: " + txtEdiblesDeliveryDate.Text + " Custom Order: " + txtEdibleTheme.Text;
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