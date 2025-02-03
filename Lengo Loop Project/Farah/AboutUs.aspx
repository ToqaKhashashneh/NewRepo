<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Library_Website.Farah.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<link href="\Rudaina\css\bootstrap.min.css" rel="stylesheet">

<link href="\Rudaina\css\style.css" rel="stylesheet">


    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto');

        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;

        }

        .header {
            width: 100%;
            height: 500px;
            opacity: .8;

            background-image: url('https://img.freepik.com/premium-vector/people-multilingual-greeting-man-woman-characters-speak-different-languages-multicultural-diverse-persons-various-race-ethnicity-vector-cartoon-set_102902-7844.jpg?w=1380');
            background-size: cover;
            background-position: bottom;
        }

        .container {
            width: 100%;
        }

        .container h1 {
            font-size: 50px
        }

        .about {
            padding: 5% 0;
            width: 100%;
            height: auto;
            background-color: #fff;
        }

        .about .left {
            padding: 2% 0;
            float: left;
            width: 50%;
            display: inline-block;
        }

        .about .right {
            width: 50%;
            display: inline-block;
        }

        .about .right img {
            margin-left: 10%;
            width: 80%
        }

        .about .left h1 {
            text-align: center;
            color: #7d0ed7ba;
            margin: 0 0 10px 0;
        }

        .about .left hr {
            width: 20%;
            border-top: 2px solid #000;
            border-bottom: none;
        }

        .about .left p {
            font-size: 1rem;
            margin: 40px auto;
            width: 80%
        }

        .mission {
            padding: 5% 0;
            width: 100%;
            height: auto;
            background-color: #fff;
        }

        .mission .right {
            padding: 2% 0;
            width: 50%;

            display: inline-block;
        }

        .mission .left {
            float: left;
            width: 50%;

            display: inline-block;
        }

        .mission .left img {
            width: 80%;
            margin-left: 10%;
        }

        .mission .right h1 {
            text-align: center;
            color: #7d0ed7ba;
            margin: 0 0 20px 0;
        }

        .mission .right hr {
            width: 35%;
            border-top: 2px solid #000;
            border-bottom: none;
        }

        .mission .right p {
            font-size: 1rem;
            margin: 40px auto;
            width: 80%
        }

        .team h1 {
            text-align: center;
            color: #7d0ed7ba;
            margin-bottom: 25px;
        }

        .team p{
            text-align: center;
            font-size: 1rem;
            margin: 0 10%;
            margin-bottom: 75px;
        }

        .clear {
            clear: both;
        }

        /* media */
        @media(max-width:1200px) {
            .mission .right p {
                font-size: .8rem;
                margin: 20px auto;
            }

            .about .left p {
                font-size: .8rem;
                margin: 20px auto;
            }
        }


        @media(max-width:992px) {
            .about .left {
                width: 100%;
            }

            .about .right {
                width: 100%;
            }

            .mission .left {
                width: 100%;
            }

            .mission .right {
                width: 100%;
            }

            .team .card {
                width: 40%;
            }
        }

        @media(max-width:768px) {
            .team .card {
                width: 100%;
            }

            nav {
                height: 80px;
            }
        }


        .card {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 320px;
            border-radius: 24px;
            line-height: 1.6;
            transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
        }

        .content {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            /* gap: 24px; */
            padding: 36px;
            border-radius: 22px;
            color: #ffffff;
            overflow: hidden;
            background: #7d0ed7;
            transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
            height: 100% !important;
        }
        .content h4{
            color : white;
        }

        .content::before {
            position: absolute;
            content: "";
            top: -4%;
            left: 50%;
            width: 90%;
            height: 90%;
            transform: translate(-50%);
            background: #7d0ed774;
            z-index: -1;
            transform-origin: bottom;

            border-radius: inherit;
            transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
        }

        .content::after {
            position: absolute;
            content: "";
            top: -8%;
            left: 50%;
            width: 80%;
            height: 80%;
            transform: translate(-50%);
            background: #7d0ed73e;
            z-index: -2;
            transform-origin: bottom;
            border-radius: inherit;
            transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
        }

        .content svg {
            width: 48px;
            height: 48px;
        }

        .content .para {
            z-index: 1;
            opacity: 1;
            font-size: 18px;
            transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
        }

       
        .card:hover {
            transform: translate(0px, -16px);
        }

        .card:hover .content::before {
            rotate: -8deg;
            top: 0;
            width: 100%;
            height: 100%;
        }

        .card:hover .content::after {
            rotate: 8deg;
            top: 0;
            width: 100%;
            height: 100%;
        }

        .services {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            gap: 50px;
        }

        .icons i {
            font-size: 200%;
        }

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

        <div>
             <!-- Spinner Start -->
