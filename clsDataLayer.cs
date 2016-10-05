using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Net;
using System.Data;
using System.Net.Mail;
using MySql.Data.MySqlClient;
using AjaxControlToolkit;

/// <summary>
/// Summary description for clsDataLayer
/// </summary>
public class clsDataLayer
{
    public clsDataLayer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static dsProductOrder GetOrderProduct(int itemID)
    {
        dsProductOrder DS;
        MySqlDataAdapter adp;
        
        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
        try
        {
            conn.Open();

            if (itemID < 1)
            {
                adp = new MySqlDataAdapter("Select itemID,itemName,itemDesc, itemLongDesc, itemUrl, price, ShippingPrice, qtyonhand from tblItem ", conn);

            }
            else
            {
                adp = new MySqlDataAdapter("Select itemID,itemName,itemDesc, itemLongDesc, itemUrl, price, ShippingPrice, qtyonhand  from tblItem where itemID = '" + itemID + "'", conn);

            }

            DS = new dsProductOrder();
            adp.Fill(DS.tblItem);
            return DS;
        }

        catch (Exception ex)
        {
            DS = new dsProductOrder();
            return DS;
        }
    }


    public static void SaveProduct(string ProductName, int Price, int ShipPrice, string ProductLongDesc, decimal QtyOnHand, string ItemType, string Occassion, string ImageUrl)
    {

        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
        conn.Open();

        MySqlCommand cmd = new MySqlCommand("Insert into tblItem" +
            "(ItemName, Price, ShippingPrice, ItemLongDesc, QtyOnHand, ItemType, Occassion, ItemUrl) values ('" +
            ProductName + "', " + Price + "," + ShipPrice + ",'" + ProductLongDesc + "'," + QtyOnHand +
           ",'" + ItemType + "','" + Occassion + "','" + ImageUrl + "')", conn);
        cmd.ExecuteNonQuery();

        // Close the connection
        conn.Close();

    }

    public static string SaveCustomer(string FirstName, string LastName, string Street1, string Street2, string City, string State, string Zip, string Phone,  string Email, string Testimony, string EmailSub)
    {
        MySqlDataAdapter adp;
        DataSet dsCustomer = new DataSet();

        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
        conn.Open();

        MySqlCommand cmd = new MySqlCommand("Insert into tblCustomer" +
            "(FirstName, LastName,EmailAddress,Testimonial,StreetAddr1, StreetAddr2,City,State,Zip,Phone,EmailSub) values ('" +
            FirstName + "', '" + LastName + "','" + Email + "','" + Testimony + "', '" +
            Street1 + "', '" + Street2 + "','" + City + "','" + State + "', '" +
            Zip + "', '" + Phone + "', '" + EmailSub + "')", conn);
        cmd.ExecuteNonQuery();


        adp = new MySqlDataAdapter("Select last_insert_id()", conn);

        adp.Fill(dsCustomer);
        conn.Close();

        string CustomerID = "";
        if (dsCustomer.Tables[0].Rows.Count > 0)
        {
            CustomerID = dsCustomer.Tables[0].Rows[0]["CustID"].ToString();
        }

        return CustomerID;
      

    }

    public static void UpdateCustomer(String CustomerID)
    {
        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
        conn.Open();

        int numCust = Int16.Parse(CustomerID);
        MySqlCommand cmd = new MySqlCommand("Update tblCustomer set EmailSub = 'Yes' where CustID = " + numCust + "", conn);
        cmd.ExecuteNonQuery();

        // Close the connection
        conn.Close();

    }

    public static void SaveSeason(string Season)
    {
        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
        conn.Open();

        MySqlCommand cmd = new MySqlCommand("Insert into tblConfig(Season) values ('" + Season + "')", conn);
        cmd.ExecuteNonQuery();

        // Close the connection
        conn.Close();

    }
    public static string GetConfig()
    {


        DataSet dsConfig = new DataSet();
        MySqlDataAdapter adp;

        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
        conn.Open();
        adp = new MySqlDataAdapter("Select Season from tblConfig where ConfigID = 14", conn);

        adp.Fill(dsConfig);

        string season = dsConfig.Tables[0].Rows[0]["Season"].ToString();

        return season;


    }

    public static string GetEmail()
    {


        DataSet dsConfig = new DataSet();
        MySqlDataAdapter adp;

        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
        conn.Open();
        adp = new MySqlDataAdapter("Select PaypalEmail from tblConfig where ConfigID = 14", conn);

        adp.Fill(dsConfig);

        string email = dsConfig.Tables[0].Rows[0]["PaypalEmail"].ToString();

        return email;


    }

