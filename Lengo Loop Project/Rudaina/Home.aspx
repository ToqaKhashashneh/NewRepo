<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Test_net_.Rudaina.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <meta charset="utf-8">
<title>Smart Academy</title>


<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/style.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">


 
        
       
    

    <body>

        <!-- Spinner Start -->
        <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" role="status"></div>
        </div>
        <!-- Spinner End -->


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
                    <a href="index.html" class="navbar-brand"><h1 class="text-primary display-6">Smart Academy</h1></a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="index.html" class="nav-item nav-link active">Home</a>
                            <a href="shop.html" class="nav-item nav-link">About</a>
                            <a href="shop-detail.html" class="nav-item nav-link">Books</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Rooms</a>
                                <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                    <a href="cart.html" class="dropdown-item">Cart</a>
                                    <a href="chackout.html" class="dropdown-item">Chackout</a>
                                    <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                                    <a href="404.html" class="dropdown-item">404 Page</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Contact</a>
                        </div>
                        <div class="d-flex m-3 me-0">
                            <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>
                            <a href="#" class="position-relative me-4 my-auto">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                                <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                            </a>
                            <a href="#" class="my-auto">
                                <i class="fas fa-user fa-2x"></i>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->


        <!-- Modal Search Start -->
        <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-fullscreen">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body d-flex align-items-center">
                        <div class="input-group w-75 mx-auto d-flex">
                            <input type="search" class="form-control p-3" placeholder="keywords" aria-describedby="search-icon-1">
                            <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Search End -->


        <!-- Hero Start -->
        <div class="container-fluid py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                    <div class="col-md-12 col-lg-7">
                        <h4 class="mb-3 text-secondary">Your Gateway to Knowledge</h4>
                        <h1 class="mb-5 display-3 text-primary">Learn, Grow & Succeed</h1>
                        
                        <div class="position-relative mx-auto">
                            <input class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill" type="number" placeholder="Search">
                            <button type="submit" class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100" style="top: 0; right: 25%;">Submit Now</button>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-5">
                        <div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active rounded">
                                    <img src="img/2.jpg" class="img-fluid w-100 h-100 bg-secondary rounded" alt="First slide">
                                    <!-- <a href="#" class="btn px-4 py-2 text-white rounded">Fruites</a> -->
                                </div>
                                <div class="carousel-item rounded">
                                    <img src="img/1.jpg" class="img-fluid w-100 h-100 rounded" alt="Second slide">
                                    <!-- <a href="#" class="btn px-4 py-2 text-white rounded">Vesitables</a> -->
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero End -->
        <section class="py-5" id="About" style="padding:40px auto !important;" >
            <div class="container" style="color: black;">
                <div class="row">
                    <div class="col-md-5">
                        <span class="text-muted" style="color: #A9A9A9 !important; font-size:22px;">Our Story</span>
                        <h2 class="display-5 " style="color: #7d0ed7ba !important; font-size:32px; font-weight:900;">About Us</h2>
                        <p class="lead">Welcome to your local hub for all things books and stationery. Our platform allows you to shop from your nearest bookstore and stationery store with ease, helping support local businesses while getting what you need at your convenience.</p>
                        <a class="btn btn-primary mt-2" href="" style="background-color: #7d0ed7ba  !important; border: none; padding:10px 30px; color:#f8f9fa">Learn more</a>
                    </div>
                    <div class="col-md-6 offset-md-1 mt-5">
                        <p class="lead">Our goal is to bring you the best selection of books and stationery from local stores, helping you access quality products with the click of a button. Whether you're looking for the latest bestsellers, essential study materials, or everyday stationery items, we’ve got you covered.</p>
                        <p class="lead">With our location-based feature, simply input your location, and we’ll show you nearby stores, so you can shop conveniently and support local businesses. Say goodbye to long waits and hello to instant shopping!</p>
                    </div>
                </div>
            </div>
        </section>


  <!-- Featurs Section Start -->
