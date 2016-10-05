

<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OrderForms.master" AutoEventWireup="true" CodeFile="frmEventsForm.aspx.cs" Inherits="Forms_frmEventsForm" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>


<%--Content Panel 1**************Empty    ***************************************************************** --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<%--Control Panel 2************************Button Panel ****************************************************--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                 <h2 style="align-content:center"> 
                <asp:Label ID="Label13" runat="server" Text="Lady D. Designs, LLC. Lasting Memories!" style="text-align: center"></asp:Label>
             </h2>
</asp:Content>

<%--Content Panel 3 form body   ********************Form Body*********************************************************--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="pnlFormBody" runat="server" Height="341px" HorizontalAlign="Left" style="margin-left: 253px; margin-top: 33px" Width="811px">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Text="First Name: "></asp:Label>
        &nbsp;<asp:TextBox ID="txtEventsFName" runat="server" height="22px" style="margin-right: 0px" Width="90px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtEventsLName" runat="server" width="90px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Phone Number:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtEventsPhone1" runat="server" height="22px" MaxLength="3" Width="40px"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="txtEventsPhone2" runat="server" height="22px" MaxLength="3" width="41px"></asp:TextBox>
        &nbsp;<asp:TextBox ID="txtEventsPhone3" runat="server" height="22px" MaxLength="4" Width="99px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Street Address: "></asp:Label>
        <asp:TextBox ID="txtEventStreet1" runat="server" Width="125px"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Label5" runat="server" Text="Apt # "></asp:Label>
        &nbsp;<asp:TextBox ID="txtEventApt" runat="server" Width="34px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="City: "></asp:Label>
        <asp:TextBox ID="txtEventCity" runat="server" Width="85px"></asp:TextBox>
        &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="ddlEventState" runat="server">
        </asp:DropDownList>
        &nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Zip Code: "></asp:Label>
        &nbsp;<asp:TextBox ID="txtEventZip" runat="server" MaxLength="5" style="margin-left: 28px" Width="90px"></asp:TextBox>
        &nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Event Theme: "></asp:Label>
        <asp:TextBox ID="txtEventTheme" runat="server" style="margin-left: 4px" Width="285px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="When is the date of the event?"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEventDate" runat="server" Width="102px"></asp:TextBox>
&nbsp;
        <asp:ImageButton ID="imgbtnEventCalendar" runat="server" Height="25px" ImageUrl="~/Imgs/calendar_week.png" Width="25px" />
        <asp:ScriptManager ID="ScriptManagerEvents1" runat="server"></asp:ScriptManager>
        <ajaxToolkit:CalendarExtender ID="CalendarExtenderEvents1" runat="server" PopupPosition="Right" TodaysDateFormat="dd/MM/yyyy" PopupButtonID="imgbtnEventCalendar" TargetControlID="txtEventDate" />
        &nbsp;&nbsp;
        

        
        <asp:Label ID="Label11" runat="server" Text="Do you have a venue planned? "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes" GroupName="Events" />
        &nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="No" GroupName="Events" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Please Select the Services youo would Like Lady D to Provide:"></asp:Label>
        &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBoxList ID="chlistEventServices" runat="server" style="margin-left: 84px" RepeatDirection="Horizontal">
        </asp:CheckBoxList>
        <br />
        

        
    </asp:Panel>
</asp:Content>

