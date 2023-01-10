using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommProject
{
    public partial class Category : System.Web.UI.Page
    {
        ConnectionClass cat = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pa = "~/Products/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(pa));
            string stat = "Available";
            string cins = "insert into Categories values('" + TextBox1.Text + "','" + pa + "','" + TextBox2.Text + "','" + stat + "')";
            int ins = cat.Fn_Exenonquery(cins);
            if (ins != 0)
            {
                Label1.Text = "added";
            }
            //string sel = "select count(CId) from Categories where Cname='" + TextBox1.Text + "'";
            //string cid = cat.Fn_Exescalar(sel);
            //if(cid=="1")
            //{
            //    string sel1 = "select CId from Categories where Cname='" + TextBox1.Text + "'";
            //    string id = cat.Fn_Exescalar(sel1);
            //    Session["uid"] = id;
        }


    }
}