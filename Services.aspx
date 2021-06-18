<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Project4_TSullivan.Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Link to bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />
    
    <title>Services</title>
</head>
<body style="background-color:antiquewhite">
    <form id="form1" runat="server">
    <!--Begin navbar-->
    <div class="container">
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <a class="navbar-brand" href="#"><strong>ATM</strong></a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a style="visibility:hidden" class="nav-link" href="Home.aspx">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Services.aspx">Services</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Logout.aspx">Logout</a>
                </li>
            </ul>
        </nav>
    </div>
    <!--End navbar-->
        
        <div>
            <br />
&nbsp; User ID:&nbsp; <%: Session["sessionUserName"] %>
            <br />
&nbsp; Account Balance: &nbsp; <%: Session["sessionFormattedBalance"] %>
            <br />

&nbsp; Action:&nbsp;
            <asp:DropDownList ID="ddlAction" runat="server">
                <asp:ListItem>Select a Service</asp:ListItem>
                <asp:ListItem>Withdraw</asp:ListItem>
                <asp:ListItem>Deposit</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp; Amount to Withdraw or Deposit:&nbsp;
            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Label ID="lblAmountError" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
