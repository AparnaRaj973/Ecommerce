using ECommProject.DTO;
using ECommProject.Pages;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommProject
{
    public partial class Body : System.Web.UI.Page
    {
        public List<Categories> categories = new List<Categories>();

        protected void Page_Load(object sender, EventArgs e)
        {
            string catequery = "select * from Categories";

            ConnectionClass con = new ConnectionClass();
            DataTable category = con.Fn_Exedatatable(catequery);

            if(category != null && category.Rows.Count != 0)
            {
                foreach (DataRow item in category.Rows)
                {
                    Categories obj = new Categories();
                    obj.Cid = Convert.ToInt32(item["CId"]);
                    obj.Cname = item["Cname"].ToString();
                    obj.Cdescription = item["Cdescription"].ToString();
                    obj.Cstatus = item["CStatus"].ToString();
                    categories.Add(obj);
                }
            }


        }
    }
}