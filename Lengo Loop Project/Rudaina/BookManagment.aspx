<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookManagment.aspx.cs" Inherits="Library_Website.Rudaina.BookManagment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <!-- إضافة Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />

    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>
<body id="page-top">
    <form id="form1" runat="server">
       <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="Dashboard.aspx">
                
                <div class="sidebar-brand-text mx-3">Lengoloop<sup></sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="Dashboard.aspx">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>
            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Book Management</span></a>
            </li>
             </li>
             <!-- Nav Item - Dashboard -->
             <li class="nav-item">
                 <a class="nav-link" href="/Ammar/AdminRooms.aspx">
                     <i class="fas fa-fw fa-tachometer-alt"></i>
                     <span>Room Management</span></a>
             </li>
                        <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="Requests.aspx">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Requests </span></a>
            </li>
             <!-- Nav Item - Dashboard -->
 <li class="nav-item active">
    <a class="nav-link" href="/Bilal/Contact(Admin).aspx">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Feedback</span></a>
</li>
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                  <!-- Sidebar Toggle (Topbar) -->
<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
    <i class="fa fa-bars"></i>
</button>

<!-- Topbar Search -->
<div class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
    <div class="input-group">
        <asp:textbox class="form-control bg-light border-0 small" placeholder="Search for..."
            aria-label="Search" aria-describedby="basic-addon2" id="txtSearch" runat="server" />
        <div class="input-group-append">
            <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary" Text="Search"
                        OnClick="btnSearch_Click" />
        </div>
    </div>
</div>


                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="~/Rudaina/img/undraw_profile_1.svg" alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg" alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg" alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
<img class="img-profile rounded-circle" src='<%= ResolveUrl("~/Rudaina/img/avatar.jpg") %>'>
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">


                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Add Book</h1>
                    <p class="mb-4">Add a new book to the system by filling in the required data.</p>

                    <!-- Add Book Button -->
                    <div class="container-fluid mt-4">
    <div class="d-flex align-items-center gap-3">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addBookModal"
            style="margin-bottom: 10px;">
            Add Book
        </button>
        <asp:Button ID="btnExport" CssClass="btn btn-primary" runat="server"
            Text="Export File" OnClick="btnExport_Click" style="margin-bottom: 10px;" />

      
  <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="ddlAvailabilityFilter_SelectedIndexChanged" AutoPostBack="true"  CssClass="form-select mb-2" 
            style="min-width: 200px; width: 80%;">
    <asp:ListItem Value="All">All</asp:ListItem>
    <asp:ListItem Value="Available">Available</asp:ListItem>
    <asp:ListItem Value="Rented">Rented</asp:ListItem>
</asp:DropDownList>

    </div>
</div>


                   

                   <!-- Modal for Adding Book -->
                <div class="modal fade" id="addBookModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Book</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

             

                <div class="mb-3">
                    <asp:Label ID="Label2" runat="server" CssClass="form-label" Text="Book Title"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Book Title"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label3" runat="server" CssClass="form-label" Text="Author"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Enter Author Name"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <asp:Label ID="lblPublishedDate" runat="server" CssClass="form-label" Text="Published Date"></asp:Label>
                    <asp:TextBox ID="txtPublishedDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label4" runat="server" CssClass="form-label" Text="Category"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Fiction" Value="Fiction"></asp:ListItem>
                        <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
                        <asp:ListItem Text="Philosophy" Value="Philosophy"></asp:ListItem>
                        <asp:ListItem Text="History" Value="History"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label5" runat="server" CssClass="form-label" Text="Language"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Arabic" Value="Arabic"></asp:ListItem>
                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label6" runat="server" CssClass="form-label" Text="Copies Available"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label7" runat="server" CssClass="form-label" Text="Rental Duration (days)"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label8" runat="server" CssClass="form-label" Text="Status"></asp:Label>
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Available" Value="Available"></asp:ListItem>
                        <asp:ListItem Text="Rented" Value="Rented"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label9" runat="server" CssClass="form-label" Text="Book Image"></asp:Label>
                    <asp:FileUpload ID="bookImage1" runat="server" CssClass="form-control" />
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <asp:Button ID="btnSaveBook" runat="server" class="btn btn-primary" Text="Save Book" OnClick="SaveBook_Click" />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
            </div>
        </div>
    </div>
