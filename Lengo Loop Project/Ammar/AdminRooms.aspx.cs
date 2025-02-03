using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Website.Ammar
{
    public partial class AdminRooms : System.Web.UI.Page
    {
        private string roomsFilePath;

        protected void Page_Load(object sender, EventArgs e)
        {
            roomsFilePath = Server.MapPath("RoomsData.txt");

            if (!IsPostBack)
            {
                LoadRooms();
            }
        }

        private void LoadRooms()
        {
            RoomContainer.Controls.Clear(); // Clear existing controls before reloading

            if (!File.Exists(roomsFilePath))
                return;

            string[] lines = File.ReadAllLines(roomsFilePath);
            foreach (string line in lines)
            {
                string[] data = line.Split('|');
                if (data.Length >= 6)
                {
                    string roomId = data[0];
                    string roomName = data[1];
                    string capacity = data[2];
                    string description = data[3];
                    string imagePath = data[4];
                    string status = data[5];

                    // Create Room Card
                    Panel cardPanel = new Panel { CssClass = "card shadow-lg m-2", Width = 300 };

                    // Image
                    Image img = new Image
                    {
                        ImageUrl = imagePath,
                        CssClass = "card-img-top",
                        Width = Unit.Percentage(100),
                        Height = 200,
                        AlternateText = roomName
                    };
                    cardPanel.Controls.Add(img);

                    // Card Body
                    Panel bodyPanel = new Panel { CssClass = "card-body" };

                    // Room Name
                    Label lblRoomName = new Label
                    {
                        Text = "<h5 class='card-title'>" + roomName + "</h5>",
                        EnableViewState = false
                    };
                    bodyPanel.Controls.Add(lblRoomName);

                    // Room Details
                    Label lblDetails = new Label
                    {
                        Text = $"<p class='card-text'>Capacity: {capacity} <br />Status: {status}</p>",
                        EnableViewState = false
                    };
                    bodyPanel.Controls.Add(lblDetails);

                    // Buttons Container
                    Panel buttonPanel = new Panel { CssClass = "d-flex justify-content-between mt-2" };

                    // Edit Button
                    Button btnEdit = new Button
                    {
                        Text = "Edit",
                        CssClass = "btn btn-primary",
                        PostBackUrl = "EditRoom.aspx?roomId=" + roomId
                    };
                    buttonPanel.Controls.Add(btnEdit);

                    // Delete Button with JavaScript Confirmation
                    Button btnDelete = new Button
                    {
                        Text = "Delete",
                        CssClass = "btn btn-danger ms-2",
                        OnClientClick = $"return confirmDelete('{roomId}');"  // JavaScript Function
                    };
                    buttonPanel.Controls.Add(btnDelete);

                    bodyPanel.Controls.Add(buttonPanel);
                    cardPanel.Controls.Add(bodyPanel);
                    RoomContainer.Controls.Add(cardPanel);
                }
            }
        }

        protected void DeleteRoom(string roomId)
        {
            if (!File.Exists(roomsFilePath))
                return;

            List<string> updatedLines = new List<string>();
            string[] lines = File.ReadAllLines(roomsFilePath);

            foreach (string line in lines)
            {
                string[] data = line.Split('|');
                if (data[0] != roomId)  // Exclude the room being deleted
                {
                    updatedLines.Add(line);
                }
            }

            File.WriteAllLines(roomsFilePath, updatedLines);
            LoadRooms(); // Refresh the list after deletion
        }

        protected void ConfirmDelete_Click(object sender, EventArgs e)
        {
            string roomId = HiddenFieldRoomId.Value;  // Get Room ID from hidden field
            if (!string.IsNullOrEmpty(roomId))
            {
                DeleteRoom(roomId);
            }
        }

        protected void Export_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("RoomsData.txt"); // Path to your file
            if (!File.Exists(filePath))
            {
                Response.Write("File not found.");
                return;
            }

            // Read file content
            string[] lines = File.ReadAllLines(filePath);

            // Start building the HTML table
            string html = "<table border='1' style='width:100%; border-collapse:collapse;'>";
            html += "<tr><th>ID</th><th>Room Name</th><th>Capacity</th><th>Description</th><th>Image</th><th>Availability</th></tr>";

            foreach (string line in lines)
            {
                string[] details = line.Split('|');
                if (details.Length < 5) continue;

                html += "<tr>";
                foreach (var detail in details)
                {
                    html += $"<td>{detail}</td>";
                }
                html += "</tr>";
            }
            html += "</table>";

            // Export as an HTML file
            Response.Clear();
            Response.ContentType = "application/vnd.ms-excel"; // Excel export
            Response.AddHeader("content-disposition", "attachment;filename=RoomExport.xls");
            Response.Write(html);
            Response.End();
        }
    }
}
