using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class frmCart : System.Web.UI.Page
{
    private clsCartItemList cart;
    private DataTable cartTable;
    protected void Page_Load(object sender, EventArgs e)
    {
        cart = clsCartItemList.GetCart();
        if (!IsPostBack)
        {
        this.Title = "Shopping Cart";


        //Panel Design (Content Page becuase CSS not wirking with master page
        this.pnlFormBody.BorderStyle = BorderStyle.Double;
        this.pnlFormBody.BorderWidth = 9;
        this.pnlFormBody.BackColor = System.Drawing.Color.White;
        this.pnlFormBody.Attributes.CssStyle.Add("opacity", "0.88");

        ViewState["RefUrl"] = Request.UrlReferrer.ToString();

        // get cart items on every page load
        

        cartTable = cart.ToDataTable();
        DataList1.DataSource = cartTable;
        DataList1.DataBind();


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


        }
    }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        switch (e.CommandName)
        {
            case "cmd_Edit":
                 DataList1.EditItemIndex = e.Item.ItemIndex;
                 Bind_Items();
                break;

            case "Delete_Command":
                cart.RemoveAt(e.Item.ItemIndex);
                Bind_Items();
                break;

            case "Update_Command":
               
                clsProduct updateQty = new clsProduct();

                updateQty.ItemId = e.CommandArgument.ToString();

                TextBox quantity = (TextBox)e.Item.FindControl("txtQuantity");
                string strQuantity = quantity.Text;
                int numQty = Int16.Parse(strQuantity);

                cart.UpdateQuantity(e.Item.ItemIndex,numQty);
                DataList1.EditItemIndex = -1;
                Bind_Items();
                break;

            case "Cancel_Command":
                DataList1.EditItemIndex = -1;
                Bind_Items();
                break;
        }
        
    }
    protected void Bind_Items()
        {
            cart = clsCartItemList.GetCart();
            cartTable = cart.ToDataTable();

            DataList1.DataSource = cartTable;
            DataList1.DataBind();
        }
    protected void btnContinueShop_Click(object sender, EventArgs e)
    {
        object refUrl = ViewState["RefUrl"];
        if (refUrl != null)
            Response.Redirect((string)refUrl);
    }

    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
       // DirectToPaypal();

/***** Add this block  Angela New Code  *****/
        if (clsDataLayer.CreateOrder(txtFirstName.Text, txtLastName.Text, txtStreet1.Text, txtStreet2.Text,
           txtCity.Text, ddlInviteState.SelectedValue.ToString(), txtZip.Text, txtPhone.Text, txtEmail.Text, cart) == true)
        {
            cart.Clear();
            object refUrl = ViewState["RefUrl"];
            if (refUrl != null)
                Response.Redirect((string)refUrl);

        }

        /***** Add this block  *****/

    }
    private void DirectToPaypal()
    {
        //logic for paypal, builds the url to send to paypal
        string bEmail = clsDataLayer.GetEmail();
        string returnUrl = System.Configuration.ConfigurationManager.AppSettings["Return"];
        string cancelUrl = System.Configuration.ConfigurationManager.AppSettings["Cancel"];
        string urlbuilder = GetCartItems();
        decimal tax = GetTax();
        string url = System.Configuration.ConfigurationManager.AppSettings["Url"] + "&upload=1&business="
            + bEmail + urlbuilder + "&tax_cart=" + tax.ToString("#.##") + "&return=" + returnUrl + "&cancel_return=" + cancelUrl;


        Response.Redirect(url);
    }
    private decimal GetTotal()
    {
        //gets total for the cart
        int counter = 1;
        decimal total = 0;
        for (int i = 0; i < cart.Count; i++)
        {
            Console.WriteLine("{0}{1}", cart[i].Product.Price, cart[i].Quantity);
            total = total + (cart[i].Product.Price * cart[i].Quantity);
            counter++;
        }
        return total;
    }
    private decimal GetTax()
    {
        //gets tax for the product, state tax is at .07 currently
        decimal subTotal = GetTotal();
        decimal tax = 0.07M * subTotal;
        return tax;
    }

    private string GetCartItems()
    {
        //loops through the cart and sets them to variables and returns it.
        int count = 1;
        string url = "";
        decimal currentshippingprice = 0;
        for (int i = 0; i < cart.Count; i++)
        {
            decimal deposit = 0;
            Console.WriteLine("{0}{1}{2}{3}{4}", cart[i].Product.Price, cart[i].Quantity, cart[i].Product.ItemName, cart[i].Product.ItemDesc, cart[i].Product.ShippingPrice);
            deposit = (cart[i].Product.Price / 2);
            if (cart[i].Product.ShippingPrice > currentshippingprice)
            {

                url = url + "&item_name_" + count + '=' + cart[i].Product.ItemName + "-" +
    cart[i].Product.ItemDesc + "&amount_" + count + '=' + Decimal.Round(deposit, 2) + "&quantity_" +
    count + '=' + cart[i].Quantity + "&shipping_1=" + cart[i].Product.ShippingPrice;
                count++;
                currentshippingprice = cart[i].Product.ShippingPrice;
            }
            else
            {
                url = url + "&item_name_" + count + '=' + cart[i].Product.ItemName + "-" +
cart[i].Product.ItemDesc + "&amount_" + count + '=' + Decimal.Round(deposit, 2) + "&quantity_" +
count + '=' + cart[i].Quantity;
                count++;
            }
        }
        return url;
    }
}