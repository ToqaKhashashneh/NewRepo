<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BorrowBook.aspx.cs" Inherits="Library_Website.Toqa.Borrow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<link href="\Rudaina\css\bootstrap.min.css" rel="stylesheet">

<link href="\Rudaina\css\style.css" rel="stylesheet">
    <title></title>

<style>

            .btn-link {
    color:#7d0ed7ba!important;
    text-decoration: none !important;
}
        a{
    text-decoration:none!important;
}
        .container {
            margin-top: 50px;
        }

        .borrow-container {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            gap: 20px;
        }

        .book-card {
            flex: 1;
            max-width: 400px;
            text-align: center;
        }

        .book-info {
            flex: 2;
                margin-left: 19vw;
        }

        .book-card img {
            width: 100%;
            height: auto;
            border-radius: 10px;
                margin-left: 6vw;    
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table td {
            padding: 8px;
        }
        

        label {
    display: block;
    margin-top: 10px;
}
input[type="datetime-local"] {
    width: calc(100% - 131px);
    padding: 10px;
    margin-top: 5px;
    border-radius: 5px;
    border: 1px solid #ccc;
}
input[type="submit"], button {
    background-color: #7d0ed7ba; 
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
}
input[type="submit"]:hover, button:hover {
    background-color: #7d0ed7ba;  
}
.message {
    margin-top: 20px;
    color: green; /* Success message color */
}



    </style>



</head>
<body>
    <form id="form1" runat="server">
        <div>

            
<!-- Navbar start -->
            <div class="container-fluid fixed-top"style ="background: white;     margin-top: -3vw;">
     <div class="container topbar bg-primary d-none d-lg-block"  style="display: none !important;">
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
                    <%--<a href="contact.html" class="nav-item nav-link">Contact</a>--%>
                </div>
                <div class="d-flex m-3 me-0">
                 <%--   <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>
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







<%--
              <div class="container mt-5">
      <div class="row justify-content-center">
          <div class="col-md-6">
              <div class="input-group">
                  <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Insert Book ID..." />
                  <asp:Button ID="btnSearch" runat="server" Text="🔍" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                  <asp:Label ID="searchresult" runat="server" Visible="false" />

              </div>
          </div>
      </div>
  </div>--%>


   <div class="borrow-container" style="        margin-top: 11vw;"> 
               
                <div class="book-card">
                    <%--<div class="card shadow-lg">--%>
                        <asp:Image ID="imgBook" runat="server"  CssClass="card-img-top" />

                        <div class="card-body">
                            <h5 class="card-title"></h5>
                        </div>
                <%--    </div>--%>
                </div>


       <div class="book-info">
           <h2>Book Information</h2>
           <table class="table table-bordered">
               <tr>
                   <td><strong>ID:</strong></td>
                   <td>
                       <asp:Label ID="lblBookID" runat="server" ></asp:Label></td>
               </tr>
               <tr>
                   <td><strong>Title:</strong></td>
                   <td>
                       <asp:Label ID="lblTitle" runat="server" ></asp:Label></td>
               </tr>
               <tr>
                   <td><strong>Author:</strong></td>
                   <td>
                       <asp:Label ID="lblAuthor" runat="server"> </asp:Label></td>
               </tr>
               <tr>
                   <td><strong>Published Date:</strong></td>
                   <td>
                       <asp:Label ID="lblPublishedDate" runat="server" ></asp:Label></td>
               </tr>
               <tr>
                   <td><strong>Category:</strong></td>
                   <td>
                       <asp:Label ID="lblCategory" runat="server" ></asp:Label></td>
               </tr>

               <tr>
                   <td><strong>Language:</strong></td>
                   <td>
                       <asp:Label ID="lblLanguage" runat="server" ></asp:Label></td>
               </tr>
           </table>






           <h2>Borrow Time Selector</h2>
            <label for="startDate">Start Date/Time:</label>
            <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date" ></asp:TextBox>

            <label for="endDate">End Date/Time:</label>
            <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date"></asp:TextBox>

            <asp:Button ID="btnBorrow" runat="server" Text="Borrow Book" OnClick="btnBorrow_Click" />

            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>




  
     
           
       
       
       
       </div>

                       </div>

                                   <!-- Footer Start -->
<div class="container-fluid  text-white-50 footer pt-5 mt-5" style="background-color: #000000;">
    <div class="container py-5">
        <div class="pb-4 mb-4" style="border-bottom: 1px solid rgba(226, 175, 24, 0.5) ;">
            <div class="row g-4">
                <div class="col-lg-3">
                    <a href="#">
                        <h1 class="text-primary mb-0">Smart Academy</h1>
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
                    <p>Email: Smart Academy@gmail.com</p>
                    <p>Phone: +0123 4567 8910</p>
                    <p>Payment Accepted</p>
                    <img src="img/payment.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->


        </div>
    </form>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