<div class="container-fluid featurs py-5">
    <h1 style="text-align:center; color: #7d0ed7ba ;">Services</h1>
    <div class="container py-5">
        <div class="row g-4">
            <div class="col-md-6 col-lg-3">
                <div class="featurs-item text-center rounded bg-light p-4">
                    <div class="featurs-icon btn-square rounded-circle   mb-5 mx-auto" style="background-color:#7d0ed7ba ">
                        <i class="fas fa-book fa-3x  text-white "></i>
                    </div>
                    <div class="featurs-content text-center">
                        <h5>Book Rentals</h5>
                        <p class="mb-0">Rent books from our academy library</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="featurs-item text-center rounded bg-light p-4">
                    <div class="featurs-icon btn-square rounded-circle  mb-5 mx-auto" style="background-color:#7d0ed7ba ">
                        <i class="fas fa-chalkboard fa-3x text-white"></i>
                    </div>
                    <div class="featurs-content text-center">
                        <h5>Room Booking</h5>
                        <p class="mb-0">Book study rooms for your sessions</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="featurs-item text-center rounded bg-light p-4">
                    <div class="featurs-icon btn-square rounded-circle mb-5 mx-auto" style="background-color:#7d0ed7ba ">
                        <i class="fas fa-users fa-3x text-white"></i>
                    </div>
                    <div class="featurs-content text-center">
                        <h5>Collaborative Learning</h5>
                        <p class="mb-0">Engage in group learning sessions</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="featurs-item text-center rounded bg-light p-4">
                    <div class="featurs-icon btn-square rounded-circle mb-5 mx-auto" style="background-color:#7d0ed7ba ">
                        <i class="fas fa-cogs fa-3x text-white"></i>
                    </div>
                    <div class="featurs-content text-center">
                        <h5>Expert Support</h5>
                        <p class="mb-0">Access professional academic support</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Featurs Section End -->




        <!-- Category Book Start-->
        <div class="container-fluid fruite py-5">
            <div class="container py-5">
                <div class="tab-class text-center">
                    <div class="row g-4">
                        <div class="col-lg-4 text-start">
                            <h1>Our Book Categories</h1>
                        </div>
                        <div class="col-lg-8 text-end">
                            <ul class="nav nav-pills d-inline-flex text-center mb-5">
                                <li class="nav-item">
                                    <a class="d-flex m-2 py-2 bg-light rounded-pill active" data-bs-toggle="pill" href="#tab-1">
                                        <span class="text-dark" style="width: 130px;">All Products</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="d-flex py-2 m-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-2">
                                        <span class="text-dark" style="width: 130px;">Science</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="d-flex m-2 py-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-3">
                                        <span class="text-dark" style="width: 130px;">History</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="d-flex m-2 py-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-4">
                                        <span class="text-dark" style="width: 130px;">Literature</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="d-flex m-2 py-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-5">
                                        <span class="text-dark" style="width: 130px;">Technology</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/3.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/4.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/5.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/6.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/3.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/3.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/3.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/3.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-3" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/5.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/5.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-4" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/5.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/3.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-5" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/3.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/3.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative book-item">
                                                <div class="book-img" style="width: 100%; height: 200px; overflow: hidden;">
                                                    <img src="img/3.jpg" class="img-fluid w-100" alt="Book Cover" style="object-fit: cover;">
                                                </div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4>The Great Adventure</h4>
                                                    <p><strong>Author:</strong> John Doe</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
                                                    <div class="d-flex justify-content-start gap-3">
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-search me-2 text-primary"></i> Details</a>
                                                        <a href="#" class="btn border border-secondary rounded-pill px-3 text-success"><i class="fa fa-shopping-cart me-2 text-success"></i> Rent</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>      
            </div>
        </div>
    <!-- Category Book End-->


        <!-- Features Start -->

        <!-- Features Start -->
