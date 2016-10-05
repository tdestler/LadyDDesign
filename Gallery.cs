using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using MySql.Data.MySqlClient;
using System.Data;
using AjaxControlToolkit;

/// <summary>
/// Summary description for Gallery
/// </summary>
[WebService(Namespace = "http://microsoft.com/webservices/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class Gallery : System.Web.Services.WebService
{

    public Gallery()
    {

    //    //Uncomment the following line if using designed components 
    //    //InitializeComponent(); 
    }

    [WebMethod]
    public static AjaxControlToolkit.Slide[] GetImages()
    {

        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
        conn.Open();
        MySqlDataAdapter adp = new MySqlDataAdapter("Select itemName,itemDesc, itemUrl from tblItem where itemType = 'Card'", conn);
        DataSet dsProduct = new DataSet();
        adp.Fill(dsProduct);

        conn.Close();

       // List<Slide> slides = new List<Slide>();

        AjaxControlToolkit.Slide[] slides = new AjaxControlToolkit.Slide[2];
        //foreach (DataTable slidetbl in dsProduct.Tables)
        //{
        //    foreach (DataRow sliderow in slidetbl.Rows)
        //    {
        //        slides.Add(new Slide
        //        {
        //            Name = sliderow["ItemName"].ToString(),
        //            Description = sliderow["ItemDesc"].ToString(),
        //            ImagePath = sliderow["ItemUrl"].ToString()
        //        });

        //    }
        //}
        slides[0] = new AjaxControlToolkit.Slide("/SlidesImages/IMG_2754.JPG", "test1", "work it");
        slides[1] = new AjaxControlToolkit.Slide("/SlidesImages/IMG_2755.JPG", "test2", "work it");
        return (slides);

    }
}
