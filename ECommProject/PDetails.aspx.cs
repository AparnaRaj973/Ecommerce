using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommProject
{
    public partial class PDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ConnectionClass obj = new ConnectionClass();
            string pid = this.Request.Params["Productid"];
            string sel = "select * from Products where PId=" + pid + "";
            DataTable dt = obj.Fn_Exedatatable(sel);
            ListView2.DataSource = dt;
            ListView2.DataBind();

        }
    }
}