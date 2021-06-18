using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Threading;
using System.Security.Cryptography.X509Certificates;

namespace Project4_TSullivan
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = @"C:\C#\Project4_TSullivan\loginFile.txt";
            string[] readFile = File.ReadAllLines(path);
            string[] token0 = readFile[0].Split(',');
            string[] token1 = readFile[1].Split(',');
            string[] token2 = readFile[2].Split(',');

            if (token0[0] == Convert.ToString(Session["sessionUsername"]))
            {
                token0[2] = Convert.ToString(Session["sessionBalance"]);
            }
            else if (token1[0] == Convert.ToString(Session["sessionUsername"]))
            {
                token1[2] = Convert.ToString(Session["sessionBalance"]);
            }
            else
            {
                token2[2] = Convert.ToString(Session["sessionBalance"]);
            }
            
            using (StreamWriter writeFile = File.CreateText(path))
            {
                writeFile.WriteLine(token0[0] + "," + token0[1] + "," + token0[2]);
                writeFile.WriteLine(token1[0] + "," + token1[1] + "," + token1[2]);
                writeFile.WriteLine(token2[0] + "," + token2[1] + "," + token2[2]);
            }
        }
        
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}