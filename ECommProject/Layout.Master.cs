using ECommProject.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommProject
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user= (User)HttpContext.Current.Session["User"];
            if(user!=null)
            {
                loggeduser.Text = user.Name;
            }

        }
    }
}