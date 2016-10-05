﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Forms_frmProductCards : System.Web.UI.Page
{

    protected static clsGallery slideShows;
    protected static clsGalleryList itemUrllist;
    protected static int imgCount;
    protected static int productCount;
    private int PageSize = 6;

    clsProduct selectedProduct = new clsProduct();

    Label itemName = new Label();

    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Cards";


        //Panel Design (Content Page becuase CSS not wirking with master page
        this.pnlFormBody.BorderStyle = BorderStyle.Double;
        this.pnlFormBody.BorderWidth = 9;
        this.pnlFormBody.BackColor = System.Drawing.Color.White;
        this.pnlFormBody.Attributes.CssStyle.Add("opacity", "0.88");

      if (!Page.IsPostBack)
      {

             this.GetProductPageWise(1);
  
      }
    }

    protected void ImageOnClick(object sender, EventArgs e)
    {
        decimal selectedQty = GetSelectedProductQty(((ImageButton)sender).AlternateText);

        if (selectedQty > 0)
            Response.Redirect("~/Forms/frmOrderPage.aspx?ItemID=" + ((ImageButton)sender).AlternateText);

    }
    protected string InStock(string itemName, string qty)
    {


        int total = int.Parse(qty);

        if (total > 0)
            return itemName;

        else
            return "Out of Stock";
    }


    private decimal GetSelectedProductQty(string ItemID)
    {

        dsProductOrder DS = new dsProductOrder();
        int itemID = int.Parse(ItemID);

        DS = clsDataLayer.GetOrderProduct(itemID);

        DataRow dr = DS.Tables[0].Rows[0];

        return decimal.Parse(dr["QtyOnHand"].ToString());
    }

    private void GetProductPageWise(int pageIndex)
    {
        DataSet loadProduct = clsDataLayer.GetOrderProduct(0);
        dsProductOrder pageDisplay = new dsProductOrder();

        productCount = loadProduct.Tables[0].Rows.Count;
        int j = (pageIndex - 1) * 6;

        for (int i = 0; (i < productCount && i < 6) && j < productCount; i++, j++)
        {
            pageDisplay.Tables[0].ImportRow(loadProduct.Tables[0].Rows[j]);
        }

        DataList1.DataSource = pageDisplay;
        DataList1.DataBind();
        this.PopulatePager(productCount, pageIndex);
    }

    private void PopulatePager(int recordCount, int currentPage)
    {
        List<ListItem> pages = new List<ListItem>();
        int startIndex, endIndex;
        int pagerSpan = 5;

        //Calculate the Start and End Index of pages to be displayed.
        double dblPageCount = (double)((decimal)recordCount / Convert.ToDecimal(PageSize));
        int pageCount = (int)Math.Ceiling(dblPageCount);
        startIndex = currentPage > 1 && currentPage + pagerSpan - 1 < pagerSpan ? currentPage : 1;
        endIndex = pageCount > pagerSpan ? pagerSpan : pageCount;
        if (currentPage > pagerSpan % 2)
        {
            if (currentPage == 2)
            {
                endIndex = 5;
            }
            else
            {
                endIndex = currentPage + 2;
            }
        }
        else
        {
            endIndex = (pagerSpan - currentPage) + 1;
        }

        if (endIndex - (pagerSpan - 1) > startIndex)
        {
            startIndex = endIndex - (pagerSpan - 1);
        }

        if (endIndex > pageCount)
        {
            endIndex = pageCount;
            startIndex = ((endIndex - pagerSpan) + 1) > 0 ? (endIndex - pagerSpan) + 1 : 1;
        }

        //Add the First Page Button.
        if (currentPage > 1)
        {
            pages.Add(new ListItem("First", "1"));
        }

        //Add the Previous Button.
        if (currentPage > 1)
        {
            pages.Add(new ListItem("<<", (currentPage - 1).ToString()));
        }

        for (int i = startIndex; i <= endIndex; i++)
        {
            pages.Add(new ListItem(i.ToString(), i.ToString(), i != currentPage));
        }

        //Add the Next Button.
        if (currentPage < pageCount)
        {
            pages.Add(new ListItem(">>", (currentPage + 1).ToString()));
        }

        //Add the Last Button.
        if (currentPage != pageCount)
        {
            pages.Add(new ListItem("Last", pageCount.ToString()));
        }
        rptPager.DataSource = pages;
        rptPager.DataBind();
    }
    protected void Page_Changed(object sender, EventArgs e)
    {
        int pageIndex = int.Parse((sender as LinkButton).CommandArgument);
        this.GetProductPageWise(pageIndex);
    }
}