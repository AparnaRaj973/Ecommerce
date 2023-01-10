using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommProject
{
    public partial class UserRegister : System.Web.UI.Page
    {
        ConnectionClass us = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int lgid = 0;
            string sel = "select max(Logid) from Log";
            string v = us.Fn_Exescalar(sel);
            if (v == null | v == "")
            {
                lgid = 1;
            }
            else
            {
                int id = Convert.ToInt32(v);
                lgid = id + 1;
            }
            string st = "active";
            string uins = "insert into [User] values(" + lgid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + st + "')";
            int i = us.Fn_Exenonquery(uins);
            string u = "user";
            string log = "insert into Log values(" + lgid + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','" + u + "')";
            int j = us.Fn_Exenonquery(log);
            if (i != 0 & j != 0)
            {
                Label1.Text = "Registered successfully";
            }
        }
    }
}