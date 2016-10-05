using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;



public partial class Forms_frmHomePage : System.Web.UI.Page
{

    private static int testIndex;
    protected static clsCustomer displayCust;
    protected static clsTestimonialList testimonials;
    protected static int testCount;

    private static int imgIndex;
    protected static clsGallery slideShows;
    protected static clsGalleryList itemUrllist;
    protected static int imgCount;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //slideShow.Attributes.CssStyle.Add("border-style", "solid");
        this.Title = "Lady D Designs";

        //this.UpdatePanel1.Attributes.CssStyle.Add("background-color","white");

        //this.Panel1.BackColor = System.Drawing.Color.White;

        

        if (!IsPostBack)
        {
            
            clsDataLayer.Load_Testimonial();

            testimonials = clsTestimonialList.GetCart();

            testCount = testimonials.Count;
            testIndex = 0;
            displayCust = testimonials[testIndex].Customer;
            lblTestimonial.Text = displayCust.DisplayTestimonials();
            testIndex++;

        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {


        displayCust = testimonials[testIndex].Customer;

        lblTestimonial.Text = displayCust.DisplayTestimonials();
        testIndex++;

        if (testIndex == testCount)
            testIndex = 0;

       

    
        imgIndex++;

        if (imgIndex == imgCount)
            imgIndex = 0;




    }

  

}