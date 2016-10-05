using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsTestimonialList
/// </summary>
public class clsTestimonialList
{
    private List<clsCustomer> testimonials;

    public clsTestimonialList()
    {
        //
        // TODO: Add constructor logic here
        //
        testimonials = new List<clsCustomer>();
    }

    //read-only property that returns the number of items in the internal list 
    public int Count
    {
        get { return testimonials.Count; }
    }

    //indexers that locate items in the internal list by index or product id 
    public clsCustomer this[int index]
    {
        get { return testimonials[index]; }
        set { testimonials[index] = value; }
    }



    //static method to get the cart object from session state
    public static clsTestimonialList GetCart()
    {
        clsTestimonialList cart = (clsTestimonialList)HttpContext.Current.Session["Testimonial"];
        if (cart == null)
            HttpContext.Current.Session["Testimonial"] = new clsTestimonialList();
        return (clsTestimonialList)HttpContext.Current.Session["Testimonial"];
    }

    //methods that add, remove and clear items in the internal list
    public void AddItem(clsCustomer testimonial)
    {
        clsCustomer message = new clsCustomer(testimonial);
        testimonials.Add(message);
    }
    public void RemoveAt(int index)
    {
        testimonials.RemoveAt(index);
    }
    public void Clear()
    {
        testimonials.Clear();
    }


}