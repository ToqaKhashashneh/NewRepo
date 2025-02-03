<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Profile.aspx.cs" Inherits="Library_Website.Bilal.Edit_Profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Profile</title>

    <style>
        .btn-khaki {
            background-color: #7d0ed7ba !important;
            color: #ffffff !important;
            border: /1px solid/ #003366 !important;
        }

            .btn-khaki:hover {
                background-color: #6a00a3 !important;
                color: #ffffff !important;
            }

        #form1 {
            margin-top: 120px;
        }
    </style>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


    <link href="\Rudaina\css\bootstrap.min.css" rel="stylesheet">

    <link href="\Rudaina\css\style.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        .btn-link {
    color:#7d0ed7ba!important;
    text-decoration: none !important;
}
        a{
    text-decoration:none!important;
}
    </style>
</head>

<body>
    <form id="form1" runat="server">
                     <!-- Navbar start -->
       <div class="container-fluid fixed-top">
           
           <div class="container px-0">
               <nav class="navbar navbar-light bg-white navbar-expand-xl">
                   <a href="index.html" class="navbar-brand">
                       <h1 class="text-primary display-6" style="color: #7d0ed7ba
!important">Lengo Loop</h1>
                   </a>
                   <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                       <span class="fa fa-bars text-primary"></span>
                   </button>
                   <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                       <div class="navbar-nav mx-auto">
                           <a href="/Rudaina/Home1.aspx" class="nav-item nav-link">Home</a>
                           <a href="/Farah/AboutUs.aspx" class="nav-item nav-link">About</a>
                           <a href="/Toqa/All books.aspx" class="nav-item nav-link">Books</a>
                           <a href="/Ammar/Rooms.aspx" class="nav-item nav-link">Rooms</a>
                           <a href="/Ayman/contact_us(user).aspx" class="nav-item nav-link">Contact Us</a>

                       </div>
                       <%--<a href="/Farah/Login.aspx" style="color: #7d0ed7ba" class="nav-item nav-link">Sign in</a>
                <a href="/Farah/Registation.aspx" style="color: #7d0ed7ba" class="nav-item nav-link">Sign Up</a>--%>
                   </div>
                   <%--                <div class="d-flex m-3 me-0">
            <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>--%>
                   <%--   <a href="#" class="position-relative me-4 my-auto">
                <i class="fa fa-shopping-bag fa-2x"></i>
                <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
            </a>--%>
                   <a href="Profile.aspx" class="my-auto">
                       <i class="fas fa-user fa-2x" style="color: #7d0ed7ba !important"></i>
                   </a>
                   <a href='<%= ResolveUrl("~/Rudaina/Home1.aspx") %>' class="btn btn-primary" style="background-color: #7d0ed7ba; border: none; margin-left: 40px;">Log Out</a>

           </div>
       </div>
  
       </nav>
       <!-- Navbar End -->
        <div class="container p-5 rounded border mt-5 w-25">
            <div class="mb-3">
                <label for="fullName" class="form-label">First Name</label>
                <asp:TextBox runat="server" ID="name" CssClass="form-control"></asp:TextBox>

                <label for="fullName" class="form-label">Last Name</label>
                <asp:TextBox runat="server" ID="Lname" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <asp:TextBox runat="server" ID="email" ReadOnly CssClass="form-control"></asp:TextBox>
            </div>

            <div class="d-flex flex-row align-items-center mb-4">
            </div>


            <div class="row justify-content-between">
                <asp:Button ID="cancel" runat="server" class="col-4 btn btn-secondary" OnClick="cancel_click" Text="Cancel"></asp:Button>
                <asp:Button ID="saveCanghes" runat="server" class="col-6 btn btn-khaki" OnClick="saveCanghes_Click" Text="Save Changes"></asp:Button>
            </div>
        </div>

         <!-- Footer Start -->
 <div class="container-fluid  text-white-50 footer pt-5 mt-5" style="background-color: #000000;">
     <div class="container py-5">
         <div class="pb-4 mb-4" style="border-bottom: 1px solid rgba(226, 175, 24, 0.5);">
             <div class="row g-4">
                 <div class="col-lg-3">
                     <a href="#">
                         <h1 class="text-primary mb-0" style="color:#7d0ed7ba!important;">Lengo Loop</h1>
                         <p class="text-secondary mb-0">Educational Institue</p>
                     </a>
                 </div>
                 <div class="col-lg-6">
                     <div class="position-relative mx-auto">
                         <input class="form-control border-0 w-100 py-3 px-4 rounded-pill" type="number" placeholder="Your Email">
                         <button type="submit" class="btn btn-primary border-0 border-secondary py-3 px-4 position-absolute rounded-pill text-white" style="top: 0; right: 0; background-color:#7d0ed7ba !important;"">Subscribe Now</button>
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
                     <p class="mb-4">
                         typesetting, remaining essentially unchanged. It was 
             popularised in the 1960s with the like Aldus PageMaker including of Lorem Ipsum.
                     </p>
                     <a href="" class="btn border-secondary py-2 px-4 rounded-pill text-primary" style="color:#7d0ed7ba !important;">Read More</a>
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
                     <p>Email: Lengo Loop@gmail.com</p>
                     <p>Phone: +0123 4567 8910</p>
                     <p>Payment Accepted</p>
                     <img src="img/payment.png" class="img-fluid" alt="">
                 </div>
             </div>
         </div>
     </div>
 </div>
         <!-- Footer End -->

    </form>
</body>
</html>
