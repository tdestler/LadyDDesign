<%@ Page Title="" Language="C#" MasterPageFile="~/Master/mpOrderForms.master" AutoEventWireup="true" CodeFile="frmEdiblesOrder.aspx.cs" Inherits="Forms_frmEdiblesOrder" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <asp:Panel ID="pnlFormBody" runat="server" Height="341px" HorizontalAlign="Left" style="margin-left: 253px; margin-top: 62px" Width="811px">
         <asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>
        <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
         <asp:Label ID="Label11" runat="server" Font-Italic="True" Font-Size="X-Large" Font-Underline="True" Text="Sweets"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="First Name: "></asp:Label>
        &nbsp;<asp:TextBox ID="txtEdibleFName" runat="server" height="22px" style="margin-right: 0px" Width="90px"></asp:TextBox>
         &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEdibleFName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
         &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtEdibleLName" runat="server" width="90px"></asp:TextBox>
         &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEdibleLName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
         &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Phone Number:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtEdiblePhone1" runat="server" height="22px" Width="40px" MaxLength="3"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEdiblePhone1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtEdiblePhone2" runat="server" height="22px" width="41px" MaxLength="3"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEdiblePhone2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:TextBox ID="txtEdiblePhone3" runat="server" height="22px" Width="99px" MaxLength="4"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEdiblePhone3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Street Address: "></asp:Label>
        <asp:TextBox ID="txtEdibleStreet1" runat="server" Width="125px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEdibleStreet1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label5" runat="server" Text="Apt # "></asp:Label>
        &nbsp;<asp:TextBox ID="txtEdibleApt" runat="server" Width="34px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="City: "></asp:Label>
        <asp:TextBox ID="txtEdibleCity" runat="server" Width="85px"></asp:TextBox>
         &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEdibleCity" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
         &nbsp;<asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="ddlEdibleState" runat="server">
        </asp:DropDownList>
        &nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Zip Code: "></asp:Label>
&nbsp;<asp:TextBox ID="txtEdibleZip" runat="server" MaxLength="5" style="margin-left: 28px" Width="90px"></asp:TextBox>
         &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEdibleZip" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
         <br />
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Event Theme: "></asp:Label>
        <asp:TextBox ID="txtEdibleTheme" runat="server" style="margin-left: 4px" Width="285px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="When would you like to recieve your order by: "></asp:Label>
        <asp:TextBox ID="txtEdiblesDeliveryDate" runat="server" Width="102px"></asp:TextBox>
       
        &nbsp;
        <asp:ImageButton ID="imgbtnOrderCalendar" runat="server" Height="25px" ImageUrl="~/Imgs/calendar_week.png" Width="25px" PopupButtonID="imgbtnOrderCalendar" />
         <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtEdiblesDeliveryDate" PopupButtonID="imgbtnOrderCalendar" PopupPosition="Right" Format="MM/dd/yyyy" />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
  <asp:Button ID="btnSubmitCard" runat="server" style="margin-left: 291px" Text="Add To Cart" Width="170px" OnClick="btnSubmitCard_Click" />
               &nbsp;&nbsp;&nbsp <asp:Button ID="btnViewCart" runat="server"  Text="Go to Cart" Width="132px" OnClick="btnViewCart_Click" />
        

       


    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

