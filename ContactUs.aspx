<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="img/favicon.png" type="image/png">
    <title>UXversity</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="vendors/linericon/style.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
    <link rel="stylesheet" href="css/style.css">
</head>


<body>
    <header class="header_area header_inner_page">
        <div class="main_menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="Default.aspx">
                       <%-- <img src="contac-us.jpg" alt=""></a>--%>
                    <a class="navbar-brand logo_inner_page" href="Default.aspx">
                        <h1 style="color:#ffffff">UXversity</h1></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav">
                            <li class="nav-item"><a class="nav-link" href="Default.aspx">Home</a></li>
                            <li class="nav-item submenu dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false">Ux/UI Tools</a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item"><a class="nav-link" href="ToolsCategory.aspx">Tools</a></li>
                                            <li class="nav-item"><a class="nav-link" href="Blogs.aspx">Blog</a></li>
                                            <li class="nav-item"><a class="nav-link" href="Demos.aspx">Demos</a></li>

                                        </ul>
                                    </li>
                                    <li class="nav-item submenu dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false">User Account</a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item"><a class="nav-link" href="UserHome/UserSignIn.aspx">Sign In</a></li>
                                            <li class="nav-item"><a class="nav-link" href="UserHome/UserSignUp.aspx">Sign Up</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="ContactUs.aspx">Contact</a></li>
                                    <li class="nav-item submenu dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false">Developer</a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item"><a class="nav-link" href="Developer/DeveloperSignIn.aspx">Sign In</a></li>
                                            <li class="nav-item"><a class="nav-link" href="Developer/DeveloperSignUp.aspx">Sign Up</a></li>
                                        </ul>
                                    </li>
                                </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Contact Us</h2>
                    <div class="page_link">
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section-margin">
        <div class="container">

            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3559.7845361919854!2d80.94247381499646!3d26.84680458315602!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399bfd07c3c15643%3A0x867bb0de72c4c460!2sDigipodium!5e0!3m2!1sen!2sin!4v1555644425690!5m2!1sen!2sin" width="100%" height="350" frameborder="0" style="border: 0" allowfullscreen></iframe>

            <div class="row">
                <div class="col-12">
                    <h2 class="contact-title">Get in Touch</h2>
                </div>
                <div class="col-lg-8 mb-4 mb-lg-0">
                    <form runat="server" class="form-contact contact_form"  method="post" id="contactForm" novalidate="novalidate">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" TextMode="MultiLine" runat="server" CssClass="form-control w-100" Columns="30" Rows="5" placeholder="Enter Message"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter your name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Name should be in correct format" ForeColor="Red" ValidationExpression="^[a-zA-Z]+[\-'\s]?[a-zA-Z]+$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter Email" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Enter Email-Id" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Incorrect Email-Id" ForeColor="Red" ValidationExpression="^([\w\d\-\.]+)@{1}(([\w\d\-]{1,67})|([\w\d\-]+\.[\w\d\-]{1,67}))\.(([a-zA-Z\d]{2,4})(\.[a-zA-Z\d]{2})?)$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter Subject"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Subject" ForeColor="Red"></asp:RequiredFieldValidator>

                                &nbsp;
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Subject should be correct" ForeColor="Red" ValidationExpression="^[a-zA-Z]+[\-'\s]?[a-zA-Z]+$"></asp:RegularExpressionValidator>

                                </div>
                            </div>
                        </div>
                        <div class="form-group mt-lg-3">
                            <asp:Button ID="Button1" runat="server" Text="Send Message" CssClass="primary_btn button-contactForm" OnClick="Button1_Click"/>
                        </div>
                    </form>


                </div>

                <div class="col-lg-4">
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-home"></i></span>
                        <div class="media-body">
                            <h3> Hazratganj Lucknow.</h3>
                            <p>Digipodium</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                        <div class="media-body">
                            <h3><a href="tel:454545654">+91-8543915231</a></h3>
                            <p>Mon to Fri 9am to 6pm</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-email"></i></span>
                        <div class="media-body">
                            <h3><a href="uxversity71@gmail.com">uxversity71@gmail.com</a></h3>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer class="footer_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="footer_top flex-column">
                        <div class="footer_logo">
                            <a href="Default.aspx">
                                <h1 style="color:#ffffff">UXversity</h1>
                            </a>
                            <div class="d-lg-block d-none">
                                <nav class="navbar navbar-expand-lg navbar-light justify-content-center">
                                    <div class="collapse navbar-collapse offset">
                                        <ul class="nav navbar-nav menu_nav mx-auto">
                                            <li class="nav-item"><a class="nav-link text-white" href="default.aspx">Home</a></li>
                                            <li class="nav-item"><a class="nav-link text-white" href="ToolsCategory.aspx">UX/Ui Tools </a></li>
                                            <li class="nav-item"><a class="nav-link text-white" href="Blogs.aspx">BLog</a></li>
                                            <li class="nav-item"><a class="nav-link text-white" href="ContactUs.aspx">Contact</a></li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                        <div class="footer_social mt-lg-0 mt-4">
                            <a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
                            <a href="https://twitter.com/?lang=en-in"><i class="fab fa-twitter"></i></a>
                            <a href="https://www.instagram.com/?hl=en"><i class="fab fa-instagram"></i></a>
                            <a href="https://www.snapchat.com/l/en-gb/"><i class="fab fa-snapchat"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row footer_bottom justify-content-center">
                
            </div>
        </div>
    </footer>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/stellar.js"></script>
    <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
    <script src="vendors/isotope/isotope-min.js"></script>
    <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="js/gmaps.min.js"></script>
    <script src="js/theme.js"></script>
</body>

</html>
