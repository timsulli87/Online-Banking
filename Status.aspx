<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Status.aspx.cs" Inherits="Project4_TSullivan.Status" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Link to bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />
    
    <title>Status</title>
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
                <li class="nav-item">
                    <a class="nav-link" href="Services.aspx">Services</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Status.aspx">Status</a>
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
&nbsp; Action Completed:&nbsp;
            <asp:Label ID="lblActionCompleted" runat="server"></asp:Label>
            <br />
&nbsp; Amount:&nbsp;<%: Session["sessionFormattedAmount"] %>
            <br />
&nbsp; <%: Session["fee"] %> &nbsp; <%: Session["formattedFeeAmount"] %>
            <br />
&nbsp; Account Balance:&nbsp;<%: Session["sessionFormattedBalance"] %>
            <br />
            &nbsp; Number of Session Transactions: &nbsp; <%: Session["transactionCount"] %>
            <br />
            <br />
&nbsp;
            <asp:Button ID="btnSelectService" runat="server" Text="Select Service" OnClick="btnSelectService_Click" />
        </div>
    </form>
</body>
</html>
