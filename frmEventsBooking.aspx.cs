using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_frmEventsBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Book Events";

        if (txtAdminLogin.Text == "letmein")
        {
            lbAdmin.Visible = true;
        }

        else { lbAdmin.Visible = false; }

       
         
        
        
    }
}