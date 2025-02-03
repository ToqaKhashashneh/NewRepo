using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Website.Ayman
{
    public partial class contact_us_admin_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {
            string file = Server.MapPath("contact.txt");
            if (!File.Exists(file))
            {


                using (StreamWriter sw = new StreamWriter(file, true))

                    sw.WriteLine($"{email.Text},{name.Text},{message.Text}");
            }
            else
            {
                using (StreamWriter sw = new StreamWriter(file, true))

                    sw.WriteLine($"{email.Text},{name.Text},{message.Text}");
                {




                }
            }
        }
    }
}