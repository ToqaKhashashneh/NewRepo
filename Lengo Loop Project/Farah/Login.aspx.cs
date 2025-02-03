using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Website.Farah
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            string UserEmail = email.Text;
            string UserPassword = password.Text;

            string file = Server.MapPath("UserInfo.txt");

            string LoginFile = Server.MapPath("LoginData.txt");

            if (UserEmail == "")
            {
                Response.Write("<script>alert('Email Is Required!');</script>");
            }

            string[] users = File.ReadAllLines(file);

            foreach(string user in users)
            {
                string[] userData = user.Split(',');
                if (userData[2] == UserEmail && userData[3] == UserPassword)
                {

                    string EnterEmail = email.Text.Trim();
                    if (!File.Exists(LoginFile))
                    {
                        File.Create(LoginFile);
                    }

                    File.WriteAllText(LoginFile, EnterEmail);


                    Response.Redirect("~/Toqa/All Books.aspx");
                    return;

                }

                if (UserEmail == "Admin@gmail.com" && UserPassword == "123456789A")
                {
                    Response.Redirect("~/Rudaina/Dashboard.aspx");
                }
            }


            Response.Write("<script>alert('Invalid Email Or Password');</script>");

        }
    }
}