using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Library_Website.Bilal
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("AllUsers.txt");
            if (File.Exists(filePath))
            {
                string[] content = File.ReadAllLines(filePath);
                string fileLoged = Server.MapPath("~/Farah/LoginData.txt");
                string Email = File.ReadAllText(fileLoged);

                for (int i = 0; i < content.Length; i++)
                {
                    string[] user = content[i].Split(',');

                   

                    if (user[0].Trim() == Email.Trim())
                    {

                        e_Email.Text = user[0];
                        F_Name.Text = user[1];
                        L_Name.Text = user[2];
                        P_Pass.Text = user[3];

                        FullNameLabel.Text = user[1] + " " + user[2];
                        EmailLabel.Text = user[0];

                        return;
                    }
                }
            }
                
                ClientScript.RegisterStartupScript(this.GetType(), "loadPassword", "loadPassword();", true);
        }


        protected void Edit_Click(object sender, EventArgs e)
        { 
            Response.Redirect("edit_profile.aspx"); 

        }



        protected void Reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reset_Password.aspx?email=" + e_Email.Text);
        }

        protected void edit_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("Room_History.aspx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            Response.Redirect("History.aspx");
        }
    }

}
