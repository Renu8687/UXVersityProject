<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BlogDetails.aspx.cs" Inherits="BlogDetails" %>

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

    <header class="header_area">
        <div class="main_menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="Default.aspx">
                        <h1 style="color: #ffffff">UXversity</h1>
                        <a class="navbar-brand logo_inner_page" href="Default.aspx">
                            <h3>UX</h3>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                                <ul class="nav navbar-nav menu_nav">
                                    <li class="nav-item active"><a class="nav-link" style="color: #ffffff" href="Default.aspx">Home</a></li>
                                    <li class="nav-item active"><a class="nav-link" style="color: #ffffff" href="ToolsCategory.aspx">UI/UX Tools</a></li>
                                    <li class="nav-item submenu dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" style="color: #ffffff" role="button" aria-haspopup="true"
                                            aria-expanded="false">Blog</a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item"><a class="nav-link" href="Blogs.aspx">Blog</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item submenu dropdown">
                                        <a href="#" class="nav-link dropdown-toggle text-white" data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false ">User Account</a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item"><a class="nav-link" href="blog.html">Sign In</a></li>
                                            <li class="nav-item"><a class="nav-link" href="single-blog.html">Sign Up</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" style="color: #ffffff" href="ContactUs.aspx">Contact</a></li>

                                    <li class="nav-item submenu dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" style="color: #ffffff" data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false">Developer</a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item"><a class="nav-link" href="Developer/DeveloperSignIn.aspx">Sign In</a></li>
                                            <li class="nav-item"><a class="nav-link" href="Developer/DeveloperSignUp.aspx">Sign Up</a></li>
                                        </ul>
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
                    <h2>Blogs Details</h2>

                </div>
            </div>
        </div>
    </section>

    <section class="blog_area single-post-area section-margin">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 posts-list">
                    <div class="single-post">
                        <div class="feature-img">
                            <asp:Image ID="Image1" runat="server" class="img-fluid" />
                        </div>
                        <div class="blog_details">
                            <h2>
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal></h2>
                            <ul class="blog-info-link mt-3 mb-4">
                                <li><a href="#"><i class="ti-user"></i>About Visual Studio 2019</a></li>
                                <li><a href="#"><i class="ti-comments"></i>03 Comments</a></li>
                            </ul>

                            <div class="quotes">
                                <asp:Literal ID="Literal2" runat="server"></asp:Literal>

                            </div>

                        </div>
                    </div>
                    <div class="blog-author">
                        <div class="media align-items-center">
                            <img src="img/blog/author.png" alt="">
                            <div class="media-body">
                                <a href="#">
                                    <h4>Harvard milan</h4>
                                </a>
                                <p>Second divided from form fish beast made. Every of seas all gathered use saying you're, he our dominion twon Second divided from</p>
                            </div>
                        </div>
                    </div>

                    <div class="comments-area">
                        <h4>05 Comments</h4>
                        <div class="comment-list">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">
                                    <div class="thumb">
                                        <img src="img/blog/c1.png" alt="">
                                    </div>
                                    <div class="desc">
                                        <p class="comment">
                                            Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser 
                                 
                                        </p>

                                        <div class="d-flex justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <h5>
                                                    <a href="#">Emilly Blunt</a>
                                                </h5>
                                                <p class="date">March 12, 2019 at 3:12 pm </p>
                                            </div>

                                            <div class="reply-btn">
                                                <a href="#" class="btn-reply text-uppercase">reply</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="comment-list">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">
                                    <div class="thumb">
                                        <img src="img/blog/c2.png" alt="">
                                    </div>
                                    <div class="desc">
                                        <p class="comment">
                                            Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser 
                                     
                                        </p>

                                        <div class="d-flex justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <h5>
                                                    <a href="#">Emilly Blunt</a>
                                                </h5>
                                                <p class="date">December 4, 2017 at 3:12 pm </p>
                                            </div>

                                            <div class="reply-btn">
                                                <a href="#" class="btn-reply text-uppercase">reply</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="comment-list">
                            <div class="single-comment justify-content-between d-flex">
                                <div class="user justify-content-between d-flex">
                                    <div class="thumb">
                                        <img src="img/blog/c3.png" alt="">
                                    </div>
                                    <div class="desc">
                                        <p class="comment">
                                            Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser 
                                     
                                        </p>

                                        <div class="d-flex justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <h5>
                                                    <a href="#">Emilly Blunt</a>
                                                </h5>
                                                <p class="date">February 4, 2019 at 3:12 pm </p>
                                            </div>

                                            <div class="reply-btn">
                                                <a href="#" class="btn-reply text-uppercase">reply</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="comment-form">
                        <h4>Leave a Reply</h4>
                        <form class="form-contact comment_form" action="#" id="commentForm">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9" placeholder="Write Comment"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control" name="name" id="name" type="text" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control" name="email" id="email" type="email" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="website" id="website" type="text" placeholder="Website">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="primary_btn button-contactForm">Send Message</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget popular_post_widget">
                            <h3 class="widget_title">Recent Post</h3>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <div class="media post_item">
                                        <img src='<%# Eval("ThumbnailPic") %>' alt="post" class="img-fluid" style="height: 90px; width: 150px">
                                        <div class="media-body">
                                            <a href="BlogDetails.aspx?bid=<%# Eval("Id") %>">
                                                <h3><%# Eval("BlogTitle") %></h3>
                                            </a>
                                            <p>12/3/2019</p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                        </aside>
                        <aside class="single_sidebar_widget newsletter_widget">
                            <h4 class="widget_title">Newsletter</h4>

                            <form action="#">
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Enter email" required>
                                </div>
                                <button class="primary_btn rounded-0 primary-bg text-white w-100" type="submit">Subscribe</button>
                            </form>
                        </aside>
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
                            <a href="#">
                                <h1 style="color: ActiveCaption">UXversity</h1>
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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="js/gmaps.min.js"></script>
    <script src="js/theme.js"></script>
</body>

</html>
