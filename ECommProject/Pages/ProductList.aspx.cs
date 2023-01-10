using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommProject.Pages
{
    public partial class ProductList : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cid = this.Request.Params["Categoryid"];
            if (cid == null)
                Response.Redirect("../Body.aspx");
            string sel = "select * from Products where Cid=" + cid + "";
            DataTable dt = obj.Fn_Exedatatable(sel);
            int productcount = dt.Rows.Count;
            PdCount.Text = productcount+" products are available";
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
}