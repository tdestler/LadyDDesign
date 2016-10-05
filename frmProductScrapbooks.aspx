<%@ Page Title="" Language="C#" MasterPageFile="~/Master/mpProducts.master" AutoEventWireup="true" CodeFile="frmProductScrapbooks.aspx.cs" Inherits="Forms_frmProductScrapbooks" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlScrapDisplay" runat="server" Height="856px" style="margin-left: 55px" Width="1175px">
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" Text="Take a look at the bottom of our Scrapbook Product Page to see some videos describing some of My Products!!"></asp:Label>

    </asp:Panel>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="pnlScrapVids1" runat="server" Height="276px" style="margin-left: 10px; margin-top: 37px" Width="1238px">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Scrapbook Sizes" style="margin-left: 20px;" Font-Underline="True"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Underline="True" Text="Brag Books"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Underline="True" Text="Scrapbook Tins"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Underline="True" Text="Explosion Boxes"></asp:Label>
        </div>

        <div>
        <iframe align="center" src="https://www.youtube.com/embed/EC4NZFb7bqE" frameborder="0" allowfullscreen style="width: 278px; 
           height: 178px; margin-top: 26px; margin-left: 26px;">   </iframe>
        &nbsp;
       

    
        <iframe align="center" src="https://www.youtube.com/embed/EC4NZFb7bqE" frameborder="0" allowfullscreen style="width: 278px; 
           height: 178px; margin-top: 26px; margin-left: 9px;">   </iframe>
        

        &nbsp;
        <iframe id="I1" align="center" allowfullscreen="" frameborder="0" name="I1" src="https://www.youtube.com/embed/EC4NZFb7bqE" style="width: 278px; 
           height: 178px; margin-top: 26px; margin-left: 12px;"></iframe>
        <iframe id="I2" align="center" allowfullscreen="" frameborder="0" name="I2" src="https://www.youtube.com/embed/EC4NZFb7bqE" style="width: 278px; 
           height: 178px; margin-top: 26px; margin-left: 23px;"></iframe>
        </div>

     </asp:Panel>
    
</asp:Content>

