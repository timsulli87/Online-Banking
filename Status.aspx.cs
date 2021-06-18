using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project4_TSullivan
{
    public partial class Status : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblActionCompleted.Text = Session["selectedAction"].ToString();
        }

        protected void btnSelectService_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }
    }
}