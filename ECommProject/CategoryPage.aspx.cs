using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ECommProject
{
    public partial class CategoryPage : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionClass obj = new ConnectionClass();
            string cid = this.Request.Params["Categoryid"];
            string sel = "select * from Products where Cid="+cid+"";
             DataTable dt= obj.Fn_Exedatatable(sel);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
}