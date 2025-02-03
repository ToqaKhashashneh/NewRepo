using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Website.Rudaina
{
    public partial class BookManagment : System.Web.UI.Page
    {
        private string filePath = "~/Rudaina/App_Data/books.txt";

        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
            if (!IsPostBack)
            {
                LoadBooks();
                LoadBooks("All"); 

            }
        }

        private void LoadBooks(string filterStatus = "All")
        {
            List<Book> books = new List<Book>();
            string fullFilePath = Server.MapPath(filePath);

            if (File.Exists(fullFilePath))
            {
                var lines = File.ReadAllLines(fullFilePath);
                foreach (var line in lines)
                {
                    var data = line.Split(',');
                    books.Add(new Book
                    {
                        BookID = data[0],
                        Title = data[1],
                        Author = data[2],
                        PublishedDate = data[3],
                        Category = data[4],
                        Language = data[5],
                        CopiesAvailable = data[6],
                        RentalDuration = data[7],
                        Status = data[8],
                        Image = data[9]
                    });
                }
            }

            // تصفية الكتب بناءً على الحالة المحددة
            if (filterStatus != "All")
            {
                books = books.Where(b => b.Status == filterStatus).ToList();
            }

            // ربط البيانات إلى GridView
            gridBooks.DataSource = books;
            gridBooks.DataBind();
        }
        protected void ddlAvailabilityFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedStatus = DropDownList4.SelectedValue;
            LoadBooks(selectedStatus);
        }

        protected void SaveBook_Click(object sender, EventArgs e)
        {
            string bookImage2 = "";
            try
            {
                string bookID = GetNextBookID();
                string title = TextBox2.Text.Trim();
                string author = TextBox3.Text.Trim();
                string publishedDate = txtPublishedDate.Text.Trim();
                string category = DropDownList1.SelectedValue;
                string language = DropDownList2.SelectedValue;
                string copiesAvailable = TextBox4.Text.Trim();
                string rentalDuration = TextBox5.Text.Trim();
                string status = DropDownList3.SelectedValue;
                string bookImage = bookImage1.PostedFile.FileName;

                if (bookImage1.HasFile)
                {

                    string folderPath = Server.MapPath("~/Rudaina/img");


                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    // اسم الصورة (استخدم GUID أو الوقت الحالي للتأكد من عدم وجود تكرار في الأسماء)
                    string fileName = Guid.NewGuid().ToString() + Path.GetExtension(bookImage1.PostedFile.FileName);


                    string fullPath = Path.Combine(folderPath, fileName);


                    bookImage1.PostedFile.SaveAs(fullPath);


                    bookImage2 = "~/Rudaina/img/" + fileName;
                }
                else
                {

                    bookImage2 = "default_image.jpeg";
                }

                string bookData = $"{bookID},{title},{author},{publishedDate},{category},{language},{copiesAvailable},{rentalDuration},{status},{bookImage2}";


                string fullFilePath = Server.MapPath(filePath);


                if (!File.Exists(fullFilePath))
                {
                    File.Create(fullFilePath).Close();
                }


                File.AppendAllText(fullFilePath, bookData + Environment.NewLine);


                string successScript = "showToast('Book added successfully!', 'success');";
                ClientScript.RegisterStartupScript(this.GetType(), "ToastSuccess", successScript, true);

                LoadBooks();
            }
            catch (Exception ex)
            {

                string errorScript = $"showToast('An error occurred while adding the book: {ex.Message}', 'danger');";
                ClientScript.RegisterStartupScript(this.GetType(), "ToastError", errorScript, true);
            }
        }


        private string GetNextBookID()
        {
            string fullFilePath = Server.MapPath(filePath);


            if (!File.Exists(fullFilePath) || new FileInfo(fullFilePath).Length == 0)
            {
                return "1";
            }


            var lines = File.ReadAllLines(fullFilePath);
            var lastLine = lines.Last();


            var lastBookID = lastLine.Split(',')[0];


            if (int.TryParse(lastBookID, out int lastID))
            {

                return (lastID + 1).ToString();
            }
            else
            {

                return "1";
            }
        }



        protected void gridBooks_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            string bookID = e.CommandArgument.ToString();
            if (e.CommandName == "Edit")
            {

            }
            else if (e.CommandName == "Delete")
            {

                LoadBooks();
            }
        }


        protected void gridBooks_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                string bookID = gridBooks.DataKeys[e.RowIndex].Value.ToString();

                string fullFilePath = Server.MapPath(filePath);

                var lines = File.ReadAllLines(fullFilePath).ToList();


                var lineToDelete = lines.FirstOrDefault(line => line.Split(',')[0] == bookID);
                if (lineToDelete != null)
                {
                    lines.Remove(lineToDelete);
                }

                File.WriteAllLines(fullFilePath, lines);


                string successScript = "showToast('Book deleted successfully!', 'success');";
                ClientScript.RegisterStartupScript(this.GetType(), "ToastSuccess", successScript, true);

                LoadBooks();
            }
            catch (Exception ex)
            {

                string errorScript = $"showToast('An error occurred while deleting the book: {ex.Message}', 'danger');";
                ClientScript.RegisterStartupScript(this.GetType(), "ToastError", errorScript, true);
            }
        }

        protected void gridBooks_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow row = gridBooks.Rows[e.NewEditIndex];


            string bookID = gridBooks.DataKeys[e.NewEditIndex].Value.ToString();
            string title = (row.FindControl("lblTitle") as Label).Text;
            string author = (row.FindControl("lblAuthor") as Label).Text;
            string category = (row.FindControl("lblCategory") as Label).Text;
            string language = (row.FindControl("lblLanguage") as Label).Text;
            string copiesAvailable = (row.FindControl("lblCopiesAvailable") as Label).Text;
            string rentalDuration = (row.FindControl("lblRentalDuration") as Label).Text;
            string status = (row.FindControl("lblStatus") as Label).Text;

            // Set the modal fields
            txtBookID.Text = bookID;
            txtTitle.Text = title;
            txtAuthor.Text = author;
            ddlCategory.SelectedValue = category;
            ddlLanguage.SelectedValue = language;
            txtCopiesAvailable.Text = copiesAvailable;
            txtRentalDuration.Text = rentalDuration;
            ddlStatus.SelectedValue = status;

            // Show the modal
            ScriptManager.RegisterStartupScript(this, this.GetType(), "showModal", "$('#editBookModal').modal('show');", true);
        }




        public Book GetBookByID(int bookID)
        {
            string filePath = Server.MapPath("~/App_Data/books.txt");

            if (!File.Exists(filePath))
            {
                return null; 
            }

            var lines = File.ReadAllLines(filePath);

            foreach (var line in lines)
            {
                var columns = line.Split(',');

                if (columns.Length == 8)
                {
                    int currentBookID = int.Parse(columns[0]);

                    if (currentBookID == bookID)
                    {
                        return new Book
                        {
                            BookID = currentBookID.ToString(),
                            Title = columns[1],
                            Author = columns[2],
                            Category = columns[3],
                            Language = columns[4],
                            CopiesAvailable = columns[5],
                            RentalDuration = columns[6],
                            Status = columns[7]
                        };
                    }
                }
            }

            return null;
        }

        protected void SaveBookChanges_Click(object sender, EventArgs e)
        {
            try
            {
                string bookID = txtBookID.Text.Trim();
                string title = txtTitle.Text.Trim();
                string author = txtAuthor.Text.Trim();
                string category = ddlCategory.SelectedValue;
                string language = ddlLanguage.SelectedValue;
                string copiesAvailable = txtCopiesAvailable.Text.Trim();
                string rentalDuration = txtRentalDuration.Text.Trim();
                string status = ddlStatus.SelectedValue;

                string fullFilePath = Server.MapPath(filePath);

                var lines = File.ReadAllLines(fullFilePath).ToList();

                for (int i = 0; i < lines.Count; i++)
                {
                    var data = lines[i].Split(',');
                    if (data[0] == bookID)
                    {
                        lines[i] = $"{bookID},{title},{author},{data[3]},{category},{language},{copiesAvailable},{rentalDuration},{status},{data[9]}";
                        break;
                    }
                }

                File.WriteAllLines(fullFilePath, lines);

                lblMessage.Visible = true;
                lblMessage.Text = "Edit done successfuly!";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                LoadBooks();
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text ="Error during edit book " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchText = txtSearch.Text.Trim().ToLower();
            List<Book> books = new List<Book>();
            string fullFilePath = Server.MapPath(filePath);

            if (File.Exists(fullFilePath))
            {
                var lines = File.ReadAllLines(fullFilePath);
                foreach (var line in lines)
                {
                    var data = line.Split(',');

                    if (data.Length > 1 && data[1].ToLower().Contains(searchText))
                    {
                        books.Add(new Book
                        {
                            BookID = data[0],
                            Title = data[1],
                            Author = data[2],
                            PublishedDate = data[3],
                            Category = data[4],
                            Language = data[5],
                            CopiesAvailable = data[6],
                            RentalDuration = data[7],
                            Status = data[8],
                            Image = data[9]
                        });
                    }
                }
            }

            gridBooks.DataSource = books;
            gridBooks.DataBind();

            if (books.Count == 0)
            {
                string noBooksScript = "showToast('No matching books found!', 'danger');";
                ClientScript.RegisterStartupScript(this.GetType(), "ToastNoBooks", noBooksScript, true);
            }
            else
            {
                string foundBooksScript = "showToast('Books found successfully!', 'success');";
                ClientScript.RegisterStartupScript(this.GetType(), "ToastFoundBooks", foundBooksScript, true);
            }
        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
            string selectedStatus = DropDownList4.SelectedValue;

            List<Book> books = new List<Book>();

            if (selectedStatus == "All")
            {
                books = GetAllBooks();  
            }
            else
            {
                books = GetAllBooks().Where(b => b.Status == selectedStatus).ToList();
            }

            if (books.Count == 0)
            {
                string script = "showToast('No books available to export!', 'danger');";
                ClientScript.RegisterStartupScript(this.GetType(), "ToastScript", script, true);
                return;
            }

            string fileName = "BooksData.csv";

            StringBuilder csvContent = new StringBuilder();
            csvContent.AppendLine("Book ID,Title,Author,Category,Language,Copies Available,Rental Duration,Status");

            foreach (var book in books)
            {
                csvContent.AppendLine($"{book.BookID},{book.Title},{book.Author},{book.Category},{book.Language},{book.CopiesAvailable},{book.RentalDuration},{book.Status}");
            }

            Response.Clear();
            Response.ContentType = "text/csv";
            Response.AddHeader("Content-Disposition", $"attachment;filename={fileName}");
            Response.Write(csvContent.ToString());
            Response.End();

            string successScript = "showToast('File exported successfully!', 'success');";
            ClientScript.RegisterStartupScript(this.GetType(), "ToastSuccess", successScript, true);
        }



        private List<Book> GetAllBooks()
        {
            List<Book> books = new List<Book>();
            string fullFilePath = Server.MapPath("~/Rudaina/App_Data/books.txt");

            if (File.Exists(fullFilePath))
            {
                var lines = File.ReadAllLines(fullFilePath);
                foreach (var line in lines)
                {
                    var data = line.Split(',');
                    books.Add(new Book
                    {
                        BookID = data[0],
                        Title = data[1],
                        Author = data[2],
                        Category = data[4],
                        Language = data[5],
                        CopiesAvailable = data[6],
                        RentalDuration = data[7],
                        Status = data[8]
                    });
                }
            }

            return books;
        }

        public class Book
        {
            public string BookID { get; set; }
            public string Title { get; set; }
            public string Author { get; set; }
            public string PublishedDate { get; set; }
            public string Category { get; set; }
            public string Language { get; set; }
            public string CopiesAvailable { get; set; }
            public string RentalDuration { get; set; }
            public string Status { get; set; }
            public string Image { get; set; }
        }
    }
}