<div class="container-fluid service py-5">
    <div class="container py-5">
        <div class="row g-4 justify-content-center">
            <!-- Book Rental Service -->
            <div class="col-md-6 col-lg-4">
                <a href="book-rental-details.html" class="service-card text-decoration-none">
                    <div class="service-item bg-light rounded border border-secondary shadow-sm">
                        <img src="img/3.jpg" class="img-fluid rounded-top w-100" alt="Book Rental" style="object-fit: cover; height: 200px;">
                        <div class="px-4 py-4 rounded-bottom">
                            <div class="service-content bg-primary text-center p-4 rounded">
                                <h5  class="text-white">Book Rental</h5>
                                <h6 class="mb-0   text-light" >Special Discounts</h6>
                                <p class="text-light mt-2">Rent books at discounted rates.</p>
                                <!-- Links inside the card -->
                                <div class="mt-3">
                                    <a href="book-rental-details.html" class="btn btn-light">More Details</a>
                                    <a href="#" class="btn btn-outline-light mt-2">Rent Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Hall Rental Service -->
            <div class="col-md-6 col-lg-4">
                <a href="hall-rental-details.html" class="service-card text-decoration-none">
                    <div class="service-item bg-light rounded border border-secondary shadow-sm">
                        <img src="img/7.jpg" class="img-fluid rounded-top w-100" alt="Hall Rental" style="object-fit: cover; height: 200px;">
                        <div class="px-4 py-4 rounded-bottom">
                            <div class="service-content bg-primary text-center p-4 rounded">
                                <h5 class="text-white">Hall Rental</h5>
                                <h6 class="mb-0 text-white">For Meetings & Training</h6>
                                <p class="text-white mt-2">Rent our halls for meetings and workshops.</p>
                                <!-- Links inside the card -->
                                <div class="mt-3">
                                    <a href="hall-rental-details.html" class="btn btn-light">More Details</a>
                                    <a href="#" class="btn btn-outline-light mt-2">Book Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Courses Section -->
            <div class="col-md-6 col-lg-4">
                <a href="courses-details.html" class="service-card text-decoration-none">
                    <div class="service-item bg-light rounded border border-secondary shadow-sm">
                        <img src="img/8.jpg" class="img-fluid rounded-top w-100" alt="Courses" style="object-fit: cover; height: 200px;">
                        <div class="px-4 py-4 rounded-bottom">
                            <div class="service-content bg-primary text-center p-4 rounded">
                                <h5 class="text-white">Courses</h5>
                                <h6 class="mb-0 text-white">Get Expert Training</h6>
                                <p class="text-white mt-2">Learn new skills with our professional courses.</p>
                                <!-- Links inside the card -->
                                <div class="mt-3">
                                    <a href="courses-details.html" class="btn btn-light">Explore Courses</a>
                                    <a href="#" class="btn btn-outline-light mt-2">Enroll Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
