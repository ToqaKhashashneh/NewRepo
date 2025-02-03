<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registation.aspx.cs" Inherits="Library_Website.Farah.Registation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- In your ASPX page header -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <title></title>

    <style>
        @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@200;300;400;500;600;700&display=swap");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Open Sans", sans-serif;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            width: 100%;
            padding: 0 10px;
        }

            body::before {
                content: "";
                position: absolute;
                width: 100%;
                height: 100%;
                background: url("https://www2.kwnc.edu.mo/library/images/index/indexBg.png"), #000;
                background-position: center;
                background-size: cover;
            }

        .wrapper {
            width: 400px;
            border-radius: 8px;
            padding: 30px;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.5);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
        }

        .form {
            display: flex;
            flex-direction: column;
        }

        h2 {
            font-size: 2rem;
            margin-bottom: 20px;
            color: #fff;
        }

        .input-field {
            position: relative;
            border-bottom: 2px solid #ccc;
            margin: 15px 0;
        }

            .input-field label {
                position: absolute;
                top: 50%;
                left: 0;
                transform: translateY(-50%);
                color: #fff;
                font-size: 16px;
                pointer-events: none;
                transition: 0.15s ease;
            }

            .input-field input {
                width: 100%;
                height: 40px;
                background: transparent;
                border: none;
                outline: none;
                font-size: 16px;
                color: #fff;
            }

                .input-field input:focus ~ label,
                .input-field input:valid ~ label {
                    font-size: 0.8rem;
                    top: 10px;
                    transform: translateY(-120%);
                }

        .forget {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 25px 0 35px 0;
            color: #fff;
        }

        #remember {
            accent-color: #fff;
        }

        .forget label {
            display: flex;
            align-items: center;
        }

            .forget label p {
                margin-left: 8px;
            }

        .wrapper a {
            color: #efefef;
            text-decoration: none;
        }

            .wrapper a:hover {
                text-decoration: underline;
            }

        .BB {
            background: #fff;
            color: #000;
            font-weight: 600;
            border: none;
            padding: 12px 20px;
            cursor: pointer;
            border-radius: 3px;
            font-size: 16px;
            border: 2px solid transparent;
            transition: 0.3s ease;
        }

            .BB:hover {
                color: #fff;
                border-color: #fff;
                background: rgba(255, 255, 255, 0.15);
            }

        .register {
            text-align: center;
            margin-top: 30px;
            color: #fff;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="wrapper">
                <div class="form" action="#">
                    <h2>Sign Up</h2>

                    <div class="input-field">

                        <asp:TextBox ID="fName" runat="server"></asp:TextBox>
                        <label>Enter your first name</label>
                    </div>

                    <div class="input-field">

                        <asp:TextBox ID="lName" runat="server"></asp:TextBox>
                        <label>Enter your last name</label>
                    </div>


                    <div class="input-field">

                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                        <label>Enter your email</label>
                    </div>
                    <div class="input-field">

                        <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
                        <label>Enter your password</label>
                    </div>

                    <div class="input-field">

                        <asp:TextBox ID="confirmPass" TextMode="Password" runat="server"></asp:TextBox>
                        <label>Confirm password</label>
                    </div>



                    <%-- <button type="submit">Register</button>--%>

                    <asp:Button ID="Register" runat="server" OnClick="SignUp_Click" Text="Register" class="BB" />


                    <div class="register">
                        <p>Don't have an account? <a href="Login.aspx">Login</a></p>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
