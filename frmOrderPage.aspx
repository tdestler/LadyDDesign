<%@ Page Title="" Language="C#" MasterPageFile="../Master/mpShoppingCartOrg.master" AutoEventWireup="true" CodeFile="frmOrderPage.aspx.cs" Inherits="Forms_frmOrderPage" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>


<%--Content Panel 1**************Empty    ***************************************************************** --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<%--Control Panel 2************************Button Panel ****************************************************--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

         <div  >
              <asp:Panel ID="Panel1" runat="server" style="margin-top: 16px; margin-left: 1px;" HorizontalAlign="Center" Width="1263px" Height="20px">

             <h2 style="align-content:center"> 
                <asp:Label ID="Label2" runat="server" Text="Lady D. Designs, LLC. Lasting Memories! - Order Page" style="text-align: center"></asp:Label>
            <br />
             </h2>
             <img alt="image1" class="aboutUs_Style1" src="../Imgs/CardPicture.jpg"" style="height: 180px; width: 200px" />
                  </asp:Panel>
               </div>
             <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

        <asp:Panel ID="pnlImageShow" runat="server" BorderColor="Black" BorderStyle="Double" BorderWidth="14px" Height="331px" HorizontalAlign="Left" Style="margin-left: 10px; margin-top: 229px" Width="250px" BackColor="White">
            <asp:Image ID="imgGallery" runat="server" Height="329px" Width="244px" />
        </asp:Panel>
 </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">     
       <asp:Panel ID="pnlItemDesc" runat="server" BorderColor="Black" BorderStyle="Double" BorderWidth="14px" Height="331px" HorizontalAlign="Left" Style="margin-left: 10px; margin-top: 229px" Width="250px" BackColor="White">
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Item Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDataName" runat="server" Width="50px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Item Description:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbltemDesc" runat="server" Height="100px" Text=" " Width="100px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<br />

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Quantity Available"></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDataPrice" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblQtyOnHand" runat="server" BackColor="#99FFCC"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
               </table>
            </asp:Panel> 
    </asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server"> 
            <asp:Panel ID="Panel2"  runat="server" BorderColor="Black" BorderStyle="Double" BorderWidth="14px" Height="40px" HorizontalAlign="Center" Style="margin-left: 300px; margin-top: 100px" Width="460px" BackColor="White">
 
            <table class="auto-style1">
                    <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Order Quantity"></asp:Label>
                        </td>
                        <td>
                        <asp:TextBox ID="txtOrderQty" runat="server" Width="128px"></asp:TextBox>
                        </td>

                        </tr>
                        <tr>
                    <td>
                        <asp:Button ID="btnAddToCart" runat="server" BackColor="DarkOrange" BorderColor="Brown" BorderStyle="Double" BorderWidth="3px" OnClick="btnAddToCart_Click" Text="Add to Cart" />
                        <ajaxToolkit:ConfirmButtonExtender ID="btnAddToCart_ConfirmButtonExtender" runat="server" BehaviorID="btnAddToCart_ConfirmButtonExtender" ConfirmText="Add This Item to Cart?" TargetControlID="btnAddToCart" />
                    </td>
                    <td>
                        <asp:Button ID="btnContinueShop" runat="server" BackColor="DarkOrange" BorderColor="Brown" BorderStyle="Double" Text="Continue Shopping" OnClick="btnContinueShop_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnViewCart" runat="server" BackColor="DarkOrange" BorderColor="Brown" BorderStyle="Double" Text="Go to Cart" OnClick="btnViewCart_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </asp:Panel>
 
</asp:Content>

