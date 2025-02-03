<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="Library_Website.Ammar.Rooms" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rooms</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />



        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<link href="\Rudaina\css\bootstrap.min.css" rel="stylesheet">

<link href="\Rudaina\css\style.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
           
        }

        .card {
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
            text-align: center;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-img-top {
            height: 160px;
            object-fit: cover;
        }

        .card-title {
            font-weight: bold;
            font-size: 1.1rem;
        }

        .time-picker-panel {
            display: none;
        }

        .time-picker-panel.open {
            display: block; 
        }
    </style>
</head>
<body>


        <!-- Navbar start -->
<div class="container-fluid fixed-top">
    <div class="container topbar bg-primary d-none d-lg-block"  style="visibility:hidden!important;">
        <div class="d-flex justify-content-between">
            <div class="top-info ps-2">
                <small class="me-3"><i class="fas fa-map-marker-alt me-2 text-secondary"></i> <a href="#" class="text-white">123 Street, New York</a></small>
                <small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a href="#" class="text-white">Email@Example.com</a></small>
            </div>
            <div class="top-link pe-2">
                <a href="#" class="text-white"><small class="text-white mx-2">Privacy Policy</small>/</a>
                <a href="#" class="text-white"><small class="text-white mx-2">Terms of Use</small>/</a>
                <a href="#" class="text-white"><small class="text-white ms-2">Sales and Refunds</small></a>
            </div>
        </div>
    </div>
    <div class="container px-0">
        <nav class="navbar navbar-light bg-white navbar-expand-xl">
            <a href="index.html" class="navbar-brand"><h1 class="text-primary display-6">Lengo Loop</h1></a>
            <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars text-primary"></span>
            </button>
          
                    
                          <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
         <div class="navbar-nav mx-auto">
             <a href="/Rudaina/Home1.aspx" class="nav-item nav-link active">Home</a>
             <a href="/Farah/AboutUs.aspx" class="nav-item nav-link">About</a>
             <a href="/Toqa/All books.aspx" class="nav-item nav-link">Books</a>
               <a href="/Ammar/Rooms.aspx" class="nav-item nav-link">Rooms</a>
                 <a href="/Ayman/contact_us(user).aspx" class="nav-item nav-link">Contact Us</a>
      
             </div>
                    
                    </div>
                   <%-- <a href="contact.html" class="nav-item nav-link">Contact</a>
                </div>
                <div class="d-flex m-3 me-0">
                    <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>
                    <a href="#" class="position-relative me-4 my-auto">
                        <i class="fa fa-shopping-bag fa-2x"></i>
                        <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                    </a>--%>
                 

                           <a href="/Bilal/Profile.aspx" class="my-auto">
           <i class="fas fa-user fa-2x"></i>
       </a>
     

<a href='<%= ResolveUrl("~/Rudaina/Home1.aspx") %>' class="btn btn-primary" style="background-color: #7d0ed7ba; border: none; margin-left: 40px;">Log Out</a>
               
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- Navbar End -->


    <form id="form1" runat="server" style="margin-top: 187px;">
        <div class="container my-4">
            <h2 class="text-center mb-4" style="color: #7d0ed7ba">Available Rooms</h2>
            
          
            <div class="row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 g-4">
                <asp:Repeater ID="rptRooms" runat="server" OnItemDataBound="rptRooms_ItemDataBound">
                    <ItemTemplate>
                        <div class="col">
                            <div class="card h-100">
                                <img src='<%# Eval("Image") %>' class="card-img-top" alt="Room Image" onerror="this.src='/Uploads/default-placeholder.png';" />
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("Name") %></h5>
                                    <p class="card-text">Capacity: <%# Eval("Capacity") %></p>
                                    <p class="card-text"><%# Eval("Description") %></p>

                                    <asp:Label ID="lblStatus" runat="server" CssClass="badge bg-info"></asp:Label>

                                    <asp:Button ID="btnReserve" runat="server" Text="Reserve" CssClass="btn btn-primary btn-sm"
                                        CommandArgument='<%# Eval("ID") %>'
                                        Enabled='<%# Eval("Status").ToString() != "Pending" %>'
                                        OnClientClick="toggleTimePicker(this); return false;" />

                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel Reservation" CssClass="btn btn-danger btn-sm mt-2"
                                        Visible='<%# Eval("Status").ToString() == "Reserved" || Eval("Status").ToString() == "Cancel Pending" %>'
                                        Enabled='<%# Eval("Status").ToString() != "Cancel Pending" %>'
                                        CommandArgument='<%# Eval("ID") %>'
                                        OnClientClick="return confirmCancel();" OnClick="btnCancelReservation_Click" />

                                    <asp:Panel ID="pnlTimePicker" runat="server" CssClass="mt-3 time-picker-panel">
                                        <label for="calDatePicker">Select Date:</label>
                                        <asp:Calendar ID="calDatePicker" runat="server"></asp:Calendar>
                                        <label for="ddlStartTime">Select Start Time:</label>
                                        <asp:DropDownList ID="ddlStartTime" runat="server" CssClass="form-select"></asp:DropDownList>
                                        <asp:Button ID="btnConfirmReserve" runat="server" Text="Confirm Reservation" CssClass="btn btn-success mt-2 btn-sm"
                                            OnClick="btnConfirmReserve_Click" />
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>


         <!-- Footer Start -->
<div class="container-fluid  text-white-50 footer pt-5 mt-5" style="background-color: #000000;">
    <div class="container py-5">
        <div class="pb-4 mb-4" style="border-bottom: 1px solid rgba(226, 175, 24, 0.5) ;">
            <div class="row g-4">
                <div class="col-lg-3">
                    <a href="#">
                        <h1 class="text-primary mb-0">Lengo Loop</h1>
                        <p class="text-secondary mb-0">Educational Institue</p>
                    </a>
                </div>
                <div class="col-lg-6">
                    <div class="position-relative mx-auto">
                        <input class="form-control border-0 w-100 py-3 px-4 rounded-pill" type="number" placeholder="Your Email">
                        <button type="submit" class="btn btn-primary border-0 border-secondary py-3 px-4 position-absolute rounded-pill text-white" style="top: 0; right: 0;">Subscribe Now</button>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="d-flex justify-content-end pt-3">
                        <a class="btn  btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-secondary btn-md-square rounded-circle" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <div class="footer-item">
                    <h4 class="text-light mb-3">Why People Like us!</h4>
                    <p class="mb-4">typesetting, remaining essentially unchanged. It was 
                        popularised in the 1960s with the like Aldus PageMaker including of Lorem Ipsum.</p>
                    <a href="" class="btn border-secondary py-2 px-4 rounded-pill text-primary">Read More</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="d-flex flex-column text-start footer-item">
                    <h4 class="text-light mb-3">Shop Info</h4>
                    <a class="btn-link" href="">About Us</a>
                    <a class="btn-link" href="">Contact Us</a>
                    <a class="btn-link" href="">Privacy Policy</a>
                    <a class="btn-link" href="">Terms & Condition</a>
                    <a class="btn-link" href="">Return Policy</a>
                    <a class="btn-link" href="">FAQs & Help</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="d-flex flex-column text-start footer-item">
                    <h4 class="text-light mb-3">Account</h4>
                    <a class="btn-link" href="">My Account</a>
                    <a class="btn-link" href="">Shop details</a>
                    <a class="btn-link" href="">Shopping Cart</a>
                    <a class="btn-link" href="">Wishlist</a>
                    <a class="btn-link" href="">Order History</a>
                    <a class="btn-link" href="">International Orders</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="footer-item">
                    <h4 class="text-light mb-3">Contact</h4>
                    <p>Address: 1429 Netus Rd, NY 48247</p>
                    <p>Email: LengoLoop@gmail.com</p>
                    <p>Phone: +0123 4567 8910</p>
                    <p>Payment Accepted</p>
                    <img src="img/payment.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->

    <script>
        function toggleTimePicker(button) {
            var panel = button.nextElementSibling;
            panel.classList.toggle('open');
        }

        function confirmCancel() {
            return confirm("Are you sure you want to cancel this reservation? This will require admin approval.");
        }
    </script>

</body>
</html>
