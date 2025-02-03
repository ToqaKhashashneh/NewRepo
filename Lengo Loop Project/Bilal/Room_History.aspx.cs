using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Library_Website.Bilal
{
    public partial class Room_History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/Ammar/Reservations.txt");
            string DataLogin = Server.MapPath("~/Farah/LoginData.txt");
            string Login = File.ReadAllText(DataLogin);
            string Email = Login;
       



            string[] AllData = File.ReadAllLines(path);


            string tableData = "<table border='1'>";
            tableData += "<tr><th>ID</th><th>Start Date</th><th>Time</th><th>Email</th><th>Status</th>";


            foreach (var f in AllData)
            {
                string[] Data = f.Split('|');


                if (Email == Data[3])
                {
                    tableData += "<tr>";


                    foreach (var data in Data)
                    {
                        tableData += $"<td>{data}</td>";
                    }

                    tableData += "</tr>";
                }
            }

            tableData += "</table>";

            historyContainer.InnerHtml = tableData;
        }
    }
}