
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<%--***************************************************************************
    *******************************************12/04/15 John Morford --%>



<%@ Page Title="" Language="C#" MasterPageFile="~/Master/OrderForms.master" AutoEventWireup="true" CodeFile="frmEdibles.aspx.cs" Inherits="Forms_frmEdibles" %>

<%--Control Panel 2************************Button Panel ****************************************************--%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div  >
              <asp:Panel ID="Panel1" runat="server" style="margin-top: 16px; margin-left: 1px;" HorizontalAlign="Center" Width="1263px" Height="200px">

             <h2 style="align-content:center"> 
                <asp:Label ID="Label11" runat="server" Text="Lady D. Designs, LLC. Lasting Memories! - Edibles" style="text-align: center"></asp:Label>
            <br />
             </h2>
             <img alt="image1" class="aboutUs_Style1" src="../Imgs/CardPicture.jpg"" style="height: 180px; width: 200px" />
                  </asp:Panel>
               </div>

</asp:Content>



<%--Content Panel 3 form body   ********************Form Body*********************************************************--%>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <asp:Panel ID="pnlFormBody" runat="server" Height="341px" HorizontalAlign="Left" style="margin-left: 253px; margin-top: 33px" Width="811px">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="First Name: "></asp:Label>
        &nbsp;<asp:TextBox ID="txtEdibleFName" runat="server" height="22px" style="margin-right: 0px" Width="90px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtEdibleLName" runat="server" width="90px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Phone Number:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtEdiblePhone1" runat="server" height="22px" Width="40px" MaxLength="3"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="txtEdiblePhone2" runat="server" height="22px" width="41px" MaxLength="3"></asp:TextBox>
        &nbsp;<asp:TextBox ID="txtEdiblePhone3" runat="server" height="22px" Width="99px" MaxLength="4"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Street Address: "></asp:Label>
        <asp:TextBox ID="txtEdibleStreet1" runat="server" Width="125px"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Label5" runat="server" Text="Apt # "></asp:Label>
        &nbsp;<asp:TextBox ID="txtEdibleApt" runat="server" Width="34px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="City: "></asp:Label>
        <asp:TextBox ID="txtEdibleCity" runat="server" Width="85px"></asp:TextBox>
        &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="ddlEdibleState" runat="server">
        </asp:DropDownList>
        &nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Zip Code: "></asp:Label>
&nbsp;<asp:TextBox ID="txtEdibleZip" runat="server" MaxLength="5" style="margin-left: 28px" Width="90px"></asp:TextBox>
        &nbsp;&nbsp;
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
        <ajaxToolkit:CalendarExtender ID="txtEdiblesDeliveryDate_CalendarExtender" runat="server" TargetControlID="txtEdiblesDeliveryDate" />
        &nbsp;
        <asp:ImageButton ID="imgbtnOrderCalendar" runat="server" Height="25px" ImageUrl="~/Imgs/calendar_week.png" Width="25px" />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmitCard" runat="server" style="margin-left: 291px" Text="Add To Cart" Width="170px" OnClick="btnSubmitCard_Click" />
               &nbsp;&nbsp;&nbsp <asp:Button ID="btnViewCart" runat="server"  Text="Go to Cart" Width="132px" OnClick="btnViewCart_Click" />
                 
        <asp:ScriptManager ID="ScriptManagerEdible1" runat="server">
        </asp:ScriptManager> <ajaxToolkit:CalendarExtender ID="CalendarExtenderEdible1" runat="server" PopupPosition="Right" TargetControlID="txtEdiblesDeliveryDate" TodaysDateFormat="MM/dd/yyyy" PopupButtonID="imgbtnOrderCalendar" />

       


    </asp:Panel>

</asp:Content>

<%--Content Panel 1--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

