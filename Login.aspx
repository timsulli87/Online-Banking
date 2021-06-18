<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project4_TSullivan.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Link to bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />
    
    <title>Login</title>
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
                <li class="nav-item active">
                    <a class="nav-link" href="Login.aspx">Login</a>
                </li>
            </ul>
        </nav>
    </div>
    <!--End navbar-->
        
        <div>
            <br />
            <br />
&nbsp; Username:
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblUserError" runat="server"></asp:Label>
            <br />
            <br />
&nbsp; Password:&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblPasswordError" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
        </div>
    </form>
</body>
</html>
