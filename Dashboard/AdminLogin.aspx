<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Dashboard_AdminLogin" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Login</title>
    <link href="../Dashboard/css/font-face.css" rel="stylesheet" media="all">
    <link href="../Dashboard/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="../Dashboard/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="../Dashboard/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="../Dashboard/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
    <link href="../Dashboard/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="../Dashboard/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="../Dashboard/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="../Dashboard/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="../Dashboard/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="../Dashboard/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../Dashboard/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <link href="../Dashboard/css/theme.css" rel="stylesheet" media="all">
</head>

<body class="animsition">
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                              <i class="fa fa-tachometer-alt fa-2x"></i>
                            </a>
                             <b>UXversity Admin Login</b>
                        </div>
                        <div class="login-form">
                            <form runat="server">
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <asp:TextBox ID="TextBox1" TextMode="Email" runat="server" class="au-input au-input--full" placeholder="Email"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" class="au-input au-input--full" placeholder="Password"></asp:TextBox>
                                </div>
                                <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Sign In" CssClass="au-btn au-btn--block au-btn--green m-b-20" />
                            </form>
                            <div class="register-link">
                                <p>
                                   Go Back To Home?
                                    <a href="../Default.aspx">Back To Home</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="../Dashboard/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="../Dashboard/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="../Dashboard/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="../Dashboard/vendor/slick/slick.min.js">
    </script>
    <script src="../Dashboard/vendor/wow/wow.min.js"></script>
    <script src="../Dashboard/vendor/animsition/animsition.min.js"></script>
    <script src="../Dashboard/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="../Dashboard/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="../Dashboard/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="../Dashboard/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="../Dashboard/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../Dashboard/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="../Dashboard/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="../Dashboard/js/main.js"></script>

</body>

</html>
