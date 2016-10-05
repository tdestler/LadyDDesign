using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsGalleryList
/// </summary>
public class clsGalleryList
{
    private List<clsGallery> gallery;

    public clsGalleryList()
    {
        //
        // TODO: Add constructor logic here
        //
        gallery = new List<clsGallery>();
    }

    //read-only property that returns the number of items in the internal list 
    public int Count
    {
        get { return gallery.Count; }
    }

    //indexers that locate items in the internal list by index or product id 
    public clsGallery this[int index]
    {
        get { return gallery[index]; }
        set { gallery[index] = value; }
    }



    //static method to get the cart object from session state
    public static clsGalleryList GetCart()
    {
        clsGalleryList cart = (clsGalleryList)HttpContext.Current.Session["Gallery"];
        if (cart == null)
            HttpContext.Current.Session["Gallery"] = new clsGalleryList();
        return (clsGalleryList)HttpContext.Current.Session["Gallery"];
    }

    //methods that add, remove and clear items in the internal list
    public void AddItem(clsGallery item)
    {
        clsGallery message = new clsGallery(item);
        gallery.Add(message);
    }
    public void RemoveAt(int index)
    {
        gallery.RemoveAt(index);
    }
    public void Clear()
    {
        gallery.Clear();
    }


}