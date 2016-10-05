using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsProduct
/// </summary>
public class clsProduct
{
    public string ItemId { get; set; }
    public string ItemName { get; set; }
    public string ItemDesc { get; set; }
    public string ItemLongDesc { get; set; }
    public string ItemUrl { get; set; }
    public decimal Price { get; set; }
    public decimal ShippingPrice { get; set; }
    public decimal Qty { get; set; }


    public clsProduct()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public clsProduct(clsProduct Product)
    {
        this.Product = Product;
    }
    //public properties for a object
    public clsProduct Product { get; set; }

}