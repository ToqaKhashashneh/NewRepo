using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web.UI;
using Newtonsoft.Json;

namespace Library_Website.Bilal
{
    public partial class Contact_Admin_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                List<UserMessage> messages = GetMessagesFromFile();


                string jsonMessages = JsonConvert.SerializeObject(messages);


                jsonMessages = jsonMessages.Replace("'", "\\'");


                ScriptManager.RegisterStartupScript(this, GetType(), "LoadMessages", $"loadMessages({jsonMessages});", true);
            }
        }

        private List<UserMessage> GetMessagesFromFile()
        {
            List<UserMessage> messages = new List<UserMessage>();


            string filePath = Server.MapPath("~/Ayman/contact.txt");

            if (File.Exists(filePath))
            {
                using (StreamReader reader = new StreamReader(filePath))
                {
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        string[] parts = line.Split(',');
                        if (parts.Length == 3)
                        {
                            messages.Add(new UserMessage
                            {
                                Email = parts[0],
                                Name = parts[1],
                                Message = parts[2]
                            });
                        }
                    }
                }
            }

            return messages;
        }

        protected void reply_button_Click(object sender, EventArgs e)
        {
            string replyText = Request.Form["reply_input"];
            string userEmail = Request.Form["selectedUserEmail"];

            if (!string.IsNullOrEmpty(replyText) && !string.IsNullOrEmpty(userEmail))
            {
                string filePath = Server.MapPath("Response.txt");
                List<string> lines = new List<string>();


                if (File.Exists(filePath))
                {
                    lines = File.ReadAllLines(filePath).ToList();
                }


                lines.Add($"{userEmail},{replyText}");


                File.WriteAllLines(filePath, lines);
                
            }


            Response.Redirect(Request.RawUrl);
        }

    }

    public class UserMessage
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Message { get; set; }
    }
}
