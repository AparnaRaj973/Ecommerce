using ECommProject.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommProject.Pages
{
    public partial class CartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)HttpContext.Current.Session["User"];
            if (user != null)
            {
                string cartquery = "select * from Cart C INNER JOIN Products P ON C.PId=P.PId WHERE User_id="+user.UserID+"";
                ConnectionClass obj = new ConnectionClass();
                DataTable ctbl = obj.Fn_Exedatatable(cartquery);
                ListView1.DataSource = ctbl;
                ListView1.DataBind();

            }

        }
    }
}