<%-- <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
     <div class="spinner-grow text-primary" role="status"></div>
 </div>--%>
 <!-- Spinner End -->


 <!-- Navbar start -->
            
    
    <div class="container-fluid fixed-top"style ="background: white; ">
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
            <%-- <a href="/Toqa/All books.aspx" class="nav-item nav-link">Books</a>
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

            <div class="header">

    </div>


    <div class="container">

        <div class="about">
            <div class="left">
                <h1>About Us</h1>

                <p>Welcome to the Lengo Loop! We are a leading institute dedicated to empowering our students
                    with new language skills through an engaging and inclusive learning environment. We believe that
                    learning languages opens doors to new worlds and diverse cultures, and we take pride in offering
                    various services to support your educational journey.</p>



            </div>
            <div class="right">
                <img src="https://images.pexels.com/photos/4348401/pexels-photo-4348401.jpeg">
            </div>
            <div class="clear"></div>
        </div>



        <div class="mission">

            <div class="left">
                <img
                    src="https://images.pexels.com/photos/14814060/pexels-photo-14814060.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
            </div>
            <div class="right">
                <h1>Our Story</h1>

                <p>The Lengo Loop was founded with a clear vision: to make language learning an enjoyable and
                    accessible experience for everyone. We started our journey with a passion for helping individuals
                    overcome language barriers and embrace global cultures. Since our establishment, we have worked
                    tirelessly to provide a modern educational environment that combines innovative teaching methods
                    with rich resources to help our students achieve their linguistic goals.</p>



            </div>
            <div class="clear"></div>

        </div>

        <div class="team">
            <h1> services</h1>
            <p>At the Lengo Loop, we strive to provide not only high-quality education but also the tools and
                spaces necessary for effective learning. Our services are designed to complement your studies and create
                an environment that fosters growth and success.</p>
        </div>

        <div class="services">

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-chalkboard-teacher"></i>
                    </div>
                    <h4>Online Learning Platform:</h4>
                    <p class="para">
                        Access our user-friendly online portal, which provides a range of interactive courses, virtual
                        classrooms, and multimedia resources for learning languages at your own pace.
                    </p>
                </div>
            </div>

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-users"></i>
                    </div>
                    <h4>Cultural Workshops & Events:</h4>
                    <p class="para">
                        Participate in cultural workshops, events, and celebrations that immerse you in the traditions,
                        food, music, and art of the language you're learning. These events allow you to practice your
                        skills in real-life contexts.
                    </p>
                </div>
            </div>

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-file-alt"></i>
                    </div>
                    <h4>Language Proficiency Testing:</h4>
                    <p class="para">
                        We offer official language proficiency testing, so you can track your progress and obtain
                        recognized certifications for your language skills, which will be useful for personal, academic,
                        or professional growth.
                    </p>
                </div>
            </div>

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                    <h4>One-on-One Tutoring:</h4>
                    <p class="para">
                        For a more personalized learning experience, we offer private tutoring sessions with expert
                        instructors who will tailor lessons to your specific needs and pace.
                    </p>
                </div>
            </div>

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-volume-up"></i>
                    </div>
                    <h4>Pronunciation and Accent Training:</h4>
                    <p class="para">
                        Enhance your speaking skills with special classes dedicated to perfecting pronunciation and
                        reducing accents, helping you communicate more effectively and with confidence.
                    </p>
                </div>
            </div>

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-child"></i>
                    </div>
                    <h4>Child and Teen Language Programs:</h4>
                    <p class="para">
                        We offer specially designed programs for children and teenagers to make learning a new language
                        fun and interactive, with age-appropriate materials and teaching methods.
                    </p>
                </div>
            </div>

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

 <!-- Copyright Start -->
 <div class="container-fluid copyright  py-4" style="background-color: #000000;">
     <div class="container">
         <div class="row">
             <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                 <span class="text-light"><a href="#"><i class="fas fa-copyright text-light me-2"></i>Smart Academy</a>, All right reserved.</span>
             </div>
             <div class="col-md-6 my-auto text-center text-md-end text-white">
                 <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                 <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
                 <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                 Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a> Distributed By <a class="border-bottom" href="https://themewagon.com">ThemeWagon</a>
             </div>
         </div>
     </div>
 </div>
 <!-- Copyright End -->


        </div>

    </form>
      <!-- JavaScript Libraries -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>


      <script src="https://kit.fontawesome.com/20637403cc.js" crossorigin="anonymous"></script>
</body>
</html>
