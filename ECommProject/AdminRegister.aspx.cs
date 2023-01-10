using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommProject
{
    public partial class AdminRegister : System.Web.UI.Page
    {
        ConnectionClass obj1 = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int lgid = 0;
            string sel = "select max(Logid) from Log";
            string v = obj1.Fn_Exescalar(sel);
            if (v == null | v == "")
            {
                lgid = 1;
            }
            else
            {
                int id = Convert.ToInt32(v);
                lgid = id + 1;
            }
            string s = "insert into Admins values(" + lgid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            int i = obj1.Fn_Exenonquery(s);
            string a = "admin";
            string log = "insert into Log values(" + lgid + ",'" + TextBox4.Text + "','" + TextBox5.Text + "','" + a + "')";
            int j = obj1.Fn_Exenonquery(log);
            if (i != 0 & j != 0)
            {
                Label1.Text = "Registered successfully";
            }

        }
    }
}