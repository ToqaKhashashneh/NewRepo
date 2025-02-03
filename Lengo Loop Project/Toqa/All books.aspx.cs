using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Website.Toqa
{
    public partial class All_books : System.Web.UI.Page
    {







        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Ensure books load only once
            {
                LoadBooks("","all");
            }
        }

        private void LoadBooks(string searchQuery, string filterOption)
        {

            string file = Server.MapPath("~/Rudaina/App_Data/books.txt");

            // Clear previous content
            booksContainer.InnerHtml = "";

            if (File.Exists(file))
            {
                string[] books = File.ReadAllLines(file);
                StringBuilder bookCards = new StringBuilder();

                foreach (string book in books)
                {
                    // Skip empty lines
                    if (string.IsNullOrWhiteSpace(book))
                        continue;

                    string[] bookData = book.Split(',');
                    bool isAvailable = bookData[8].Equals("Available", StringComparison.OrdinalIgnoreCase);
                    if (!string.IsNullOrEmpty(searchQuery) && bookData[1].IndexOf(searchQuery, StringComparison.OrdinalIgnoreCase).Equals(-1))
                    {
                        continue;
                    }

                    if (filterOption == "available" && !isAvailable)
                    {
                        continue;
                    }

                    if (filterOption == "notAvailable" && isAvailable)
                    {
                        continue;
                    }
                    // Ensure bookData has at least 10 elements before accessing indexes
                    if (bookData.Length < 10)
                        continue;

                    // Extract book details safely
                    string bookId = bookData[0].Trim();
                    string title = bookData[1].Trim();
                    string author = bookData[2].Trim();
                    string publishedDate = bookData[3].Trim();
                    string category = bookData[4].Trim();
                    string language = bookData[5].Trim();
                    string availability = bookData[8].Trim(); // "Available" or "Not Available"
                    string availabilityLower = availability.ToLower();

                    // Extract image path safely
                    string imageUrl = bookData[9].Trim();
                    if (string.IsNullOrEmpty(imageUrl))
                    {
                        imageUrl = "default.jpg"; // Use a default image if no image is provided
                    }

                    // Ensure proper formatting for image paths
                    string resolvedImageUrl = ResolveUrl("~/Rudaina/img/" + Path.GetFileName(imageUrl));

                    // Filtering logic for new availability statuses
                    if (filterOption == "available" && availabilityLower != "available")
                        continue;
                    if (filterOption == "pending" && availabilityLower != "pending")
                        continue;
                    if (filterOption == "reserved" && availabilityLower != "reserved")
                        continue;

                    // Set availability class (C# 7.3 compatible)
                    string availabilityClass = "text-secondary"; // Default color
                    if (availabilityLower == "available")
                        availabilityClass = "text-success"; // Green
                    else if (availabilityLower == "pending")
                        availabilityClass = "text-warning"; // Orange
                    else if (availabilityLower == "reserved")
                        availabilityClass = "text-danger"; // Red

                    // Disable "Read More" button for reserved or pending books
                    string buttonDisabled = (availabilityLower == "reserved" || availabilityLower == "pending") ? "disabled" : "";
                    // Append book card **without opening new row**
                    bookCards.Append($@"
            <div class='col-md-4 mb-4'>
                <div class='card p-2'>
                    <img src='{resolvedImageUrl}' class='card-img-top' alt='Book Image' height='200' />
                    <div class='card-body'>
                        <h5 class='card-title'>{title}</h5>
                        <p class='card-text'><strong>Author:</strong> {author}</p>
                        <p class='card-text'><strong>Published:</strong> {publishedDate}</p>
                        <p class='card-text'><strong>Category:</strong> {category}</p>
                        <p class='card-text'><strong>Language:</strong> {language}</p>
                        <p class='{availabilityClass}'><strong>{availability}</strong></p>                        <!-- Borrow Button -->
                        <a href='BorrowBook.aspx?bookid={bookId}' class='btn btn-primary' style='background-color: #7d0ed7ba; border: none;'>Borrow Book</a>
                    </div>
                </div>
            </div>
        ");
                }

                // Inject book cards into the container at once
                booksContainer.InnerHtml = bookCards.ToString();
            }
            else
            {
                booksContainer.InnerHtml = "<p>No books found.</p>";
            }

        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string Search = txtSearch.Text.Trim();
            string filterOption = filterOptions.SelectedValue;
            LoadBooks(Search, filterOption);




        }

        protected void toqa_Click(object sender, EventArgs e)
        {
            Response.Redirect("BorrowBook.aspx");
        }

      
    }
}