    public static void Load_Testimonial()
    {

        clsTestimonialList testimonials = clsTestimonialList.GetCart();

        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");

        conn.Open();
        MySqlDataAdapter adp = new MySqlDataAdapter("Select FirstName, LastName, Testimonial from tblCustomer where Testimonial Is not null AND TRIM(Testimonial) <> ''", conn);
        DataSet dsCustomer = new DataSet();
        adp.Fill(dsCustomer);

        foreach (DataTable tbl in dsCustomer.Tables)
        {
            foreach (DataRow row in tbl.Rows)
            {
                clsCustomer localcust = new clsCustomer();

                localcust.FirstName = row["FirstName"].ToString();
                localcust.LastName = row["LastName"].ToString();
                localcust.Testimonial = row["Testimonial"].ToString();
                testimonials.AddItem(localcust);

            }
        }

    }
    public static void Load_Gallery(String ItemType, String Occassion)
    {
        string type = ItemType.Trim();
        string occassion = Occassion.Trim();
        clsGalleryList gallery = clsGalleryList.GetCart();

        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");

        conn.Open();

        MySqlDataAdapter adp = new MySqlDataAdapter("Select itemID,itemName,itemDesc, itemLongDesc, itemUrl, price, qtyonhand from tblItem where ItemType Like '%" + type + "' and Occassion Like '%" + occassion + "' limit 20 ", conn);
        DataSet dsProductOrder = new DataSet();
        adp.Fill(dsProductOrder);

        foreach (DataTable tbl in dsProductOrder.Tables)
        {
            foreach (DataRow row in tbl.Rows)
            {
                clsGallery imageUrl = new clsGallery();

                imageUrl.ItemId = row["ItemID"].ToString();
                imageUrl.ItemUrl = row["ItemUrl"].ToString();
                gallery.AddItem(imageUrl);

            }
        }

    }
    //Login Authentication 

    public static dsUsers VerifyUser(string Database, string UserName, string Password)
    {
        dsUsers DS;
        MySqlDataAdapter adp;

        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
        conn.Open();

        adp = new MySqlDataAdapter("Select * from tblUsers " +
        "where UserName like '" + UserName + "' " +
        "and Password like '" + Password + "'", conn);

        DS = new dsUsers();
        adp.Fill(DS.tblUsers);
        return DS;
    }

    //Manage Users 
    public static bool SaveUser(string Database, string UserName, string Password)
    {
        bool recordSaved;
        MySqlTransaction myTransaction = null;
        try
        {
            // Add your comments here
            MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
            conn.Open();

            MySqlCommand command = conn.CreateCommand();
            string strSQL;

            myTransaction = conn.BeginTransaction();
            command.Transaction = myTransaction;

            strSQL = "Insert into tblUsers " +
       "(UserName, Password) values ('" +
       UserName + "', '" + Password + "')";
            // Add your comments here
            command.CommandType = CommandType.Text;
            command.CommandText = strSQL;
            // Add your comments here
            command.ExecuteNonQuery();
            myTransaction.Commit();

            conn.Close();
            recordSaved = true;
        }
        catch (Exception ex)
        {
            myTransaction.Rollback();
            recordSaved = false;
        }
        return recordSaved;
    }


    //Check For email Subscribtion and If Email already exist! 
    public static string emailVerification(String Email)
    {
        DataSet dsCustomer = new DataSet();
        MySqlDataAdapter adp;
        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");

        conn.Open();

        adp = new MySqlDataAdapter("Select CustID from tblCustomer where EmailAddress like TRIM('" + Email + "') ", conn);

        adp.Fill(dsCustomer);
        conn.Close();

        string CustomerID = "";
        if (dsCustomer.Tables[0].Rows.Count > 0)
        {
            CustomerID = dsCustomer.Tables[0].Rows[0]["CustID"].ToString();
        }

        return CustomerID;

    }

    public static bool CreateOrder(string FirstName, string LastName, string Street1, string Street2, string City, string State, string Zip, string Phone,  string EmailAddress, clsCartItemList cart)
    {
        DataSet dsOrder = new DataSet();
        MySqlDataAdapter adp;
        cart = clsCartItemList.GetCart();
        MySqlTransaction mytransaction = null;

        try
        {

            MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
            conn.Open();
           

            mytransaction = conn.BeginTransaction();
            string custID = clsDataLayer.emailVerification(EmailAddress);

            if (custID.Length == 0)
            {
                custID = clsDataLayer.SaveCustomer(FirstName, LastName, Street1, Street2, City, State, Zip, Phone, EmailAddress, " ", "No");
            }

            MySqlCommand cmd = new MySqlCommand("Insert into tblOrder (CustId, OrderDate, OrderStatus) values (" + Int16.Parse(custID) + ", Current_date(), 'Pending')", conn);
            cmd.ExecuteNonQuery();

            adp = new MySqlDataAdapter("Select last_insert_id() ", conn);

            adp.Fill(dsOrder);


            string orderID = "";
            if (dsOrder.Tables[0].Rows.Count > 0)
            {
                orderID = dsOrder.Tables[0].Rows[0]["last_insert_id()"].ToString();
            }

            for (int i = 0; i < cart.Count; i++)
            {

                cmd = new MySqlCommand("Insert into tblOrderItem ( OrderId, OrderItemDesc) values (" + Int16.Parse(orderID) + " ,' " + cart[i].Product.ItemLongDesc + "')", conn);
                cmd.ExecuteNonQuery();
            }
            mytransaction.Commit();
            conn.Close();
            return true;
        }
        catch (Exception ex)
        {
            mytransaction.Rollback();
            return false;
        }
    }

 
    public static void SaveOrderItems(int OrderID, int CustID, string LongDesc)
    {
        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
        conn.Open();

        MySqlCommand cmd = new MySqlCommand("Insert into tblOrderItem ( OrderId, OrderItemDesc) values (" + OrderID + " ,' "  + LongDesc + "')", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
}

    public static void SaveEmail(string Email)
    {
        MySqlConnection conn = new MySqlConnection("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015");
        conn.Open();

        MySqlCommand cmd = new MySqlCommand("Insert into tblCustomer" +
            "(EmailAddress, EmailSub) values ('" + Email + "',' Yes '')", conn);
        cmd.ExecuteNonQuery();

        // Close the connection
        conn.Close();

    }
}