<%@ Page Title="" Language="C#" MasterPageFile="~/Master/mpShoppingCart.master" AutoEventWireup="true" CodeFile="frmShoppingCart.aspx.cs" Inherits="Forms_frmShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlShopCart" runat="server" Height="272px" style="margin-left: 317px; margin-top: 55px" Width="650px">

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <br /><br /><br />
         <asp:Label ID="checkoutLabel" runat="server" Text="Label">Complete Your Order Here</asp:Label>

    </asp:Panel>
</asp:Content>

