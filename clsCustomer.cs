using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsCustomer
/// </summary>
public class clsCustomer
{
    public string CustId { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string EmailAddress { get; set; }
    public string Testimonial { get; set; }
    public string EmailSub { get; set; }

	public clsCustomer()
	{
		//
		// TODO: Add constructor logic here
		//
	}

        public clsCustomer(clsCustomer customer)
    {
        this.Customer = customer;
    }
        //public properties for a CartItem object
        public clsCustomer Customer { get; set; }

        public string DisplayTestimonials()
        {

            string displayString = string.Format("{0} {1} {2}",
               this.Testimonial.ToString(), this.FirstName.ToString(), this.LastName.ToString ());
            return displayString;
        }
}