using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsCartItemList
/// </summary>
/// 
public class clsCartItemList
{
    private List<clsCartItem> cartItems;
    
	public clsCartItemList()
	{
		//
        // TODO: Add  cartItems = new List<clsCartItem>(); logic here
		//
        cartItems = new List<clsCartItem>();
	}



    //read-only property that returns the number of items in the internal list 
    public int Count
    {
        get { return cartItems.Count; }
    }


    //indexers that locate items in the internal list by index or product id 
    public clsCartItem this[int index]
    {
        get { return cartItems[index]; }
        set { cartItems[index] = value; }
    }

    public clsCartItem this[string id]
    {
        get
        {
            return cartItems.FirstOrDefault(c => c.Product.ItemId == id);
        }
    }

    //static method to get the cart object from session state
    public static clsCartItemList GetCart()
    {
        clsCartItemList cart = (clsCartItemList)HttpContext.Current.Session["Cart"];
        if (cart == null)
            HttpContext.Current.Session["Cart"] = new clsCartItemList();
        return (clsCartItemList)HttpContext.Current.Session["Cart"];
    }

    //methods that add, remove and clear items in the internal list
    public void AddItem(clsProduct product, int quantity)
    {
        clsCartItem cart = new clsCartItem(product, quantity); 
        cartItems.Add(cart);
    }
    public void RemoveAt(int index)
    {
        cartItems.RemoveAt(index);
    }
    //method that adds the quantity to the current quantity
    public void UpdateQuantity(int index,int quantity)
    {
        cartItems[index].Quantity = quantity;
    }
    public void Clear()
    {
        cartItems.Clear();
    }
    
    public  DataTable ToDataTable()
    {
        DataTable dataTable = new DataTable();
        dataTable.Columns.Add("ItemUrl");
        dataTable.Columns.Add("ItemId");
        dataTable.Columns.Add("ItemName");
        dataTable.Columns.Add("Price");
        dataTable.Columns.Add("ShippingPrice");
        dataTable.Columns.Add("ItemCost");
        dataTable.Columns.Add("Quantity");
        dataTable.Columns.Add("Deposit");
        decimal myval = 0;

        for (int i = 0; i < this.Count; i++)
        {
            if (!(Decimal.TryParse(this[i].Product.Price.ToString(), out myval)))
            {
                this[i].Product.Price = 0;
            }
            if (!(Decimal.TryParse(this[i].Product.ShippingPrice.ToString(), out myval)))
            {
                this[i].Product.ShippingPrice = 0;
            }
            decimal itemCost = this[i].Product.Price + this[i].Product.ShippingPrice;
            decimal deposit = Math.Round((itemCost  / 2),2);

            dataTable.Rows.Add(this[i].Product.ItemUrl.ToString(),this[i].Product.ItemId.ToString(),
                this[i].Product.ItemName.ToString(), this[i].Product.Price.ToString(), this[i].Product.ShippingPrice.ToString(), itemCost.ToString(),this[i].Quantity.ToString(),deposit);
        }
        return dataTable;
    }


      
}