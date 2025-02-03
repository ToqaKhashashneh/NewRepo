using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml.Linq;

namespace Library_Website.Bilal
{
    public partial class Edit_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string filePath = Server.MapPath("~/Farah/UserInfo.txt");
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

                           
                            name.Text = user[0];
                            Lname.Text = user[1];
                            email.Text = user[2];

                        }
                    }
                }
            }
        }

        protected void cancel_click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void saveCanghes_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("~/Farah/UserInfo.txt");
            if (File.Exists(filePath))
            {
                string[] content = File.ReadAllLines(filePath);
                string fileLoged = Server.MapPath("~/Farah/LoginData.txt");
                string Email = File.ReadAllText(fileLoged).Trim();

        

                for (int i = 0; i < content.Length; i++)
                {
                    string[] user = content[i].Split(',');
                    if (user[0].Trim() == Email.Trim())
                    {
                        
                        user[0] = name.Text;
                        user[1] = Lname.Text;
                        user[2] = email.Text;
               

                        File.WriteAllText(fileLoged, email.Text);
                        content[i] = $"{user[0]},{user[1]},{user[2]},{user[3]},{user[3]}";


                        break;
                    }
                }
                File.WriteAllLines(filePath, content);
            }
            Response.Redirect("profile.aspx");

        }

    }
}