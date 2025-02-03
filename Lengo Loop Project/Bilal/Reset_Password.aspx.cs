using System;
using System.IO;
using System.Web.UI;

namespace Library_Website.Bilal
{
    public partial class Reset_Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string email = Request.QueryString["email"];

                if (!string.IsNullOrEmpty(email))
                {
      
                    string filePath = Server.MapPath("~/Farah/UserInfo.txt");
                    if (File.Exists(filePath))
                    {
                        string[] content = File.ReadAllLines(filePath);
                        foreach (var line in content)
                        {
                            string[] user = line.Split(',');
                            if (user[2] == email)
                            {
    
                                string currentPassword = user[3];
                                ClientScript.RegisterStartupScript(this.GetType(), "setOldPassword",
                                    $"document.getElementById('{C_Pass.ClientID}').value = '{currentPassword}';", true);
                                break;
                            }
                        }
                    }
                }
            }
        }

        protected void saveCanghes_Click(object sender, EventArgs e)
        {

            string fileLoged = Server.MapPath("~/Farah/LoginData.txt");
            string filePath = Server.MapPath("~/Farah/UserInfo.txt");


            string loggedEmail = File.ReadAllText(fileLoged).Trim();

         
            string currentPassword = C_Pass.Text.Trim();
            string newPassword = newpass.Text.Trim();
            string confirmPassword = confirm.Text.Trim();

          
            if (newPassword != confirmPassword)
            {
                ErrorMessage.Text = "New password and confirm password do not match!";
                ErrorMessage.Visible = true;
                return;
            }

            bool passwordUpdated = false;
            string[] allUsers = File.ReadAllLines(filePath);
            for (int i = 0; i < allUsers.Length; i++)
            {
                string[] user = allUsers[i].Split(',');

              
                if (user[2] == loggedEmail)
                {
         
                    if (user[3] == currentPassword)
                    {
                    
                        user[3] = newPassword;
                        allUsers[i] = string.Join(",", user); 

                 
                        File.WriteAllLines(filePath, allUsers);

                        passwordUpdated = true;
                        break;
                    }
                    else
                    {
  
                        ErrorMessage.Text = "Invalid current password!";
                        ErrorMessage.Visible = true;
                        return;
                    }
                }
            }

            if (passwordUpdated)
            {
      
                SuccessMessage.Text = "Password successfully updated!";
                SuccessMessage.Visible = true;
                Response.Redirect("Profile.aspx");
            }
            else
            {

                ErrorMessage.Text = "User not found!";
                ErrorMessage.Visible = true;
            }
        }

        protected void cancel_Click(object sender, EventArgs e)
        {

            Response.Redirect("Profile.aspx");
        }
    }
}
