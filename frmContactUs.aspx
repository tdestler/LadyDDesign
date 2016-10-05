<%@ Page Title="" Language="C#" MasterPageFile="~/Master/mpContact_AboutUs.master" AutoEventWireup="true" CodeFile="frmContactUs.aspx.cs" Inherits="Forms_frmContactUs" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%--<asp:Panel ID="contactUsLeft" runat="server" Height="16px" style="margin-top: 0px; margin-left: 376px;" Width="562px">
        &nbsp;&nbsp;&nbsp;

    </asp:Panel>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <asp:Panel ID="contactUsRight" runat="server" Height="409px" style="margin-left: 271px; margin-top: 0px" Width="602px">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Contact Us"></asp:Label>
          <br />
          <br />
        <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
          &nbsp;<asp:TextBox ID="txtContactFName" runat="server" style="margin-left: 41px" Width="114px"></asp:TextBox>

          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
          <asp:RequiredFieldValidator ID="rfvContactFName" runat="server" ControlToValidate="txtContactFName" ForeColor="Red" SetFocusOnError="True" ErrorMessage="*" Font-Italic="True" Font-Size="Small">*First Name Required</asp:RequiredFieldValidator>

           <br />&nbsp;<br /><asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtContactLName" runat="server" style="margin-left: 39px" width="114px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtContactLName" ErrorMessage="RequiredFieldValidator" Font-Italic="True" Font-Size="Small" ForeColor="Red" SetFocusOnError="True">*Last Name Required</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Subject"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtContactSubject" runat="server" style="margin-left: 47px" width="114px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContactSubject" ErrorMessage="RequiredFieldValidator" Font-Italic="True" Font-Size="Small" ForeColor="Red" SetFocusOnError="True">*Subject Required</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="E-Mail Address"></asp:Label>
        &nbsp;<asp:TextBox ID="txtContactMail" runat="server" style="margin-left: 11px" width="114px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContactMail" ErrorMessage="RequiredFieldValidator" Font-Italic="True" Font-Size="Small" ForeColor="Red" SetFocusOnError="True">*E-Mail Required</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Confirm E-Mail"></asp:Label>
        &nbsp;<asp:TextBox ID="txtContactMailCheck" runat="server" style="margin-left: 11px" width="114px"></asp:TextBox><asp:Label ID="lblConfirmEmail" runat="server" Text=""></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContactMailCheck" ErrorMessage="RequiredFieldValidator" Font-Italic="True" Font-Size="Small" ForeColor="Red" SetFocusOnError="True">*Please Confirm E-Mail</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Body"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="txtboxBody" runat="server" Width="127px" TextMode="MultiLine" Height="50px"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtboxBody" ErrorMessage="RequiredFieldValidator" Font-Italic="True" Font-Size="Small" ForeColor="Red" SetFocusOnError="True">*No Message Entered</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Button ID="btnContactSubmit" runat="server" style="margin-left: 125px" Text="Submit" Width="93px" OnClick="btnContactSubmit_Click" />
         <asp:Label ID="lblConfirmMessage" runat="server" Height="26px" Width="400px" style="margin-left: 0px"></asp:Label>


         </asp:Panel>
</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    
</asp:Content>



