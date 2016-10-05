<%@ Page Title="Admin Page" Language="C#" MasterPageFile="~/Master/mpAdmin.master" AutoEventWireup="true" CodeFile="frmAdmin.aspx.cs" Inherits="Forms_frmAdmin" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="inviteBanner">
        <asp:Panel ID="pnlCardsHeader" runat="server" Height="30px" Style="margin-left: 49px; margin-top: 16px" Width="1159px" HorizontalAlign="Center">
            <h2>Administration Page</h2>
            <br />
            <br />
        </asp:Panel>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div>
        <asp:Panel ID="pnlFormBody" runat="server" Width="1100px" Style="margin-left: 49px; margin-top: 16px" HorizontalAlign="Center">
            <asp:GridView ID="grdItems" runat="server" AutoGenerateColumns="False" DataKeyNames="ItemId" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ItemId" HeaderText="ItemId" InsertVisible="False" ReadOnly="True" SortExpression="ItemId" Visible="False" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:TemplateField HeaderText="ItemLongDesc" SortExpression="ItemLongDesc">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ItemLongDesc") %>' TextMode="MultiLine" Height="100px" Width="100px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ItemLongDesc") %>' TextMode="MultiLine" Height="100px" Width="100px"></asp:TextBox>
                        </ItemTemplate>
                        <ControlStyle Width="200px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="ShippingPrice" HeaderText="ShippingPrice" SortExpression="ShippingPrice" />
                    <asp:BoundField DataField="QtyOnHand" HeaderText="QtyOnHand" SortExpression="QtyOnHand" />
                    <asp:TemplateField HeaderText="ItemType" SortExpression="ItemType">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlItemType" runat="server" SelectedValue='<%# Bind("ItemType") %>'>
                                <asp:ListItem Value="">Select ItemType</asp:ListItem>
                                <asp:ListItem>Card</asp:ListItem>
                                <asp:ListItem>Banner</asp:ListItem>
                                <asp:ListItem>Scrap Book</asp:ListItem>
                                <asp:ListItem>Party</asp:ListItem>
                                <asp:ListItem>Album</asp:ListItem>
                                 <asp:ListItem>Invitations</asp:ListItem>
                                <asp:ListItem>Cards</asp:ListItem>
                                 <asp:ListItem>Book</asp:ListItem>
                                 <asp:ListItem>Boxes</asp:ListItem>
                                <asp:ListItem>Frame</asp:ListItem>
                                 <asp:ListItem>Door Sign</asp:ListItem>
                                 <asp:ListItem>Shower Pins</asp:ListItem>
                                <asp:ListItem>Cupcake Toppers</asp:ListItem>
                                <asp:ListItem>Mason Jar Paper</asp:ListItem>
                                 <asp:ListItem>Yard Sign</asp:ListItem>
                                 <asp:ListItem>Labels</asp:ListItem>
                                <asp:ListItem>Discussed</asp:ListItem>
                                 <asp:ListItem>Clothes</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ItemType") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Occassion" SortExpression="Occassion">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlOccassion" runat="server" SelectedValue='<%# Bind("Occassion") %>'>
                                <asp:ListItem Value=" ">Select Occassion</asp:ListItem>
                                <asp:ListItem>Birthday</asp:ListItem>
                                <asp:ListItem>Wedding</asp:ListItem>
                                <asp:ListItem>Baby Shower</asp:ListItem>
                                <asp:ListItem>Bridal Shower</asp:ListItem>
                                <asp:ListItem>Graduation</asp:ListItem>
                                  <asp:ListItem>Baby</asp:ListItem>
                                <asp:ListItem>Memories</asp:ListItem>
                                <asp:ListItem>Gift</asp:ListItem>
                                <asp:ListItem>Display</asp:ListItem>
                                <asp:ListItem>Invitations</asp:ListItem>
                                <asp:ListItem>Special</asp:ListItem>
                                <asp:ListItem>Event</asp:ListItem>
                                <asp:ListItem>Customized</asp:ListItem>
                </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Occassion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ImageField DataImageUrlField="ItemUrl">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbmLadyDesignConnectionString %>" DeleteCommand="DELETE FROM tblItem WHERE ItemId = ?" InsertCommand="INSERT INTO tblItem (ItemId, ItemName, ItemDesc, ItemLongDesc, Price, ShippingPrice, ItemUrl, QtyOnHand, ItemType, Occassion, Image) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:dbmLadyDesignConnectionString.ProviderName %>" SelectCommand="SELECT * FROM tblItem" UpdateCommand="UPDATE tblItem SET ItemName = ?, ItemDesc = ?, ItemLongDesc = ?, Price = ?, ShippingPrice = ?, ItemUrl = ?, QtyOnHand = ?, ItemType = ?, Occassion = ?, Image = ? WHERE ItemId = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ItemId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ItemId" Type="Int32" />
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="ItemDesc" Type="String" />
                    <asp:Parameter Name="ItemLongDesc" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="ShippingPrice" Type="Decimal" />
                    <asp:Parameter Name="ItemUrl" Type="String" />
                    <asp:Parameter Name="QtyOnHand" Type="Decimal" />
                    <asp:Parameter Name="ItemType" Type="String" />
                    <asp:Parameter Name="Occassion" Type="String" />
                    <asp:Parameter Name="Image" Type="Object" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="ItemDesc" Type="String" />
                    <asp:Parameter Name="ItemLongDesc" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="ShippingPrice" Type="Decimal" />
                    <asp:Parameter Name="ItemUrl" Type="String" />
                    <asp:Parameter Name="QtyOnHand" Type="Decimal" />
                    <asp:Parameter Name="ItemType" Type="String" />
                    <asp:Parameter Name="Occassion" Type="String" />
                    <asp:Parameter Name="Image" Type="Object" />
                    <asp:Parameter Name="ItemId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />


            <asp:GridView ID="grdCustomer" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CustID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" style="margin-right: 43px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CustID" HeaderText="CustID" InsertVisible="False" ReadOnly="True" SortExpression="CustID" Visible="False" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="Testimonial" HeaderText="Testimonial" SortExpression="Testimonial" />
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlEmailSub" runat="server" SelectedValue='<%# Bind("EmailSub") %>'>
                                <asp:ListItem Value=" ">Select Subscription</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                                <asp:ListItem> </asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" HeaderText="Email Subscription" runat="server" Text='<%# Bind("EmailSub") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbmLadyDesignConnectionString %>" DeleteCommand="DELETE FROM  tblCustomer  WHERE  CustID  = ?" InsertCommand="INSERT INTO  tblCustomer  ( CustID ,  FirstName ,  LastName ,  StreetAddr1 ,  StreetAddr2 ,  City ,  State ,  Zip ,  Phone ,  EmailAddress ,  Testimonial ,  EmailSub ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:dbmLadyDesignConnectionString.ProviderName %>" SelectCommand="SELECT * FROM  tblCustomer " UpdateCommand="UPDATE  tblCustomer  SET  FirstName  = ?,  LastName  = ?,  StreetAddr1  = ?,  StreetAddr2  = ?,  City  = ?,  State  = ?,  Zip  = ?,  Phone  = ?,  EmailAddress  = ?,  Testimonial  = ?,  EmailSub  = ? WHERE  CustID  = ?">
                <DeleteParameters>
                    <asp:Parameter Name="CustID" Type="Int16" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustID" Type="Int16" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="StreetAddr1" Type="String" />
                    <asp:Parameter Name="StreetAddr2" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Zip" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="Testimonial" Type="String" />
                    <asp:Parameter Name="EmailSub" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="StreetAddr1" Type="String" />
                    <asp:Parameter Name="StreetAddr2" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Zip" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="Testimonial" Type="String" />
                    <asp:Parameter Name="EmailSub" Type="String" />
                    <asp:Parameter Name="CustID" Type="Int16" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbmLadyDesignConnectionString %>" DeleteCommand="DELETE FROM tblConfig WHERE ConfigID = ?" InsertCommand="INSERT INTO tblConfig (ConfigID, Season, PaypalEmail) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:dbmLadyDesignConnectionString.ProviderName %>" SelectCommand="SELECT * FROM tblConfig" UpdateCommand="UPDATE tblConfig SET Season = ?, PaypalEmail = ? WHERE ConfigID = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ConfigID" Type="Int16" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ConfigID" Type="Int16" />
                    <asp:Parameter Name="Season" Type="String" />
                    <asp:Parameter Name="PaypalEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Season" Type="String" />
                    <asp:Parameter Name="PaypalEmail" Type="String" />
                    <asp:Parameter Name="ConfigID" Type="Int16" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="grdConfig" runat="server" AutoGenerateColumns="False" DataKeyNames="ConfigID" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="ConfigID" HeaderText="ConfigID" InsertVisible="False" ReadOnly="True" SortExpression="ConfigID" Visible="False" />
                    <asp:TemplateField HeaderText="Season" SortExpression="Season">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlSeason" runat="server" SelectedValue='<%# Bind("Season") %>'>
                                <asp:ListItem Value="Spring">Select Season</asp:ListItem>
                                <asp:ListItem>Spring</asp:ListItem>
                                <asp:ListItem>Summer</asp:ListItem>
                                <asp:ListItem>Fall</asp:ListItem>
                                <asp:ListItem>Winter</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Season") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="PaypalEmail" HeaderText="Email" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </asp:Panel>
    </div>
    <div id="form3">
        <asp:Panel ID="Panel1" runat="server">
            <h2>Add new Product</h2>
            <p>
                &nbsp;
            </p>
            <table class="auto-style1">
                <tr>
                    <td style="height: 26px">
                        <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
                    </td>
                    <td style="height: 26px">
                        <asp:TextBox ID="txtItemName" runat="server"></asp:TextBox></td>
                    <td style="height: 26px">
                                           </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblItemType" runat="server" Text="Item Type"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlInputType" runat="server">
                                <asp:ListItem Value="">Select ItemType</asp:ListItem>
                                <asp:ListItem>Card</asp:ListItem>
                                <asp:ListItem>Banner</asp:ListItem>
                                <asp:ListItem>Scrap Book</asp:ListItem>
                                <asp:ListItem>Party</asp:ListItem>
                                <asp:ListItem>Album</asp:ListItem>
                                 <asp:ListItem>Invitations</asp:ListItem>
                                <asp:ListItem>Cards</asp:ListItem>
                                 <asp:ListItem>Book</asp:ListItem>
                                 <asp:ListItem>Boxes</asp:ListItem>
                                <asp:ListItem>Frame</asp:ListItem>
                                 <asp:ListItem>Door Sign</asp:ListItem>
                                 <asp:ListItem>Shower Pins</asp:ListItem>
                                <asp:ListItem>Cupcake Toppers</asp:ListItem>
                                <asp:ListItem>Mason Jar Paper</asp:ListItem>
                                 <asp:ListItem>Yard Sign</asp:ListItem>
                                 <asp:ListItem>Labels</asp:ListItem>
                                <asp:ListItem>Discussed</asp:ListItem>
                            <asp:ListItem>Clothes</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Field must be numeric" Type="Double" ControlToValidate="txtPrice" MaximumValue="200" MinimumValue="0"></asp:RangeValidator>
                    </td>
                </tr>
                               <tr>
                    <td>
                        <asp:Label ID="lblShipPrice" runat="server" Text="Shipping Price"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtShipPrice" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Field must be numeric" Type="Double" ControlToValidate="txtShipPrice" MaximumValue="200" MinimumValue="0"></asp:RangeValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Long Description"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLongDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblQtyOnHand" runat="server" Text="Quantity On Hand"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtQtyOnHand" runat="server" Style="margin-bottom: 2px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Field Must be Numeric" Type="Integer" ControlToValidate="txtQtyOnHand" MaximumValue="200" MinimumValue="0"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblOccassion" runat="server" Text="Occassion"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlInputOccassion" runat="server">
                                <asp:ListItem Value=" ">Select Occassion</asp:ListItem>
                                <asp:ListItem>Birthday</asp:ListItem>
                                <asp:ListItem>Wedding</asp:ListItem>
                                <asp:ListItem>Baby Shower</asp:ListItem>
                                <asp:ListItem>Bridal Shower</asp:ListItem>
                                <asp:ListItem>Graduation</asp:ListItem>
                                  <asp:ListItem>Baby</asp:ListItem>
                                <asp:ListItem>Memories</asp:ListItem>
                                <asp:ListItem>Gift</asp:ListItem>
                                <asp:ListItem>Display</asp:ListItem>
                                <asp:ListItem>Invitations</asp:ListItem>
                                <asp:ListItem>Special</asp:ListItem>
                                <asp:ListItem>Event</asp:ListItem>
                                <asp:ListItem>Customized</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblImage" runat="server" Text="Item Image"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                            </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAddProduct" runat="server" OnClick="btnAddProduct_Click" Text="Add new Product" BackColor="#99CCFF" />
                    </td>
                    <td>
                        <asp:Button ID="btnClearItem" runat="server" OnClick="btnClearItem_Click" Text="Clear" BackColor="#99CCFF" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="Panel3" runat="server">
            <h2>Add new Customer</h2>
            <p>
                &nbsp;
            </p>
            <table class="auto-style1">
                <tr>
                    <td style="height: 26px">
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td style="height: 26px">
                        <asp:TextBox ID="txtFirstName" runat="server" Width="125px"></asp:TextBox></td>
                    <td style="height: 26px">
                                          </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" Width="125px"></asp:TextBox>
                    </td>
                    <td>
                                            </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblStreet1" runat="server" Text="Street Address 1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtStreet1" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblStreet2" runat="server" Text="Street Address 2"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtStreet2" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCustState" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblZip" runat="server" Text="Zip Code"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPhone" runat="server" Text="Phone Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 26px">
                        <asp:Label ID="Label6" runat="server" Text="Email Address"></asp:Label>
                    </td>
                    <td style="height: 26px">
                        <asp:TextBox ID="txtEmailAddress" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td style="height: 26px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ControlToValidate="txtEmailAddress"></asp:RegularExpressionValidator>
                          </td>
                </tr>
                <tr>
                    <td style="height: 26px">
                        <asp:Label ID="Label8" runat="server" Text="Email Subscription"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td style="height: 26px">                        
                        <asp:DropDownList ID="ddlEmailSub" runat="server">
                            <asp:ListItem Value=" ">Select Email Subscription</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem> </asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="height: 26px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Testimonial"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTestimony" runat="server" TextMode="MultiLine" Width="200px" Height="100px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblErrorMessage2" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAddClient" runat="server" OnClick="btnAddCustomer_Click" Text="Add new Customer" BackColor="#99CCFF" />
                    </td>
                    <td>
                        <asp:Button ID="btnClearClient" runat="server" OnClick="btnClearClient_Click" Text="Clear" BackColor="#99CCFF" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
        </asp:Panel>

    </div>
</asp:Content>

