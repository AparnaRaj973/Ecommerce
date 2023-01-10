using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ECommProject.Pages
{
    public partial class Product_Details : System.Web.UI.Page
    {
        public string productid { get; set; }
        public DataTable dt;
        public string ProductName { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionClass obj = new ConnectionClass();

            string pid = this.Request.Params["productId"];
            if (pid == null)
                Response.Redirect("../Body.aspx");

            string s = "select * from Products where PId=" + pid + "";
            dt = obj.Fn_Exedatatable(s);
            PName.Text = dt.Rows[0]["Pname"].ToString();
            Pdeption.Text = dt.Rows[0]["Pdescription"].ToString();
            Pprice.Text = "₹"+dt.Rows[0]["Pprice"].ToString();
            productid = dt.Rows[0]["PId"].ToString();
            productimg.ImageUrl ="../Images/Products/Productdetails/"+dt.Rows[0]["Pphoto"].ToString();

            productpageURL.NavigateUrl = "ProductList.aspx?Categoryid="+ dt.Rows[0]["CId"].ToString();
        }
    }
}