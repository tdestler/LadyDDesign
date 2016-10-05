<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="Forms_frmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/AutumnForm.css" rel="stylesheet" />
    <link href="../CSS/SpringForm.css" rel="stylesheet" />
    <link href="../CSS/SummerForm.css" rel="stylesheet" />
    <link href="../CSS/WinterForm.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="margin: 0px;">  Lady D Design </h1>

        <br />

        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Forms/frmAdmin.aspx" Height="144px" OnAuthenticate="Login1_Authenticate" Width="414px"></asp:Login>
    
    </div>
    </form>
</body>
</html>
