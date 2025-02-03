using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Website.Ammar
{
    public partial class Requests : System.Web.UI.Page
    {
        private string reservationsFilePath;

        protected void Page_Load(object sender, EventArgs e)
        {
            reservationsFilePath = Server.MapPath("Reservations.txt");

            if (!IsPostBack)
            {
                LoadReservations();
            }
        }

        private void LoadReservations()
        {
            List<Reservation> reservations = new List<Reservation>();

            if (File.Exists(reservationsFilePath))
            {
                string[] lines = File.ReadAllLines(reservationsFilePath);
                foreach (string line in lines)
                {
                    string[] data = line.Split('|');
                    if (data.Length >= 5) // Now expecting 5 fields
                    {
                        reservations.Add(new Reservation
                        {
                            RoomID = data[0],
                            Date = data[1],
                            StartTime = data[2],
                            Status = data[4],
                            Email = data[3] // Added email field
                        });
                    }
                }
            }

            gvReservations.DataSource = reservations;
            gvReservations.DataBind();
        }

        protected void gvReservations_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string roomId = e.CommandArgument.ToString();

            if (e.CommandName == "Accept" || e.CommandName == "Reject")
            {
                string newStatus = (e.CommandName == "Accept") ? "Reserved" : "Rejected";
                UpdateReservationStatus(roomId, newStatus);
            }
            else if (e.CommandName == "ApproveCancel")
            {
                RemoveReservation(roomId);
            }
            else if (e.CommandName == "RejectCancel")
            {
                UpdateReservationStatus(roomId, "Reserved");
            }
        }

        private void UpdateReservationStatus(string roomId, string newStatus)
        {
            if (!File.Exists(reservationsFilePath))
                return;

            string[] lines = File.ReadAllLines(reservationsFilePath);
            List<string> updatedLines = new List<string>();

            foreach (string line in lines)
            {
                string[] data = line.Split('|');
                if (data.Length >= 5 && data[0] == roomId) // Ensure email field is not lost
                {
                    data[4] = newStatus;
                }
                updatedLines.Add(string.Join("|", data));
            }

            File.WriteAllLines(reservationsFilePath, updatedLines);
            LoadReservations();
        }

        private void RemoveReservation(string roomId)
        {
            if (!File.Exists(reservationsFilePath))
                return;

            //string[] lines = File.ReadAllLines(reservationsFilePath);
            string[] lines = File.ReadAllLines(reservationsFilePath);
            List<string> updatedLines = new List<string>();

            foreach (string line in lines)
            {
                string[] data = line.Split('|');
                if (data.Length >= 5 && data[0] == roomId && data[4] == "Cancel Pending")
                {
                    continue; // Remove the reservation
                }
                updatedLines.Add(line);
            }

            File.WriteAllLines(reservationsFilePath, updatedLines);
            LoadReservations();
        }
    }

    public class Reservation
    {
        public string RoomID { get; set; }
        public string Date { get; set; }
        public string StartTime { get; set; }
        public string Status { get; set; }
        public string Email { get; set; } // Added email field
    }
}
