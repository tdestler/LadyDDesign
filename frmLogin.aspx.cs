using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Net;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Forms_frmLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        dsUsers dsUsers;
        dsUsers = clsDataLayer.VerifyUser(Server.MapPath("server=dbmLadyDesign.db.11512815.hostedresource.com;user id=dbmLadyDesign;database=dbmLadyDesign;password=TeamB@2015)"),
            Login1.UserName, Login1.Password);
        if (dsUsers.tblUsers.Count < 1)
        {
            e.Authenticated = false;
            return;
        }
        else 
        {
            e.Authenticated = true;
        }
    }
}