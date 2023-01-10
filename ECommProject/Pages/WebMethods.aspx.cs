using ECommProject.DTO;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommProject.Pages
{
    public partial class WebMethods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [System.Web.Services.WebMethod(EnableSession = true)]
        public static string AddToCart(string productId)
        {
            string productqry = "select * from products where PId=" + productId + "";
            ConnectionClass obj = new ConnectionClass();
            DataTable prodTbl = obj.Fn_Exedatatable(productqry);
            int PdID = (int)prodTbl.Rows[0]["PId"];
            int PdPrice = Convert.ToInt32(prodTbl.Rows[0]["Pprice"]);
            User user = (User)HttpContext.Current.Session["User"];
            if (user != null)
            {
                int quantity = 1;
                string cartSelectQery = "Select * from cart where user_id =" + user.UserID + " And Pid = " + PdID + "";
                DataTable cartTbl = obj.Fn_Exedatatable(cartSelectQery);
                if (cartTbl.Rows.Count > 0)
                {
                    int qnty = (int)cartTbl.Rows[0]["No_of_quantities"];
                    int Price = Convert.ToInt32(cartTbl.Rows[0]["Total_price"]);
                    PdPrice = PdPrice + Price;
                    quantity = quantity + qnty;
                    string cartInserQry = " update cart set No_of_quantities = " + quantity + ", Total_price = '" + PdPrice + "'where user_id =" + user.UserID + " And Pid = " + PdID + "";
                    obj.Fn_Exenonquery(cartInserQry);
                }
                else
                {
                    string cartInserQry = "  Insert into cart values(" + user.UserID + "," + PdID + "," + quantity + ",'" + PdPrice + "')";
                    obj.Fn_Exenonquery(cartInserQry);
                }
                return "Product added to cart";
            }

            return " User not logged in please login.";
        }

        [System.Web.Services.WebMethod(EnableSession = true)]
        public static string RemoveFromCart(string productId)
        {
            User user = (User)HttpContext.Current.Session["User"];
            if (user != null)
            {
                string cartselquery = "select * from Cart where PId=" + productId + " and User_id=" + user.UserID + "";
                ConnectionClass obj = new ConnectionClass();
                DataTable dt = obj.Fn_Exedatatable(cartselquery);
                int qty = Convert.ToInt32(dt.Rows[0]["No_of_quantities"]);
                int totalprice = Convert.ToInt32(dt.Rows[0]["Total_price"]);
                int singleprice = totalprice / qty;
                totalprice = totalprice - singleprice;
                qty = qty - 1;
                string cartupdatequery = "update Cart set No_of_quantities=" + qty + ",Total_price='" + totalprice + "' where  PId=" + productId + " and User_id=" + user.UserID + "";
                int i = obj.Fn_Exenonquery(cartupdatequery);
                if (i != 0)
                {
                    return "Successfully updated";
                }
            }
            return "User not logged in";

        }
        [System.Web.Services.WebMethod(EnableSession = true)]
        public static string DeleteFromCart(string productId)
        {
            User user = (User)HttpContext.Current.Session["User"];
            if (user != null)
            {
                string prodtremovequery = "delete from Cart where PId=" + productId + " and User_id=" + user.UserID + "";
                ConnectionClass obj = new ConnectionClass();
                int i = obj.Fn_Exenonquery(prodtremovequery);
                if (i != 0)
                {

                    return "Successfully removed";
                }


            }
            return "User not logged in";

        }



        [System.Web.Services.WebMethod(EnableSession = true)]
        public static string QuantityInCart()
        {
            User user = (User)HttpContext.Current.Session["User"];
            if (user != null)
            {
                string carttqry = "select sum(No_of_quantities) as No_of_quantities, sum(CAST(Total_price AS int)) as Total_price from Cart where User_id=" + user.UserID + "";
                ConnectionClass obj = new ConnectionClass();
                DataTable dt = obj.Fn_Exedatatable(carttqry);
                int quantity = (int)dt.Rows[0]["No_of_quantities"];
                int TotalPrice = Convert.ToInt32(dt.Rows[0]["Total_price"]);
                var response = new { qnty = quantity, TPrince = TotalPrice };
                return JsonConvert.SerializeObject(response);
            }
            return "";
        }

    }

}