<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Library_Website.Bilal.Profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>



    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


    <link href="\Rudaina\css\bootstrap.min.css" rel="stylesheet">

    <link href="\Rudaina\css\style.css" rel="stylesheet">

    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Arial', sans-serif;
        }

        .form-container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border: 2px solid #7d0ed7ba;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

            .form-container:hover {
                transform: translateY(-5px);
                box-shadow: 0 8px 12px rgba(0, 0, 0, 0.15);
            }

        .btn-custom {
            background-color: #7d0ed7ba;
            color: white;
            border: none;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }

            .btn-custom:hover {
                background-color: #6a00a3;
                color: white;
            }

        .profile-header {
            text-align: center;
            margin-bottom: 40px;
        }

            .profile-header h2 {
                color: #7d0ed7ba;
                font-weight: bold;
                font-size: 30px;
            }

            .profile-header p {
                color: #333;
                font-size: 18px;
                margin-bottom: 30px;
            }

        .user-info {
            background: linear-gradient(to right, #7d0ed7ba, #6a00a3);
            color: white;
            border-radius: 10px;
            padding: 25px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

            .user-info:hover {
                transform: translateY(-5px);
                box-shadow: 0 8px 12px rgba(0, 0, 0, 0.15);
            }

            .user-info h3 {
                font-size: 28px;
                font-weight: bold;
                margin-bottom: 10px;
            }

            .user-info p {
                font-size: 20px;
                margin-top: 10px;
            }

        .tabs-container {
            margin-top: 30px;
            margin-bottom: 40px;
            text-align: center;
        }

            .tabs-container .nav-link {
                background-color: transparent;
                color: #7d0ed7ba;
                border: 1px solid #7d0ed7ba;
                border-radius: 5px;
                padding: 10px 20px;
                transition: 0.3s;
                text-decoration: none;
                font-weight: bold;
            }

                .tabs-container .nav-link:hover, .tabs-container .nav-link.active {
                    background-color: #7d0ed7ba;
                    color: white;
                }

        .d-flex-button {
            margin-top: 30px;
        }

            .d-flex-button .btn {
                font-size: 16px;
                padding: 10px 20px;
                transition: transform 0.3s ease;
            }

                .d-flex-button .btn:hover {
                    transform: scale(1.05);
                }

        /* التنسيق الخاص بـ box التفاصيل مع الزر */
        .details-box {
            background-color: #fff;
            padding: 20px;
            margin-top: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

            .details-box h4 {
                font-size: 24px;
                font-weight: bold;
                margin-bottom: 15px;
            }

            .details-box p {
                font-size: 18px;
                color: #555;
                margin-bottom: 20px;
            }

            .details-box .btn-small {
                background-color: #7d0ed7ba;
                color: white;
                border: none;
                padding: 8px 15px;
                font-size: 16px;
                border-radius: 5px;
            }

                .details-box .btn-small:hover {
                    background-color: #6a00a3;
                    color: white;
                }

        .user-info p {
            color: #ffffff !important;
        }

        color: #333;
    </style>

    <script type="text/javascript">
        function loadPassword() {
            var passwordValue = '<%= P_Pass.Text %>';
            var passwordField = document.getElementById('<%= P_Pass.ClientID %>');


            passwordField.type = "text";
            passwordField.value = passwordValue;


            setTimeout(function () {
                passwordField.type = "password";
            }, 1000);
        }
    </script>

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

        <div class="">

            <!-- Profile Header with User Information -->
            <div class="profile-header">
                <div class="user-info">
                    <h3>
                        <asp:Label runat="server" ID="FullNameLabel" Text="Full Name"></asp:Label></h3>
                    <p>
                        <asp:Label runat="server" ID="EmailLabel" Text="Email Address"></asp:Label>
                    </p>
                </div>
            </div>

            <!-- Tabs for navigating to different sections -->
            <div class="tabs-container">
                <ul class="nav nav-pills justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link active" id="roomHistoryTab" data-bs-toggle="pill" href="#roomHistory">Room History</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="bookHistoryTab" data-bs-toggle="pill" href="#bookHistory">Book History</a>
                    </li>
                </ul>
            </div>

            <!-- Tab content -->
            <div class="tab-content">
                <div id="roomHistory" class="tab-pane fade show active">
                    <div class="form-container">
                        <!-- Room History Content Goes Here -->
                        <h4>Room History</h4>
                        <p>From here you can view your room reservation history.</p>

                        <asp:Button runat="server" class="btn btn-custom" Text="Show Details" OnClick="Unnamed_Click" />
                    </div>
                </div>

                <div id="bookHistory" class="tab-pane fade">
                    <div class="form-container">
                        <h4>Book History</h4>
                        <p>From here you can see the history of the books you have borrowed.</p>


                        <asp:Button runat="server" class="btn btn-custom" Text="Show Details" OnClick="Unnamed_Click1" />
                    </div>
                </div>

            </div>


            <div class="form-container">
                <div class="profile-details">
                    <div class="mb-3">
                        <asp:TextBox runat="server" ID="F_Name" disabled class="form-control" />
                    </div>
                    <div class="mb-3">
                        <asp:TextBox runat="server" ID="L_Name" disabled class="form-control" />
                    </div>
                    <div class="mb-3">
                        <asp:TextBox runat="server" ID="e_Email" disabled class="form-control" />
                    </div>

                    <div class="mb-3">
                        <asp:TextBox runat="server" ID="P_Pass" disabled TextMode="Password" class="form-control" />
                    </div>
                </div>


                <div class="d-flex justify-content-between d-flex-button">
                    <asp:Button Text="Edit Profile" runat="server" class="btn btn-custom" OnClick="Edit_Click" />
                    <asp:Button Text="Reset Password" runat="server" class="btn btn-custom" OnClick="Reset_Click" />
                </div>
            </div>

                   <!-- Footer Start -->
<div class="container-fluid  text-white-50 footer pt-5 mt-5" style="background-color: #000000;">
    <div class="container py-5">
        <div class="pb-4 mb-4" style="border-bottom: 1px solid rgba(226, 175, 24, 0.5);">
            <div class="row g-4">
                <div class="col-lg-3">
                    <a href="#">
                        <h1 class="text-primary mb-0" style="color:#7d0ed7ba!important;">Smart Academy</h1>
                        <p class="text-secondary mb-0">Educational Institue</p>
                    </a>
                </div>
                <div class="col-lg-6">
                    <div class="position-relative mx-auto">
                        <input class="form-control border-0 w-100 py-3 px-4 rounded-pill" type="number" placeholder="Your Email">
                       
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

    <script type="text/javascript">
        loadPassword();
    </script>
</body>
</html>
