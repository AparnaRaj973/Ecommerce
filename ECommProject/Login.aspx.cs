using ECommProject.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommProject
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string query = "select * from [user] U INNER JOIN Log L on U.Logid = L.Logid WHERE L.Username ='" + TextBox1.Text + "' AND L.Password ='" + TextBox2.Text + "'";
            DataTable userTbl = obj.Fn_Exedatatable(query);

            if (userTbl != null && userTbl.Rows.Count!=0)
            {
                User user = new User();
                user.UserID = userTbl.Rows[0]["User_id"].ToString();
                user.UserName = userTbl.Rows[0]["Username"].ToString();
                user.UserType = userTbl.Rows[0]["Usertype"].ToString();
                user.Name = userTbl.Rows[0]["Name"].ToString();
                
                Session["User"] = user;
                if (user.UserType == "user")
                {
                    Response.Redirect("Body.aspx");
                }


            }
            else
            {
                string adminquery = " select * from Admins A INNER JOIN [log] L on a.Logid = L.Logid  WHERE L.Username ='" + TextBox1.Text + "' AND L.Password ='" + TextBox2.Text + "'";
                DataTable admin = obj.Fn_Exedatatable(adminquery);
                if(admin != null && admin.Rows.Count != 0)
                {
                    string userType = admin.Rows[0]["Usertype"].ToString();
                    if(userType == "admin")
                    {
                        Response.Redirect("AdminPanel.aspx");
                    }
                }
                Label1.Text = "Invalid Login";
            }





            //string lid = "select count(Logid) from Log where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
            //string ccid = obj.Fn_Exescalar(lid);
            //if (ccid == "1")
            //{
            //    string iid = "select Logid from Log where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
            //    string logid = obj.Fn_Exescalar(iid);
            //    string sel = "select Usertype from Log where Logid=" + logid + " ";
            //    string r = obj.Fn_Exescalar(sel);
            //    if (r == "user")
            //    {
            //        Response.Redirect("Body.aspx");
            //    }
            //    else if (r == "admin")
            //    {
            //        Response.Redirect("AdminPanel.aspx");
            //    }
            //}

        }
    }
}