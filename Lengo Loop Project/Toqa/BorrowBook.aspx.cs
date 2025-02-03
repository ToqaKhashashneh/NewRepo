using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Security.Cryptography;

namespace Library_Website.Toqa
{
    public partial class Borrow : System.Web.UI.Page
    {





        //protected void Page_Load(object sender, EventArgs e)
        //{



        //    string Search = txtSearch.Text;

        //    string BookID = lblBookID.Text;
        //    string Title = lblTitle.Text;
        //    string Author = lblAuthor.Text;
        //    string PublishDate = lblPublishedDate.Text;
        //    string Category = lblCategory.Text;
        //    string Language = lblLanguage.Text;
        //    string img = imgBook.ImageUrl;

        //    string file = Server.MapPath("BooksData.txt");

        //    if (File.Exists(file))
        //    {
        //        string[] lines = File.ReadAllLines(file);
        //        foreach (string line in lines)
        //        {
        //            if (!string.IsNullOrWhiteSpace(line)) // Skip empty lines
        //            {
        //                string[] parts = line.Split(',');

        //                if (parts.Length > 8 && parts[0].Trim() == Search.Trim())
        //                {
        //                    lblBookID.Text = parts[0];
        //                    lblTitle.Text = parts[1];
        //                    lblAuthor.Text = parts[2];
        //                    lblPublishedDate.Text = parts[3];
        //                    lblCategory.Text = parts[4];
        //                    lblLanguage.Text = parts[5];
        //                    imgBook.ImageUrl = parts[9];
        //                }
        //            }



        //        }


        //    }
        //}



        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve Book ID from Query String
            string bookId = Request.QueryString["bookid"] ?? "1"; ; // Correctly fetch from query string

            //lblMessage.Text = "Book ID received: " + bookId; // Debugging message

            if (!string.IsNullOrEmpty(bookId))
            {
                LoadBookDetails(bookId);
            }
            else
            {
                lblMessage.Text = "No book selected.";
            }
        }


        private void LoadBookDetails(string bookId)
        {
            //Response.Redirect("BorrowBook.aspx?bookid=1");
            string file = Server.MapPath("~/Rudaina/App_Data/books.txt");

            if (File.Exists(file))
            {
                string[] lines = File.ReadAllLines(file);
                foreach (string line in lines)
                {
                    if (!string.IsNullOrWhiteSpace(line)) // Skip empty lines
                    {
                        string[] parts = line.Split(',');

                        if (parts.Length > 8 && parts[0].Trim() == bookId.Trim())
                        {
                            lblBookID.Text = parts[0];
                            lblTitle.Text = parts[1];
                            lblAuthor.Text = parts[2];
                            lblPublishedDate.Text = parts[3];
                            lblCategory.Text = parts[4];
                            lblLanguage.Text = parts[5];
                            //imgBook.ImageUrl = parts[9];
                            string resolvedImageUrl = ResolveUrl("~/Rudaina/img/" + Path.GetFileName(parts[9]));
                            imgBook.ImageUrl = resolvedImageUrl;
                            return; // Exit loop once book is found
                        }
                    }
                }

                lblMessage.Text = "Book not found.";
            }
            else
            {
                lblMessage.Text = "Error: BooksData.txt not found.";
            }
        }










        protected void btnBorrow_Click(object sender, EventArgs e)
        {

            // ------------------------------- Update Availability Status -------------------------------

            string bookFile = Server.MapPath("~/Rudaina/App_Data/books.txt");
            string borrowFile = Server.MapPath("BorrowingData.txt");
            string userFile = Server.MapPath("~/Farah/LoginData.txt");

            string bookIdToUpdate = lblBookID.Text;
            bool bookFound = false;
            bool isAlreadyBorrowed = false;
            bool invalidDate = false;
            string alertMessage = "";
            string alertIcon = "success"; // Default icon

            // Read all book data and update availability status
            string[] bookLines = File.ReadAllLines(bookFile);
            List<string> updatedLines = new List<string>();
            string selectedBookDetails = "";

            foreach (string line in bookLines)
            {
                string[] parts = line.Split(',');

                if (parts.Length > 8 && parts[0] == bookIdToUpdate)  // Ensure correct book is checked
                {
                    if (parts[8] == "Reserved")
                    {
                        isAlreadyBorrowed = true;
                    }
                    else if (parts[8] == "Available")
                    {
                        parts[8] = "Pending"; // Update status
                        bookFound = true;
                        selectedBookDetails = string.Join(",", parts.Take(6)); // Save book details (ID, Title, Author, etc.)
                    }
                }

                // Reconstruct the line and add it to the updated list
                updatedLines.Add(string.Join(",", parts));
            }

            // Process the borrowing logic only if the book is available
            if (isAlreadyBorrowed)
            {
                alertMessage = "Book is already borrowed!";
                alertIcon = "error";
            }
            else if (bookFound)
            {
                // Update books.txt with new status
                File.WriteAllLines(bookFile, updatedLines);

                // Validate and add start date
                string startDate = "";
                if (DateTime.TryParse(txtStartDate.Text, out DateTime selectedStartDate))
                {
                    startDate = selectedStartDate.ToString("yyyy-MM-dd");
                }
                else
                {
                    invalidDate = true;
                }

                // Validate and add end date
                string endDate = "";
                if (DateTime.TryParse(txtEndDate.Text, out DateTime selectedEndDate))
                {
                    endDate = selectedEndDate.ToString("yyyy-MM-dd");
                }
                else
                {
                    invalidDate = true;
                }

                // Read user email
                string userEmail = "UnknownUser";
                if (File.Exists(userFile))
                {
                    string[] users = File.ReadAllLines(userFile);
                    if (users.Length > 0)
                    {
                        userEmail = users[0].Trim();
                    }
                }

                // Ensure BorrowingData.txt exists
                if (!File.Exists(borrowFile))
                {
                    File.Create(borrowFile).Close();
                }

                // Prepare the final formatted string
                string borrowEntry = $"{selectedBookDetails},{startDate},{endDate},{userEmail}{Environment.NewLine}";

                // Append all details to BorrowingData.txt
                File.AppendAllText(borrowFile, borrowEntry);

                // Set final confirmation message
                if (invalidDate)
                {
                    alertMessage = "There was an issue with date input!";
                    alertIcon = "warning";
                }
                else
                {
                    alertMessage = "Book borrowing confirmed! Status updated to Pending.";
                }
            }
            else
            {
                alertMessage = "Book is already borrowed!";
                alertIcon = "error";
            }

            // ---------------------------- Final SweetAlert (One Alert - Proper Execution) ----------------------------

            // Load SweetAlert script & execute in WebForms
            string script = $@"
    <script src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {{
            Swal.fire({{
                icon: '{alertIcon}',
                title: 'Library System',
                text: '{alertMessage}'
            }});
        }});
    </script>";

            ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", script, false);



        }
    }
}