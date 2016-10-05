<%@ Page Title="" Language="C#" MasterPageFile="~/Master/mpHome.master" AutoEventWireup="true" CodeFile="frmHomePage.aspx.cs" Inherits="Forms_frmHomePage" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Panel id="Panel1" runat="server" Height="540px" style="margin-left: 176px; margin-top: 0px;" Width="926px">
        
        <h1 style="width: 706px; margin-left: 99px">
            Lady D. Designs will help you bring your vision to life for your event!
        </h1>

        <p style="margin-top: 25px; width: 650px; height: 135px; margin-left: 130px; font-size: large; font-weight: bolder;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; From a baby shower or wedding to corporate events, tell me your thoughts and I will create a euphoric event that will leave you satisfied. I will show you ideas on a grand scale from the smallest details to the most noticeable to the human eye. I take all details into consideration when planning an event. I’ll come up with a flow of ideas and present them to you until we are in agreement over the direction of your event.  
        </p>

        <p style="width: 650px; margin-left: 130px; font-size: large; font-weight: bold;">
            &nbsp;&nbsp;&nbsp;&nbsp; Do you need a photographer, DJ or a caterer? Lady D Designs has resources for you and they are highly recommended as a result of their quality service. Do you need help searching for a venue? Lady D Designs can help you locate a venue within your price range as well as the location of your choice. Lady D. Designs also can help you with all of your invitations, save the dates, centerpieces, banners and/or favors needs to personalize your event. Do you need help with finding games, giveaways’ and/ or prizes? Lady D Designs can help you with ideas or even come up with some for you. Have Lady D. help you plan your next event and be amazed with what you see!  
        </p>

        <p style="font-weight: bold; font-size: x-large; width: 853px; margin-left: 46px;">
            &nbsp;&nbsp;&nbsp;&nbsp; “The most successful event is the one that achieves your goals and exceeds your expectations.”   – Unknown
        </p>
    </asp:Panel>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <iframe align="right" src="https://www.youtube.com/embed/EC4NZFb7bqE" frameborder="0" allowfullscreen style="border-style: solid; border-color: #00FFFF; width: 615px; height: 294px; margin-top: 0px; margin-left: 0px;" id="iframehome"></iframe>

    <div> <h2 style="width: 226px; margin-left: 85px"> Testimonials </h2> </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <%--<asp:TextBox ID="txtTestimonial" runat="server" style="resize:none; text-align:center" Height="180px" ReadOnly="True" TextMode="MultiLine" Width="562px" Text="Place Holder"  Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:TextBox>--%>
                <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:Label ID="lblTestimonial" runat="server" Text="Label" Height="118px" Width="511px" Font-Italic="True" Font-Bold="True" Font-Size="X-Large" style="margin-left: 58px; margin-top: 0px;"></asp:Label>
                
            </ContentTemplate>
        </asp:UpdatePanel>
    
</asp:Content>






