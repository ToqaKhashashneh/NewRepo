using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Library_Website.Toqa;
namespace Library_Website.Rudaina

{
    public partial class Requests : System.Web.UI.Page
    {

        //    private string filePath = "~/Rudaina/App_Data/books.txt";

        //    protected global::System.Web.UI.WebControls.GridView GridViewRequests;


        //    protected void Page_Load(object sender, EventArgs e)
        //    {
        //        if (!IsPostBack)
        //        {
        //            LoadRequestsFromFile();
        //        }
        //    }


        //    private void LoadRequestsFromFile()
        //    {
        //        string filePath = Server.MapPath("~/Toqa/BorrowingData.txt");
        //        DataTable dt = new DataTable();


        //        dt.Columns.Add("ID");
        //        dt.Columns.Add("Title");
        //        dt.Columns.Add("BorrowerName");
        //        dt.Columns.Add("PublishedDate");
        //        dt.Columns.Add("Category");
        //        dt.Columns.Add("Language");
        //        dt.Columns.Add("RentalDate");
        //        dt.Columns.Add("ReturnDate");
        //        dt.Columns.Add("Email");

        //        if (File.Exists(filePath))
        //        {
        //            string[] lines = File.ReadAllLines(filePath);
        //            foreach (string line in lines)
        //            {
        //                string[] data = line.Split(',');
        //                if (data.Length == 9)
        //                {
        //                    dt.Rows.Add(data);
        //                }
        //            }
        //        }

        //        GridViewRequests.DataSource = dt;
        //        GridViewRequests.DataBind();
        //    }
        //    protected void GridViewRequests_RowCommand(object sender, GridViewCommandEventArgs e)
        //    {
        //        if (e.CommandName == "Accept" || e.CommandName == "Reject")
        //        {
        //            string selectedID = e.CommandArgument.ToString();
        //            string fullPath = Server.MapPath("~/Rudaina/App_Data/books.txt");

        //            if (File.Exists(fullPath))
        //            {
        //                var lines = File.ReadAllLines(fullPath).ToList();

        //                for (int i = 0; i < lines.Count; i++)
        //                {
        //                    var parts = lines[i].Split(',');


        //                    if (parts.Length > 8 && parts[0].Trim() == selectedID)
        //                    {
        //                        parts[8] = e.CommandName == "Accept" ? "Reserved" : "Available";
        //                        lines[i] = string.Join(",", parts.Select(p => p.Trim())); 
        //                        break;
        //                    }
        //                }

        //                File.WriteAllLines(fullPath, lines);
        //            }
        //        }
        //    }


        protected global::System.Web.UI.WebControls.GridView GridViewRequests;
      
     
            private string booksFilePath = "~/Rudaina/App_Data/books.txt"; // Books file
            private string borrowingDataPath = "~/Toqa/BorrowingData.txt"; // Borrowing requests file

            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    LoadRequestsFromFile();
                }
            }

            private void LoadRequestsFromFile()
            {
                string fullPath = Server.MapPath(borrowingDataPath);
                DataTable dt = new DataTable();

                // Define table structure
                dt.Columns.Add("ID");
                dt.Columns.Add("Title");
                dt.Columns.Add("Author");
                dt.Columns.Add("PublishedDate");
                dt.Columns.Add("Category");
                dt.Columns.Add("Language");
                dt.Columns.Add("RentalDate");
                dt.Columns.Add("ReturnDate");
                dt.Columns.Add("Email");

                if (File.Exists(fullPath))
                {
                    string[] lines = File.ReadAllLines(fullPath);
                    foreach (string line in lines)
                    {
                        string[] data = line.Split(',');
                        if (data.Length == 9)
                        {
                            dt.Rows.Add(data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7], data[8]);
                        }
                    }
                }

                GridViewRequests.DataSource = dt;
                GridViewRequests.DataBind();
            }

            protected void GridViewRequests_RowCommand(object sender, GridViewCommandEventArgs e)
            {
                if (e.CommandName == "Accept" || e.CommandName == "Reject")
                {
                    string selectedID = e.CommandArgument.ToString();
                    string newStatus = e.CommandName == "Accept" ? "Reserved" : "Available";

                    // ✅ Ensure book status updates in books.txt
                    if (UpdateBookAvailability(selectedID, newStatus))
                    {
                        // ✅ Refresh the table after updating the file
                        LoadRequestsFromFile();
                    }
                }
            }

            private bool UpdateBookAvailability(string bookId, string status)
            {
                string fullPath = Server.MapPath(booksFilePath);

                if (!File.Exists(fullPath)) return false; // ✅ Avoids crash if file is missing

                List<string> lines = File.ReadAllLines(fullPath).ToList();
                bool updated = false;

                for (int i = 0; i < lines.Count; i++)
                {
                    string[] parts = lines[i].Split(',');

                    // ✅ Ensure we update the correct book ID
                    if (parts.Length > 8 && parts[0].Trim() == bookId)
                    {
                        parts[8] = status;
                        lines[i] = string.Join(",", parts.Select(p => p.Trim()));
                        updated = true;
                        break; // ✅ Stops after finding the correct book
                    }
                }

                if (updated)
                {
                    File.WriteAllLines(fullPath, lines);
                    return true;
                }

                return false; // If no update was made
            }
        }
    }








