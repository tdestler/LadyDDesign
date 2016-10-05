<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Gallery.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Forms_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <style type="text/css">
        body
        {
            font-family: Arial, Sans-Serif;
            font-size: 0.75em;
        }
        #imgGallery
        {
            width: 100%;
            overflow: hidden;
        }
        #imgGallery a
        {
            position: relative;
            float: left;
            margin: 5px;
        }
        #imgGallery a span
        {
            background-repeat: no-repeat;
            width: 48px;
            height: 48px;
            display: none;
            position: absolute;
            left: 15px;
            top: 15px;
        }
        #imgGallery {
            border: solid 1px #999;
            padding: 5px;
        }
        
    </style>
    <script src="../Scripts/jquery-2.2.0.min.js" type="text/javascript"></script>
                       <script type="text/javascript">
                       $(document).ready(function () {
                           $('#imgGallery').width(200);
                           $('#imgGallery').mouseover(function () {
                               $(this).css("cursor", "pointer");
                               $(this).animate({ width: "500px" }, 'slow');
                           });

                           $('#imgGallery').mouseout(function () {
                               $(this).animate({ width: "200px" }, 'slow');
                           });
                       });
</script>    
        <div>
        <h1> Move mouse on image to Zoom In and Zoom Out </h1>
        <br />
        <a>
            <img src="SlideImages/IMG_2743.JPG" alt="stone" id="imgGallery"  />

        </a>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

