<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmProductsDisplayTest.aspx.cs" Inherits="Forms_frmProductsDisplayTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Type</title>

    <link id="selectCSS" runat="server" href = "../CSS/AutumnForm.css" rel="stylesheet" type="text/css" /> 
</head>

<body style="width: 1300px; margin-left: 14px; height: 1538px; margin-top: 0px; ">
    <form id="form2" runat="server" style="height: 1530px;">

        <asp:Panel ID="pnlHeader" runat="server" Height="84px" style="margin-left: 49px; margin-top: 60px" Width="1159px" HorizontalAlign="Center">
            <h1 style="margin-top: 0px">Lady D Designs, LLC</h1>
        </asp:Panel>
   <asp:Panel ID="pnlNavigation" runat="server" style="margin-top: 41px; margin-left: 97px;" HorizontalAlign="Center" Width="1263px" Height="40px">
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" StaticSubMenuIndent="16px">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Forms/frmHomePage.aspx" Text="Home" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="About Us" Value="About Us">
                            <asp:MenuItem Text="Admin" Value="Admin" NavigateUrl="~/Forms/frmAdmin.aspx"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Forms/frmAboutUs.aspx" Text="About Us" Value="About Us"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Product/Gallery" Value="Product/Gallery">
                            <asp:MenuItem NavigateUrl="~/Forms/frmProductCards.aspx" Text="Cards" Value="Cards"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Forms/frmProductScrapbooks.aspx" Text="Scrap Books" Value="Scrap Books"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Forms/frmEdiblesOrder.aspx" Text="Edibles" Value="Edibles"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Forms/frmInviteForm.aspx" Text="Invitations" Value="Invitations"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Forms/frmEventsBooking.aspx" Text="Events" Value="Events"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Forms/frmContactUs.aspx" Text="Contact Us" Value="Contact Us"></asp:MenuItem>
                    </Items>
                    <LevelMenuItemStyles>
                        <asp:MenuItemStyle CssClass ="main_menu"/>
                        <asp:MenuItemStyle CssClass="level_menu" />
                        <asp:MenuItemStyle CssClass="selected" />
                    </LevelMenuItemStyles>
                    <StaticHoverStyle CssClass="hover" />
                </asp:Menu>      
            </asp:Panel>

        <asp:Panel ID="pnlScrapDisplay" runat="server" Height="856px" style="margin-left: 55px; margin-top: 34px;" Width="1175px">
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" Text="Take a look at the bottom of our Scrapbook Product Page to see some videos describing some of My Products!!"></asp:Label>

    </asp:Panel>

         <asp:Panel ID="pnlScrapVids1" runat="server" Height="276px" style="margin-left: 10px; margin-top: 37px" Width="1238px">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Scrapbook Sizes" style="margin-left: 20px;" Font-Underline="True"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Underline="True" Text="Brag Books"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Underline="True" Text="Scrapbook Tins"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Underline="True" Text="Explosion Boxes"></asp:Label>
        </div>

        <div>
        <iframe align="center" src="https://www.youtube.com/embed/EC4NZFb7bqE" frameborder="0" allowfullscreen style="width: 278px; 
           height: 178px; margin-top: 26px; margin-left: 26px;">   </iframe>
        &nbsp;
       

    
        <iframe align="center" src="https://www.youtube.com/embed/EC4NZFb7bqE" frameborder="0" allowfullscreen style="width: 278px; 
           height: 178px; margin-top: 26px; margin-left: 9px;">   </iframe>
        

        &nbsp;
        <iframe id="I1" align="center" allowfullscreen="" frameborder="0" name="I1" src="https://www.youtube.com/embed/EC4NZFb7bqE" style="width: 278px; 
           height: 178px; margin-top: 26px; margin-left: 12px;"></iframe>
        <iframe id="I2" align="center" allowfullscreen="" frameborder="0" name="I2" src="https://www.youtube.com/embed/EC4NZFb7bqE" style="width: 278px; 
           height: 178px; margin-top: 26px; margin-left: 23px;"></iframe>
        </div>

     </asp:Panel>
    </form>
</body>
</html>