<!-- Features End -->


        <!-- Vesitable Shop Start-->
        <div class="container-fluid vesitable py-5">
            <div class="container py-5">
                <h1 class="mb-0" style="color: #7d0ed7ba ;">Available Courses</h1>
                <div class="owl-carousel vegetable-carousel justify-content-center">
                    <div class="border border-primary rounded position-relative vesitable-item">
                        <div class="vesitable-img">
                            <img src="img/16.jpg" class="img-fluid w-100 rounded-top" alt="" style="height: 200px;">
                        </div>
                        <div class="p-4 rounded-bottom">
                            <h4>Web Development 101</h4>
                            <p>Learn the fundamentals of web development including HTML, CSS, and JavaScript. This course is perfect for beginners looking to build their first website.</p>
                            <div class="d-flex justify-content-between flex-lg-wrap">
                                <p class="text-dark fs-5 fw-bold mb-0">$199</p>
                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-book me-2 text-primary"></i> Enroll Now</a>
                            </div>
                        </div>
                        
                    </div>
                    <div class="border border-primary rounded position-relative vesitable-item" >
                        <div class="vesitable-img">
                            <img src="img/14.jpg" class="img-fluid w-100 rounded-top" alt="" style="height: 200px;">
                        </div>
                        <div class="p-4 rounded-bottom">
                            <h4>Advanced Python Programming</h4>
                            <p>Master the Python programming language with advanced topics including data structures, algorithms, and object-oriented programming.</p>
                            <div class="d-flex justify-content-between flex-lg-wrap">
                                <p class="text-dark fs-5 fw-bold mb-0">$249</p>
                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-book me-2 text-primary"></i> Enroll Now</a>
                            </div>
                        </div>
                        
                    </div>
                    <div class="border border-primary rounded position-relative vesitable-item">
                        <div class="vesitable-img">
                            <img src="img/15.jpg" class="img-fluid w-100 rounded-top bg-light" alt="" style="height: 200px;">
                        </div>
                        <div class="p-4 rounded-bottom">
                            <h4>Introduction to Data Science</h4>
                            <p>Get started with Data Science! Learn the fundamentals of data analysis, machine learning, and data visualization techniques using Python and R.</p>
                            <div class="d-flex justify-content-between flex-lg-wrap">
                                <p class="text-dark fs-5 fw-bold mb-0">$199</p>
                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-book me-2 text-primary"></i> Enroll Now</a>
                            </div>
                        </div>
                        
                    </div>
                    <div class="border border-primary rounded position-relative vesitable-item">
                        <div class="vesitable-img">
                            <img src="img/12.jpg" class="img-fluid w-100 rounded-top" alt=""style="height: 200px;">
                        </div>
                        <div class="p-4 rounded-bottom">
                            <h4>Advanced Web Development</h4>
                            <p>Master the art of web development with this advanced course! Learn advanced concepts like dynamic content, APIs, and backend technologies. </p>
                            <div class="d-flex justify-content-between flex-lg-wrap">
                                <p class="text-dark fs-5 fw-bold mb-0">$249</p>
                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-book me-2 text-primary"></i> Enroll Now</a>
                            </div>
                        </div>
                        
                    </div>
                    <div class="border border-primary rounded position-relative vesitable-item">
                        <div class="vesitable-img">
                            <img src="img/11.jpg" class="img-fluid w-100 rounded-top" alt="" style="height: 200px;">
                        </div>
                        <div class="p-4 rounded-bottom">
                            <h4>Drawing Basics</h4>
                            <p>Learn the foundational techniques of drawing. This course will help you understand shading, perspective, and composition to bring your sketches to life.</p>
                            <div class="d-flex justify-content-between flex-lg-wrap">
                                <p class="text-dark fs-5 fw-bold mb-0">$39.99</p>
                                <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Enroll Now</a>
                            </div>
                        </div>
                        
                    </div>
                   
                  
                </div>
            </div>
        </div>
        <!-- Vesitable Shop End -->


        <!-- Banner Section Start-->
<div class="container-fluid banner bg-secondary my-5">
    <div class="container py-5">
        <div class="row g-4 align-items-center">
            <div class="col-lg-6">
                <div class="py-4">
                    <h1 class="display-3 text-white">Learn New Skills</h1>
                    <p class="fw-normal display-3 text-white mb-4">Enroll in Our Online Courses</p>
                    <p class="mb-4 text-white">Our courses are designed to enhance your skills in various fields including programming, design, language, and more. Get started today!</p>
                    <a href="#" class="banner-btn btn border-2 border-white rounded-pill text-white py-3 px-5">Browse Courses</a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="position-relative">
                    <img src="img/16.png" class="img-fluid w-100 rounded" alt="Courses Banner">
                    <div class="d-flex align-items-center justify-content-center bg-white rounded-circle position-absolute" style="width: 140px; height: 140px; top: 0; left: 0; display:none !important;">
                        <h1 style="font-size: 100px;">5</h1>
                        <div class="d-flex flex-column">
                            <span class="h2 mb-0">Programming</span>
                            <span class="h4 text-muted mb-0">Courses</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner Section End-->


        <!-- Bestsaler Product Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5" style="max-width: 700px;">
                    <h1 class="display-4" style="color:#7d0ed7ba !important;">Most Borrowed Books</h1>
                    <p>Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>
                </div>
                <div class="row g-4">
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="img/Biologie.jpg" class="img-fluid  w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">Biologie</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i>Rent Book</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="img/19.jpg" class="img-fluid w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">Chemistry</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i>Rent Book</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="img/25.jpg" class="img-fluid w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">Alice Adventure in wonderful</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Rent Book</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="img/24.jpg" class="img-fluid  w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">Over The Sirens</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Rent Book</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="img/30.jpg" class="img-fluid  w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">Again but better</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Rent Book</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4">
                        <div class="p-4 rounded bg-light">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="img/23.jpg" class="img-fluid w-100" alt="">
                                </div>
                                <div class="col-6">
                                    <a href="#" class="h5">Harry Potter</a>
                                    <div class="d-flex my-3">
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star text-primary"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i>Rent Book</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                   
                   
                </div>
            </div>
        </div>
        <!-- Bestsaler Product End -->


        <!-- Fact Start -->
        <div class="container-fluid py-5">
            <div class="container">
                <div class="bg-light p-5 rounded">
                    <div class="row g-4 justify-content-center">
                        <div class="col-md-6 col-lg-6 col-xl-3">
                            <div class="counter bg-white rounded p-5">
                                <i class="fa fa-users text-secondary"></i>
                                <h4>satisfied customers</h4>
                                <h1>1963</h1>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-xl-3">
                            <div class="counter bg-white rounded p-5">
                                <i class="fa fa-users text-secondary"></i>
                                <h4>quality of service</h4>
                                <h1>99%</h1>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-xl-3">
                            <div class="counter bg-white rounded p-5">
                                <i class="fa fa-users text-secondary"></i>
                                <h4>quality certificates</h4>
                                <h1>33</h1>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Fact Start -->


      <!-- Testimonial Start -->
        <!-- Testimonial Start -->
