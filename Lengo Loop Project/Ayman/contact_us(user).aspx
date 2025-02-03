<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact_us(user).aspx.cs" Inherits="Library_Website.Ayman.contact_us_admin_" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
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
                .btn-link {
    color:#7d0ed7ba!important;
    text-decoration: none !important;
}
        a{
    text-decoration:none!important;
}
        .overlay {
            background-image: url("https://i.pinimg.com/originals/05/4c/9a/054c9a6cafb4313464eb5ee66b4b8a43.jpg");
            background-size: cover;
            width: 100%;
            height: 100%;
            z-index: 1;
            position: relative;
            padding: 110px 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .section-bg {
            background-size: cover;
            position: relative;
            background-position: left;
            z-index: 0;
            padding: 0;
            min-height: auto;
            overflow: hidden;
        }

        .contact-form {
            position: relative;
            padding: 45px;
            margin-top: 40px;
            background-color: rgba(255, 255, 255, 1.0);  
            box-shadow: 0px 10px 40px rgba(0, 0, 0, 0.2);
            border-radius: 6px;
            max-width: 600px;
            width: 100%;
        }

        .contact-info {
            padding: 0 30px;
            text-align: center;
            margin-top: 40px; /* زيادة المسافة بين النصوص والنموذج */
        }

        h2.contact-title {
            font-size: 35px;
            font-weight: 600;
            color: #fff;
            margin-bottom: 30px;
        }

        .contact-info p {
            color: #ececec;
            font-size: 18px;
        }

        ul.contact-info {
            list-style-type: none;
            padding: 0;
            margin-top: 30px;
        }

        ul.contact-info li {
            margin-bottom: 22px;
            display: flex;
            justify-content: center;
        }

        ul.contact-info span {
            font-size: 20px;
            line-height: 26px;
        }

        .info-left {
            margin-right: 10px;
        }

        .info-left i {
            font-size: 30px;
            color: #7d0ed7ba;
        }

        .info-right h4 {
            color: #fff;
            font-size: 18px;
        }

        .contact-form input,
        .contact-form textarea {
            border: 2px solid rgba(0, 0, 0, 0.3); 
            display: block;
            width: 100%;
            height: 55px;
            padding: 11px 0;
            margin-bottom: 30px;
            font-size: 16px;
            font-weight: 600;
            border-style: none;
        }

        .contact-form input:focus,
        .contact-form textarea:focus {
            outline: none;
            border-color: #FE846F;
        }

        .uf-ct-01-btn-primary {
            background-color: #864ef2;
            color: #fff;
            border-radius: 5px;
            padding: 12px 25px;
            width: 100%;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        .uf-ct-01-btn-primary:hover {
            background-color: #641eec;
            transform: scale(1.05);
        }

        @media only screen and (max-width: 767px) {
            .contact-form {
                padding: 30px;
            }
        }

        /*.overlay {
            background-color: black;
            width: 100%;
            height: 100%;
            position: relative;
            left: 0;
            top: 0;
        }*/

    </style>
    <title></title>
    









       

</head>
<body>
    <!-- Navbar start -->
 <div >
     <div class="container topbar bg-primary d-none d-lg-block"  style="visibility:hidden!important;     margin-top: -3vw;">
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
<%--             <a href="/Toqa/All books.aspx" class="nav-item nav-link">Books</a>
               <a href="/Ammar/Rooms.aspx" class="nav-item nav-link">Rooms</a>--%>
                 <a href="/Ayman/contact_us(user).aspx" class="nav-item nav-link">Contact Us</a>

             </div>
<a href="/Farah/Login.aspx" style="color:#7d0ed7ba" class="nav-item nav-link">Sign in</a>
             <a href="/Farah/Registation.aspx"style="color:#7d0ed7ba" class="nav-item nav-link">Sign Up</a>
                </div>
<%--                <div class="d-flex m-3 me-0">
                    <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>--%>
                 <%--   <a href="#" class="position-relative me-4 my-auto">
                        <i class="fa fa-shopping-bag fa-2x"></i>
                        <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                    </a>--%>
                    <%--<a href="#" class="my-auto">
                        <i class="fas fa-user fa-2x"></i>
                    </a>--%>
                </div>
            </div>
        </nav>
    </div>
 <!-- Navbar End -->



    <form id="form1" runat="server">


        <div>


            <section class="section-bg" data-scroll-index="7">
                <div class="overlay pt-100 pb-100">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-6">
                                <!-- قسم المعلومات -->
                                <div class="contact-info">
                                    <h2 class="contact-title">Have Any Questions?</h2>
                                    <ul class="contact-info">
                                        <li>
                                            <div class="info-left">
                                                <i class="fas fa-mobile-alt"></i>
                                            </div>
                                            <div class="info-right">
                                                <h4>+9627999999999</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="info-left">
                                                <i class="fas fa-at"></i>
                                            </div>
                                            <div class="info-right">
                                                <h4>Lengo_Loop@gmail.com</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="info-left">
                                                <i class="fas fa-map-marker-alt"></i>
                                            </div>
                                            <div class="info-right">
                                                <h4>1243 Street, Amman, Jordan</h4>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="col-lg-6">
                      
                                <div class="contact-form">
                                    <form id="contact-form" method="POST">
                                        <input type="hidden" name="form-name" value="contactForm" />
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:TextBox runat="server" ID="name" class="form-control" placeholder="Enter Your Name" required="required" />
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:TextBox runat="server" ID="email" placeholder="Email" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:TextBox runat="server" ID="message" placeholder="Enter Your Message" TextMode="MultiLine" Rows="3" Columns="50" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Button ID="send" OnClick="send_Click" Text="Send" runat="server" class="btn btn-lg uf-ct-01-btn-primary my-3" Style="width: 100%;" />
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
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
                        <input class="form-control border-0 w-100 py-3 px-4 rounded-pill" type="number" placeholder="Your Email" style="height:55px;">
                        <button type="submit" class="btn btn-primary border-0 border-secondary py-3 px-4 position-absolute rounded-pill text-white" style="top: 0; right: 0; ">Subscribe Now</button>
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



</body>
</html>
