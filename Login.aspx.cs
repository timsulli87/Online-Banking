using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Project4_TSullivan
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Stream variables
            StreamReader readFile;

            //Counter variable
            int index = 0;
            
            //Open file
            readFile = File.OpenText(@"C:\C#\Project4_TSullivan\loginFile.txt");
            
            //Declare array
            const int ROWS = 3;

            while (index < ROWS && !readFile.EndOfStream)
            {
                string str = readFile.ReadLine();
                string[] tokens = str.Split(',');
                UserInfo[] userArray =
                {
                    new UserInfo(tokens[0], tokens[1], double.Parse(tokens[2]))
                };
                index++;

                lblUserError.Text = "";
                lblPasswordError.Text = "";

                foreach (UserInfo userName in userArray)
                {
                    if (txtUserName.Text == "")     //If username is empty
                    {
                        lblUserError.Text = "<b style = 'color:red';>" + "Please enter a username." + "</b>";
                    }
                    else if (txtUserName.Text != tokens[0])       //If username is incorrect
                    {
                        lblUserError.Text = "<b style = 'color:red';>" + "Incorrect username." + "</b>";
                    }
                    else        //Username is correct
                    {
                        foreach (UserInfo password in userArray)
                        {
                            if (txtPassword.Text == "")        //If password is empty
                            {
                                lblPasswordError.Text = "<b style = 'color:red';>" + "Please enter a password." + "</b>";
                            }
                            else if (txtPassword.Text != tokens[1])      //If password is incorrect
                            {
                                lblPasswordError.Text = "<b style = 'color:red';>" + "Incorrect password." + "</b>";
                            }
                            else
                            {
                                Session["sessionUserName"] = tokens[0];
                                Session["sessionPassword"] = tokens[1];
                                Session["sessionBalance"] = tokens[2];
                                double displayBalance = Convert.ToDouble(Session["sessionBalance"]);
                                Session["sessionFormattedBalance"] = displayBalance.ToString("c2");
                                //Close file
                                readFile.Close();
                                Response.Redirect("Services.aspx");     //If both username & password are correct
                            }
                        }
                    }
                }
            }
            //Close file
            readFile.Close();
        }
    }
}