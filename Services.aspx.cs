using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project4_TSullivan
{
    public partial class Services : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string amount = txtAmount.Text;
            double amountt;
            int transactionCount = Convert.ToInt32(Session["transactionCount"]);
            const double MAX = 10000;
            const double MIN = 0;

            if (double.TryParse(amount, out amountt))       //Validate user input is a number
            {
                Session["sessionAmount"] = double.Parse(txtAmount.Text);
                amountt = double.Parse(amount);
                if (amountt > MAX || amountt < MIN)     //Validate number is between min & max
                {
                    lblAmountError.Text = "<b style='color:red'>" + "Amount must be between $0.00 and $10,000." + "</b>";
                }
                else if (ddlAction.SelectedIndex == 1)       //If withdraw selected
                {
                    if (amountt > Convert.ToDouble(Session["sessionBalance"]))      //To prevent overdraft
                    {
                        lblAmountError.Text = "<b style='color:red'>" + "Cannot withdraw more than account balance." + "</b>";
                    }
                    else if (amountt < 50)       //Yes fee
                    {
                        double fee = 1.025;
                        Session["sessionBalance"] = Convert.ToDouble(Session["sessionBalance"]) - (Convert.ToDouble(Session["sessionAmount"]) * fee);
                        Session["selectedAction"] = "Withdrawal";
                        Session["fee"] = "Transaction Fee:";
                        Session["feeAmount"] = Convert.ToDouble(Session["sessionAmount"]) * 0.025;
                        double displayFee = Convert.ToDouble(Session["feeAmount"]);
                        Session["formattedFeeAmount"] = displayFee.ToString("c2");

                        //Create & format session variables to display balance & amount
                        double displayBalance = Convert.ToDouble(Session["sessionBalance"]);
                        Session["sessionFormattedBalance"] = displayBalance.ToString("c2");

                        double displayAmount = Convert.ToDouble(Session["sessionAmount"]);
                        Session["sessionFormattedAmount"] = displayAmount.ToString("c2");

                        transactionCount++;
                        Session["transactionCount"] = transactionCount;

                        //Send to Status page
                        Response.Redirect("Status.aspx");
                    }
                    else        //No fee
                    {
                        Session["sessionBalance"] = Convert.ToDouble(Session["sessionBalance"]) - Convert.ToDouble(Session["sessionAmount"]);
                        Session["selectedAction"] = "Withdrawal";
                        Session["fee"] = "";

                        //Create & format session variables to display balance & amount
                        double displayBalance = Convert.ToDouble(Session["sessionBalance"]);
                        Session["sessionFormattedBalance"] = displayBalance.ToString("c2");

                        double displayAmount = Convert.ToDouble(Session["sessionAmount"]);
                        Session["sessionFormattedAmount"] = displayAmount.ToString("c2");

                        transactionCount++;
                        Session["transactionCount"] = transactionCount;

                        //Send to Status page
                        Response.Redirect("Status.aspx");
                    }
                }
                else if (ddlAction.SelectedIndex == 2)      //If deposit selected
                {
                    Session["sessionBalance"] = Convert.ToDouble(Session["sessionBalance"]) + Convert.ToDouble(Session["sessionAmount"]);
                    Session["selectedAction"] = "Deposit";

                    //Create & format session variables to display balance & amount
                    double displayBalance = Convert.ToDouble(Session["sessionBalance"]);
                    Session["sessionFormattedBalance"] = displayBalance.ToString("c2");

                    double displayAmount = Convert.ToDouble(Session["sessionAmount"]);
                    Session["sessionFormattedAmount"] = displayAmount.ToString("c2");

                    transactionCount++;
                    Session["transactionCount"] = transactionCount;

                    //Send to Status page
                    Response.Redirect("Status.aspx");
                }
                else
                {
                    Session["selectedAction"] = "Not Applicable";       //If no option selected
                    Session["sessionAmount"] = "";

                    //Create & format session variables to display balance & amount
                    double displayBalance = Convert.ToDouble(Session["sessionBalance"]);
                    Session["sessionFormattedBalance"] = displayBalance.ToString("c2");

                    Session["sessionFormattedAmount"] = "";

                    //Send to Status page
                    Response.Redirect("Status.aspx");
                }

                

                
            }
            else        //If incorrect user input
            {
                lblAmountError.Text = "<b style='color:red';>" + "Please enter a valid amount." + "</b>";
                Session["selectedAction"] = "Not Applicable";
                Session["amount"] = "";
            }
        }
    }
}