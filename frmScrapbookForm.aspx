<%@ Page Title="" Language="C#" MasterPageFile="~/Master/mpOrderForms.master" AutoEventWireup="true" CodeFile="frmScrapbookForm.aspx.cs" Inherits="Forms_frmScrapbookForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="pnlFormBody" runat="server" Height="360px" HorizontalAlign="Left" style="margin-left: 241px; margin-top: 75px" Width="811px">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <br />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label11" runat="server" Font-Italic="True" Font-Size="X-Large" Font-Underline="True" Text="Scrapbooks"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="First Name: " ></asp:Label>
            <asp:TextBox ID="txtInviteFName" runat="server" style="margin-left: 24px" Width="90px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInviteFName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Last Name: "></asp:Label>
        <asp:TextBox ID="txtInviteLName" runat="server" Width="89px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtInviteLName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Phone Number: "></asp:Label>
            <asp:TextBox ID="txtInvitePhone1" runat="server" MaxLength="3" Width="37px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtInvitePhone1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtInvitePhone2" runat="server" MaxLength="3" width="37px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtInvitePhone2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtInvitePhone3" runat="server" MaxLength="4" Width="59px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtInvitePhone3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Street Address: "></asp:Label>
            <asp:TextBox ID="txtInviteStreet1" runat="server" Width="125px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtInviteStreet1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label5" runat="server" Text="Apt # "></asp:Label>
            &nbsp;<asp:TextBox ID="txtInviteApt" runat="server" Width="24px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="City: "></asp:Label>
            <asp:TextBox ID="txtInviteCity" runat="server" Width="85px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtInviteCity" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
&nbsp;
            <asp:DropDownList ID="ddlScrapState" runat="server">
            </asp:DropDownList>
            &nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Zip Code: "></asp:Label>
            <asp:TextBox ID="txtInviteZip" runat="server" MaxLength="5" style="margin-left: 28px" Width="90px"></asp:TextBox>
            &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtInviteZip" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Event Theme: "></asp:Label>
            <asp:TextBox ID="txtInviteTheme" runat="server" Width="285px" style="margin-left: 4px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="When would you like to recieve your order?"></asp:Label>
        &nbsp;<asp:TextBox ID="txtEdiblesDeliveryDate" runat="server" TargetControlID="txtEdiblesDeliveryDate"></asp:TextBox>
        &nbsp;
        <asp:ImageButton ID="imgbtnScrapCalendar" runat="server" Height="25px" ImageUrl="~/Imgs/calendar_week.png" Width="25px" />
        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupPosition="Right" Format="MM/dd/yyyy" PopupButtonID="imgbtnScrapCalendar" TargetControlID="txtEdiblesDeliveryDate" />
       
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" style="margin-left: 308px" Text="Add To Cart" Width="109px" OnClick="btnSubmitCard_Click" />
         &nbsp;&nbsp;&nbsp <asp:Button ID="btnViewCart" runat="server"  Text="Go to Cart" Width="132px" OnClick="btnViewCart_Click" />
                 <br />   </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

