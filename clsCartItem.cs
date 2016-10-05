using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsCartItem
/// </summary>
public class clsCartItem
{
    public clsCartItem()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public clsCartItem(clsProduct product, int quantity)
    {
        this.Product = product;
        this.Quantity = quantity;
    }

    //public properties for a CartItem object
    public clsProduct Product { get; set; }
    public int Quantity { get; set; }

    //method that adds the quantity to the current quantity
    public void AddQuantity(int quantity)
    {
        this.Quantity += quantity;
    }

    //method that formats an item's name, quantity and price in one line

    public string Display()
    {

        string displayString = string.Format("{0} ({1} at {2} each)",
            Product.ItemName, Quantity.ToString(), Product.Price.ToString("c"));
        return displayString;
    }
}