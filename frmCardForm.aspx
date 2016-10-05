<%@ Page Title="" Language="C#" MasterPageFile="~/Master/mpOrderForms.master" AutoEventWireup="true" CodeFile="frmCardForm.aspx.cs" Inherits="Forms_frmCardForm" %>





<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <asp:Panel ID="pnlFormBody" runat="server" Height="373px" HorizontalAlign="Left" style="margin-left: 241px; margin-top: 68px" Width="811px">

        &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Font-Italic="True" Font-Size="X-Large" Font-Underline="True" Text="Cards"></asp:Label>
&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="First Name: "></asp:Label>
            <asp:TextBox ID="txtCardsFName" runat="server" style="margin-left: 24px" Width="90px"></asp:TextBox>
        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCardsFName" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Last Name: "></asp:Label>
            <asp:TextBox ID="txtCardsLName" runat="server" Width="89px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCardsLName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Phone Number: "></asp:Label>
            <asp:TextBox ID="txtCardsPhone1" runat="server" MaxLength="3" Width="37px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCardsPhone1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCardsPhone2" runat="server" MaxLength="3" width="37px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCardsPhone2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtCardsPhone3" runat="server" MaxLength="4" Width="59px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCardsPhone3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Street Address: "></asp:Label>
            <asp:TextBox ID="txtCardsStreet1" runat="server" Width="125px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCardsStreet1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label5" runat="server" Text="Apt # "></asp:Label>
            &nbsp;<asp:TextBox ID="txtCardsApt" runat="server" Width="24px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="City: "></asp:Label>
            <asp:TextBox ID="txtCardsCity" runat="server" Width="85px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCardsCity" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
&nbsp;&nbsp;<asp:DropDownList ID="ddlCardsState" runat="server">
        </asp:DropDownList>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlCardsState" ErrorMessage="*" Font-Italic="True" Font-Size="Medium" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Zip Code: "></asp:Label>
            <asp:TextBox ID="txtCardsZip" runat="server" MaxLength="5" style="margin-left: 28px" Width="90px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCardsZip" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Chose a design:  "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlCardsDesign" runat="server" Width="119px">
            </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlCardsDesign" ErrorMessage="*" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Text="Share your design ideas here!"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtCardsSuggestions" runat="server" Height="16px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label10" runat="server" Text="When would you like to recieve your order?"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCardsDeliveryDate" runat="server" Width="99px"></asp:TextBox>
            &nbsp;&nbsp;<asp:ImageButton ID="imgbtnRecieveDate" runat="server" Height="25px" ImageUrl="~/Imgs/calendar_week.png" Width="25px" />
        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupPosition="Right" PopupButtonID="imgbtnRecieveDate" TargetControlID="txtCardsDeliveryDate" Format="MM/dd/yyyy" />
            &nbsp;&nbsp;<br />
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Text="Select date you will be sending save the dates "></asp:Label>
            &nbsp;<asp:TextBox ID="txtSendDate" runat="server" Width="101px"></asp:TextBox>
&nbsp;
            <asp:ImageButton ID="imgbtnSendDate" runat="server" Height="25px" ImageUrl="~/Imgs/calendar_week.png" Width="25px" />
        <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" PopupButtonID="imgbtnSendDate" TargetControlID="txtSendDate" PopupPosition="Right" Format="MM/dd/yyyy" />
            <br />
        <br />
&nbsp;&nbsp;<br /><asp:Button ID="btnSubmitCard" runat="server" style="margin-left: 293px" Text="Add To Cart" Width="132px" OnClick="btnSubmitCard_Click" />
       &nbsp;&nbsp;&nbsp <asp:Button ID="btnViewCart" runat="server"  Text="Go to Cart" Width="132px" OnClick="btnViewCart_Click" />
                 <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;

    </asp:Panel>


    

</asp:Content>