<!-- Testimonial Start -->
<div class="container-fluid testimonial py-5">
    <div class="container py-5">
        <div class="testimonial-header text-center">
            <h4 class="text-primary">What Our Students Say</h4>
            <h1 class="display-5 mb-5 text-dark">Student Testimonials</h1>
        </div>
        <div class="owl-carousel testimonial-carousel">
            <div class="testimonial-item img-border-radius bg-light rounded p-4">
                <div class="position-relative">
                    <i class="fa fa-quote-right fa-2x text-secondary position-absolute" style="bottom: 30px; right: 0;"></i>
                    <div class="mb-4 pb-4 border-bottom border-secondary">
                        <p class="mb-0">"The Python programming course at this institute was amazing! The lessons were clear and practical, and the instructor was very knowledgeable. I can now confidently apply my skills in real-world projects."</p>
                    </div>
                    <div class="d-flex align-items-center flex-nowrap">
                        <div class="bg-secondary rounded">
                            <img src="img/31.jpg" class="img-fluid rounded" style="width: 100px; height: 100px;" alt="Student 1">
                        </div>
                        <div class="ms-4 d-block">
                            <h4 class="text-dark">John Doe</h4>
                            <p class="m-0 pb-3">Software Developer</p>
                            <div class="d-flex pe-5">
                                <i class="fas fa-star text-primary"></i>
                                <i class="fas fa-star text-primary"></i>
                                <i class="fas fa-star text-primary"></i>
                                <i class="fas fa-star text-primary"></i>
                                <i class="fas fa-star text-primary"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="testimonial-item img-border-radius bg-light rounded p-4">
                <div class="position-relative">
                    <i class="fa fa-quote-right fa-2x text-secondary position-absolute" style="bottom: 30px; right: 0;"></i>
                    <div class="mb-4 pb-4 border-bottom border-secondary">
                        <p class="mb-0">"I took the Web Development Bootcamp and I can now build my own websites! The instructors are supportive and the hands-on experience was invaluable. Highly recommend!"</p>
                    </div>
                    <div class="d-flex align-items-center flex-nowrap">
                        <div class="bg-secondary rounded">
                            <img src="img/32.jpg" class="img-fluid rounded" style="width: 100px; height: 100px;" alt="Student 2">
                        </div>
                        <div class="ms-4 d-block">
                            <h4 class="text-dark">Jane Smith</h4>
                            <p class="m-0 pb-3">Web Developer</p>
                            <div class="d-flex pe-5">
                                <i class="fas fa-star text-primary"></i>
                                <i class="fas fa-star text-primary"></i>
                                <i class="fas fa-star text-primary"></i>
                                <i class="fas fa-star text-primary"></i>
                                <i class="fas fa-star text-primary"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Testimonial End -->

        
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



        <!-- Back to Top -->
        <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    </body>

</html>
    </form>
</body>
</html>
