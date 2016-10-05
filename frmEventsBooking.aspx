<%@ Page Title="" Language="C#" MasterPageFile="~/Master/mpOrderForms.master" AutoEventWireup="true" CodeFile="frmEventsBooking.aspx.cs" Inherits="Forms_frmEventsBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <asp:Panel ID="Panel1" runat="server">

        l&nbsp;
        <asp:TextBox ID="txtAdminLogin" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbAdmin" runat="server" PostBackUrl="~/Forms/frmAdmin.aspx">LinkButton</asp:LinkButton>

    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" Runat="Server">
    
</asp:Content>

