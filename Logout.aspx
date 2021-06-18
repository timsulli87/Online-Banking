<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Project4_TSullivan.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Link to bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />
    
    <title>Logout</title>
</head>
<body style="background-color:antiquewhite">
    <form id="form1" runat="server">
    
    <!--Begin navbar-->
    <div class="container">
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <a class="navbar-brand" href="#"><strong>ATM</strong></a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="Home.aspx">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Login.aspx">Login</a>
                </li>
            </ul>
        </nav>
    </div>
    <!--End navbar-->
        
        <div>
            <br />
            <br />
&nbsp; Thank you for using The Local Bank&#39;s ATM.<br />
&nbsp; Feel free to stop by for additional customer service.<br />
            <br />
&nbsp;
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>
