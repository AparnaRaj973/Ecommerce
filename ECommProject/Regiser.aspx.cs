using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommProject
{
    public partial class Regiser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text == "User")
            {
                Response.Redirect("UserRegister.aspx");
            }
            else if (DropDownList1.SelectedItem.Text == "Admin")
            {
                Response.Redirect("AdminRegister.aspx");
            }

        }
    }
}