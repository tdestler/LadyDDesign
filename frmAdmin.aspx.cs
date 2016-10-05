using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Forms_frmAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Admin Page";

        //Panel Design (Content Page becuase CSS not wirking with master page
        this.pnlFormBody.BorderStyle = BorderStyle.Double;
        this.pnlFormBody.BorderWidth = 9;
        this.pnlFormBody.BackColor = System.Drawing.Color.White;
        this.pnlFormBody.Attributes.CssStyle.Add("opacity", "0.88");

        if (!IsPostBack)
        {
            ddlCustState.Items.Add("Select Your State");
            ddlCustState.Items.Add("Alabama");
            ddlCustState.Items.Add("Alaska");
            ddlCustState.Items.Add("Arizona");
            ddlCustState.Items.Add("Arkansas");
            ddlCustState.Items.Add("California");
            ddlCustState.Items.Add("Colorado");
            ddlCustState.Items.Add("Connecticut");
            ddlCustState.Items.Add("Delaware");
            ddlCustState.Items.Add("Florida");
            ddlCustState.Items.Add("Georgia");
            ddlCustState.Items.Add("Hawaii");
            ddlCustState.Items.Add("Idaho");
            ddlCustState.Items.Add("Illinois");
            ddlCustState.Items.Add("Indiana");
            ddlCustState.Items.Add("Iowa");
            ddlCustState.Items.Add("Kansas");
            ddlCustState.Items.Add("Kentucky");
            ddlCustState.Items.Add("Louisiana");
            ddlCustState.Items.Add("Maine");
            ddlCustState.Items.Add("Maryland");
            ddlCustState.Items.Add("Massachusetts");
            ddlCustState.Items.Add("Michigan");
            ddlCustState.Items.Add("Minnesota");
            ddlCustState.Items.Add("Mississippi");
            ddlCustState.Items.Add("Missouri");
            ddlCustState.Items.Add("Montana");
            ddlCustState.Items.Add("Nebraska");
            ddlCustState.Items.Add("Nevada");
            ddlCustState.Items.Add("New Hampshire");
            ddlCustState.Items.Add("New Jersey");
            ddlCustState.Items.Add("New Mexico");
            ddlCustState.Items.Add("New York");
            ddlCustState.Items.Add("North Carolina");
            ddlCustState.Items.Add("North Dakota");
            ddlCustState.Items.Add("Ohio");
            ddlCustState.Items.Add("Oklahoma");
            ddlCustState.Items.Add("Oregon");
            ddlCustState.Items.Add("Pennsylvania");
            ddlCustState.Items.Add("Rhode Island");
            ddlCustState.Items.Add("South Carolina");
            ddlCustState.Items.Add("South Dakota");
            ddlCustState.Items.Add("Tennessee");
            ddlCustState.Items.Add("Texas");
            ddlCustState.Items.Add("Utah");
            ddlCustState.Items.Add("Vermont");
            ddlCustState.Items.Add("Virginia");
            ddlCustState.Items.Add("Washington");
            ddlCustState.Items.Add("West Virginia");
            ddlCustState.Items.Add("Wisconsin");
            ddlCustState.Items.Add("Wyoming");


        }
    }
    protected void btnAddProduct_Click(object sender, EventArgs e)
    {
        int myval = 0;
        decimal decval = 0;
        int itemPrice;
        int shippingPrice;
        decimal itemQty;
        string ImageUrl = "";
        string InputDesc= txtLongDesc.Text.Replace('\'',' ');

        if (FileUpload1.HasFile)
        {

            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/SlideImages/") + fileName);
            Response.Redirect(Request.Url.AbsoluteUri);
            ImageUrl = "~/SlideImages/" + fileName;
        }

        if (!(Int32.TryParse(txtPrice.Text, out myval)))
        {
            itemPrice = 0;
        }
        else
        {
            itemPrice = myval;
        }

        if (!(Int32.TryParse(txtPrice.Text, out myval)))
        {
            shippingPrice = 0;
        }
        else
        {
            shippingPrice = myval;
        }

        if (!(Decimal.TryParse(txtQtyOnHand.Text, out decval)))
        {
            itemQty = 0;
        }
        else
        {
            itemQty = decval;
        }

        if (txtItemName.Text.Length == 0)
        {
            lblErrorMessage.Text = "Please Enter Product Name";
        }
        else
        {
            clsDataLayer.SaveProduct(txtItemName.Text, itemPrice, shippingPrice, InputDesc, itemQty, ddlInputType.SelectedValue.ToString(), ddlInputOccassion.SelectedValue.ToString(), ImageUrl);
            grdItems.DataBind();
        }

    }

    protected void btnClearItem_Click(object sender, EventArgs e)
    {
        txtPrice.Text = "";
        txtItemName.Text = "";
        txtLongDesc.Text = "";
        txtQtyOnHand.Text = "";
    }

    protected void btnAddCustomer_Click(object sender, EventArgs e)
    {

        if (txtFirstName.Text.Length == 0)
        {
            lblErrorMessage2.Text = "Please Enter First Name";
        }
        else if (txtEmailAddress.Text.Length == 0)
        {
            lblErrorMessage2.Text = "Please Enter Email Address";
        }
        else if (txtLastName.Text.Length == 0)
        {

        }
        else{
        clsDataLayer.SaveCustomer(txtFirstName.Text, txtLastName.Text, txtStreet1.Text, txtStreet2.Text, 
            txtCity.Text, ddlCustState.SelectedValue.ToString(),  txtZip.Text, txtPhone.Text,  txtEmailAddress.Text, txtTestimony.Text,ddlEmailSub.SelectedValue.ToString());
        grdCustomer.DataBind();
        }

    }

    protected void btnClearClient_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtStreet1.Text = "";
        txtStreet2.Text = "";
        txtCity.Text = "";
        txtZip.Text = "";
        txtPhone.Text = "";
        txtEmailAddress.Text = "";
        txtTestimony.Text = "";

    }
 
}