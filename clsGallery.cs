using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsGallery
/// </summary>
public class clsGallery
{
    public string ItemId { get; set; }
    public string ItemUrl { get; set; }

    public clsGallery()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public clsGallery(clsGallery gallery)
    {
        this.Gallery = gallery;
    }
    //public properties for a CartItem object
    public clsGallery Gallery { get; set; }

}