</div>


<asp:GridView ID="gridBooks" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered"
    OnRowCommand="gridBooks_RowCommand" OnRowDeleting="gridBooks_RowDeleting" OnRowEditing="gridBooks_RowEditing"
    DataKeyNames="BookID">
    <Columns>
        <asp:TemplateField HeaderText="Book ID">
            <ItemTemplate>
                <asp:Label ID="lblBookID" runat="server" Text='<%# Eval("BookID") %>' Visible="true" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Title">
            <ItemTemplate>
                <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Author">
            <ItemTemplate>
                <asp:Label ID="lblAuthor" runat="server" Text='<%# Eval("Author") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Category">
            <ItemTemplate>
                <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Language">
            <ItemTemplate>
                <asp:Label ID="lblLanguage" runat="server" Text='<%# Eval("Language") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Copies Available">
            <ItemTemplate>
                <asp:Label ID="lblCopiesAvailable" runat="server" Text='<%# Eval("CopiesAvailable") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Rental Duration">
            <ItemTemplate>
                <asp:Label ID="lblRentalDuration" runat="server" Text='<%# Eval("RentalDuration") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Status">
            <ItemTemplate>
                <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
    <asp:Image ID="imgBook" runat="server" ImageUrl='<%# Eval("Image") %>' Width="100" Height="100" />
</ItemTemplate>

        </asp:TemplateField>
        <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                <asp:Button ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-primary mb-3" 
                    CommandArgument='<%# Eval("BookID") %>'  />
                <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger"
                    CommandArgument='<%# Eval("BookID") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>





<%--<asp:Button ID="btnAddBook" runat="server" Text="Add Book" OnClick="SaveBook_Click" CssClass="btn btn-success" />--%>
<asp:Label ID="Label10" runat="server" Visible="false"></asp:Label>
 <asp:Label ID="lblMessage1" runat="server" Visible="false"></asp:Label>
                    <div aria-live="polite" aria-atomic="true" class="position-fixed bottom-0 end-0 p-3">
    <div id="toastMessage" class="toast align-items-center text-white bg-danger border-0" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="d-flex">
            <div class="toast-body" id="toastBody">
                <!-- سيتم تحديث هذه الرسالة عبر JavaScript -->
            </div>
            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
    </div>
</div>


<!-- المودال لعرض وتعديل بيانات الكتاب -->
<div id="editBookModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="editBookModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editBookModalLabel">تعديل الكتاب</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- حقول تعديل الكتاب -->
                <div class="form-group">
                    <label for="txtBookID">Book ID</label>
                    <asp:TextBox ID="txtBookID" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtTitle">Title</label>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtAuthor">Author</label>
                    <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="ddlCategory">Category</label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Fiction" Value="Fiction"></asp:ListItem>
                        <asp:ListItem Text="Non-Fiction" Value="Non-Fiction"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="ddlLanguage">Language</label>
                    <asp:DropDownList ID="ddlLanguage" runat="server" CssClass="form-control">
                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                        <asp:ListItem Text="Arabic" Value="Arabic"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="txtCopiesAvailable">Copies Available</label>
                    <asp:TextBox ID="txtCopiesAvailable" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtRentalDuration">Rental Duration</label>
                    <asp:TextBox ID="txtRentalDuration" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="ddlStatus">Status</label>
                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Available" Value="Available"></asp:ListItem>
                        <asp:ListItem Text="Rented" Value="Rented"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
<asp:Button ID="saveBookChanges" runat="server" class="btn btn-primary" Text="Save changes" OnClick="SaveBookChanges_Click" />
            </div>
        </div>
    </div>
</div>



            </div>
        </div>
    </div>



                    <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="#">Logout</a>
                </div>
            </div>
        </div>
    </div>


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <script>
        function showToast(message, type = "danger", duration = 5000) {
            var toast = new bootstrap.Toast(document.getElementById("toastMessage"), {
                delay: duration  
            });

            document.getElementById("toastBody").innerText = message;

            var toastElement = document.getElementById("toastMessage");
            toastElement.className = `toast align-items-center text-white bg-${type} border-0`;

            toast.show();
        }

    </script>

       
    


     
    </form>

</body>
</html>