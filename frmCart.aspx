<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmCart.aspx.cs" Inherits="frmCart" MasterPageFile="~/Master/mpShoppingCartOrg.master" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>



<%--Content Panel 1**************Empty    ***************************************************************** --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 447px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style11 {
            width: 345px;
        }
        .auto-style12 {
            width: 447px;
        }
    </style>
</asp:Content>

<%--Content Panel 2**************Button Panel    ***************************************************************** --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<%--Control Panel 3************************Check Out****************************************************--%>
    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        
    <asp:Panel ID="Panel1" runat="server"  Height="500px" HorizontalAlign="Left" Style="margin-left: 10px; margin-top: 10px" Width="250px" >
<h2 style="font-style: italic">
    Review your order
</h2>
        <div >
            <table class="auto-style11">
                <tr>
                    <td class="auto-style6" colspan="1">
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style12"><asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblStreet1" runat="server" Text="Street Address 1:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtStreet1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                       <asp:Label ID="lblStreet2" runat="server" Text="Apt#:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtStreet2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:DropDownList ID="ddlInviteState" runat="server">
            </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblZip" runat="server" Text="Zip Code: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtZip" runat="server" MaxLength="5" style="margin-left: 28px" Width="90px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblEmail" runat="server" Text="Email Address:"></asp:Label>
                    </td>
                    <td>&nbsp;
                        <asp:TextBox ID="txtEmail" runat="server"  style="margin-left: 28px" Width="190px"></asp:TextBox>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblPhone" runat="server" Text="Phone Number:"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="txtPhone" runat="server"  style="margin-left: 28px" Width="90px"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
</asp:Panel>

</asp:Content>
<%--Content Panel 2**************Button Panel    ***************************************************************** --%>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:Panel ID="pnlFormBody" runat="server" Height="500px" HorizontalAlign="Left" Style="margin-left: 1px; margin-top: 10px" Width="500px" ScrollBars="Vertical">

        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" Width="519px">            

            <HeaderTemplate>
                <tr>

                    <td>

                        <asp:Label ID="lblHeadItemName" runat="server" Text='Item Name' Width="50"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblHeadItem" runat="server" Text='Item' Width="50"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblHeadPrice" runat="server" Text='Price' Width="50"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblHeadShipppingPrice" runat="server" Text='Shipping Price' Width="50"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblHeadItemCost" runat="server" Text='Total Price' Width="50"></asp:Label>

                    </td>
                    <td>
                        <asp:Label ID="lblHeadQuantity" runat="server" Text='Quantity' Width="50"></asp:Label>
                        <td>
                            <asp:Label ID="lblHeadDeposit" runat="server" Text='Depost Required' Width="50"></asp:Label>

                        </td>
                    
                    <td></td>

                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>

                    <td>
                        <asp:Label ID="lblItemName" runat="server" Text='<%# Bind("ItemName") %>' Width="50"></asp:Label>
                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ItemUrl") %>' AlternateText='<%# Eval("ItemID") %>' Height="50px" Width="50px" />
                    </td>
                    <td>
                        <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price","{0:C}") %>' Width="50"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblShipPrice" runat="server" Text='<%# Eval("ShippingPrice","{0:C}") %>' Width="50"></asp:Label>
                    </td>
                    <td>

                            <asp:Label ID="lblTotalCost" runat="server" Text='<%# Eval("ItemCost","{0:C}") %>' Width="50"></asp:Label>

                    </td>

                    <td>
                        <asp:Label ID="lblQuantity" runat="server" Text='<%# Bind("Quantity") %>' Width="50"></asp:Label>
                    </td>
                    
                   <td>
                       <td>
                           <asp:Label ID="lblDeposit" runat="server" Text='<%# Eval("Deposit","{0:C2}") %>' Width="50"></asp:Label>
                       </td>
                       <td>
                           <asp:Button ID="btn_edit" runat="server" CommandName="cmd_Edit" Text="Update Qty" />
                       </td>
                    
                   <td>

                       <asp:Button ID="btn_remove" runat="server" Text="Remove Item" CommandName="Delete_Command" />
                   </td>
                </tr>

           
           </ItemTemplate>
            <EditItemTemplate>
                <tr>
<%--                    <asp:Label ID="Label1" runat="server" Text="Product Name:"> </asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lblEditName" runat="server" Text='<%# Bind("ItemName") %>'></asp:Label>--%>

                    <td>
                       <asp:Label ID="lblItemName" runat="server" Text='<%# Bind("ItemName") %>' Width="50"></asp:Label>
                    </td>
                    <td>
                       <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ItemUrl") %>' AlternateText='<%# Eval("ItemID") %>' Height="25px" Width="25px" />
                    </td>
                    <td>
                        <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price","{0:C}") %>' Width="50"></asp:Label>
                    </td>
                    <td>
                       
                    </td>
                    <td>

                    </td>

                    <td>
                         <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    </td>

                    <td>


                        <asp:Button ID="btn_update" runat="server" Text='Update Quantity' CommandName="Update_Command" CommandArgument='<%# Eval("ItemID") %>'></asp:Button>
                    </td>
                    <td>
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel Editing" CommandName="Cancel_Command" />
                    </td>
                </tr>
            </EditItemTemplate>
        </asp:DataList>
        <asp:Button ID="btnContinueShop" runat="server" Text="Continue Shopping" OnClick="btnContinueShop_Click" />
         &nbsp; &nbsp;&nbsp; &nbsp;
        <asp:Button ID="btnCheckOut" runat="server" CssClass="button" OnClick="btnCheckOut_Click" Text="Check Out Using Paypal" />

    </asp:Panel>
</asp:Content>