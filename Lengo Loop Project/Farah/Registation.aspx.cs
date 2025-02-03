using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text.RegularExpressions;

namespace Library_Website.Farah
{
    public partial class Registation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {


            // Retrieve user inputs from textboxes
            string FirstName = fName.Text;
            string LastName = lName.Text;
            string Email = email.Text;
            string Password = password.Text;
            string ConfirmPassword = confirmPass.Text;

            // Prepare the data to be stored in file
            string UserData = $"{FirstName},{LastName},{Email},{Password},{ConfirmPassword}";

            // Map file path for storing user info
            string file = Server.MapPath("UserInfo.txt");

            // Regular expressions for validation
            string strRegex = @"\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@" +
                              @"(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+" +
                              @"[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z";
            string strRegexforpass = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,15}$";

            // Validate email format
            if (!Regex.IsMatch(Email, strRegex, RegexOptions.IgnoreCase))
            {
                string script = "Swal.fire({ " +
                                "title: 'Invalid Email Format!', " +
                                "text: 'Please enter a valid email address.', " +
                                "icon: 'error', " +
                                "confirmButtonText: 'OK' " +
                                "});";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertEmail", script, true);
                return; // Stop further execution if the email is invalid
            }

            // Validate password format
            if (!Regex.IsMatch(Password, strRegexforpass, RegexOptions.IgnoreCase))
            {
                string script = "Swal.fire({ " +
                                "title: 'Invalid Password Format!', " +
                                "text: 'Password must be 8-15 characters long and include at least one lowercase letter, one uppercase letter, and one digit.', " +
                                "icon: 'error', " +
                                "confirmButtonText: 'OK' " +
                                "});";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertPassword", script, true);
                return; // Stop further execution if the password is invalid
            }

            // Validate first name (or username) is provided
            if (string.IsNullOrEmpty(FirstName))
            {
                string script = "Swal.fire({ " +
                                "title: 'Missing Information!', " +
                                "text: 'User Name is required.', " +
                                "icon: 'warning', " +
                                "confirmButtonText: 'OK' " +
                                "});";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertUsername", script, true);
                return;
            }

            // Check if passwords match
            if (Password != ConfirmPassword)
            {
                string script = "Swal.fire({ " +
                                "title: 'Password Mismatch!', " +
                                "text: 'Password and confirm password do not match.', " +
                                "icon: 'error', " +
                                "confirmButtonText: 'OK' " +
                                "});";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMismatch", script, true);
                return;
            }

            // If file does not exist, create it
            if (!File.Exists(file))
            {
                using (File.Create(file)) { }
            }

            // Append user data to file
            File.AppendAllText(file, UserData + Environment.NewLine);

            // Show success message and redirect
            string successScript = "Swal.fire({ " +
                                   "title: 'Registration Successful!', " +
                                   "text: 'You will be redirected to the login page.', " +
                                   "icon: 'success', " +
                                   "confirmButtonText: 'OK' " +
                                   "}).then((result) => { " +
                                       "if (result.isConfirmed) { " +
                                           "window.location = 'Login.aspx'; " +
                                       "} " +
                                   "});";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertSuccess", successScript, true);
        }
    }
}