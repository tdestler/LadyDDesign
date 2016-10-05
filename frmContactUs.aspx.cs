﻿using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_frmContactUs : System.Web.UI.Page

{

StringBuilder sb = new System.Text.StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {
        //contactUsLeft.Attributes.CssStyle.Add("padding", "50px");
        contactUsRight.Attributes.CssStyle.Add("padding", "10px");

        this.Title = "Contact Us";

        this.contactUsRight.BorderStyle = BorderStyle.Double;
        this.contactUsRight.BorderWidth = 9;
        this.contactUsRight.BorderColor = System.Drawing.Color.White;
        this.contactUsRight.BackColor = System.Drawing.Color.Turquoise;
    }
    protected void btnContactSubmit_Click(object sender, EventArgs e)
    {
        string emailaddress = clsDataLayer.GetEmail();
        string message = "";
        if (string.Compare(txtContactMail.Text, txtContactMailCheck.Text) == 0)
        {
            string messageBody = string.Format("{0} {1} {2} {3}", txtContactFName.Text, txtContactLName.Text, txtContactSubject.Text, txtboxBody.Text);
            if (clsEmailLayer.SendEmail(txtContactMail.Text, emailaddress, "", "", txtContactSubject.Text, messageBody))
            {
                message = "Thank you " + txtContactFName.Text + " for contacting us. Your email has been sent. We will contact you in the near future.";
                txtboxBody.Text = "";
                txtContactSubject.Text = "";

            }
            else
            {
                message = "I'm sorry " + txtContactFName.Text + "your email has not been sent. Please try again.";

            }
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }
        else
        {
            lblConfirmEmail.Text = "Email addresses do not match.";
            return;
        }
    }

    
}