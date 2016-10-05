using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Net;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Forms_frmOrderPage : System.Web.UI.Page
{

    clsProduct selectedProduct = new clsProduct();
    protected void Page_Load(object sender, EventArgs e)
    {

        int itemID = int.Parse(Request["ItemID"]);
        selectedProduct = GetSelectedProduct(itemID);
        imgGallery.ImageUrl = selectedProduct.ItemUrl;
        lblDataName.Text = selectedProduct.ItemName;
        lbltemDesc.Text = selectedProduct.ItemLongDesc;
        lblDataPrice.Text = "$" + selectedProduct.Price.ToString();
        lblQtyOnHand.Text = selectedProduct.Qty.ToString();

    }
    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        clsCartItemList cart = clsCartItemList.GetCart();
        clsCartItem cartItem = cart[selectedProduct.ItemId];
        try
        {
            int qty = Convert.ToInt32(txtOrderQty.Text);
            if (cartItem == null)
            {
                cart.AddItem(selectedProduct, Convert.ToInt32(txtOrderQty.Text));
            }
            else
            {
                cartItem.AddQuantity(Convert.ToInt32(txtOrderQty.Text));
            }
        }
        catch (Exception ex)
        {
            txtOrderQty.Text = " ";
        }


        txtOrderQty.Text = " ";
        Response.Redirect(Request.RawUrl);

       
    }

    private clsProduct GetSelectedProduct(int ItemID)
    {
        clsProduct product = new clsProduct();

       
        dsProductOrder DS = new dsProductOrder();
        DS = clsDataLayer.GetOrderProduct(ItemID);

        DataRow dr = DS.Tables[0].Rows[0];
        product.ItemId = dr["ItemId"].ToString();
        product.ItemDesc = dr["ItemDesc"].ToString();
        product.ItemName = dr["ItemName"].ToString();
        product.ItemLongDesc = dr["ItemLongDesc"].ToString();
        product.Price = decimal.Parse(dr["Price"].ToString());
        product.ItemUrl = dr["ItemUrl"].ToString();
        product.Qty = decimal.Parse(dr["QtyOnHand"].ToString());

        return product;
    }
    protected void btnContinueShop_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Forms/frmProductCards.aspx");
    }
    protected void btnViewCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Forms/frmCart.aspx");
    }
}