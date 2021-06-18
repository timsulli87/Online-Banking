<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project4_TSullivan.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Link to bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />
    
    <title>ATM Home</title>
</head>
<body style="background-color:antiquewhite">
    <form id="form1" runat="server">
    <!--Begin navbar-->
    <div class="container">
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <a class="navbar-brand" href="#"><strong>ATM</strong></a>
            <ul class="navbar-nav">
                <li class="nav-item active">
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
            <h1>&nbsp; Welcome to the Local Bank ATM</h1>
            <p>&nbsp;&nbsp; This site will provide the following services:</p>
            <ul>
                <li>Account Status</li>
                <li>Account Withdrawals</li>
                <li>Account Deposits</li>
            </ul>
        </div>
    </form>
</body>
</html>
