<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeveloperSignUp.aspx.cs" Inherits="Developer_DeveloperSignUp" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up:Developer</title>
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main">
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Developer:Sign up</h2>
                        <form class="register-form" runat="server">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-phone"></i></label>
                                <asp:TextBox ID="TextBox3" runat="server" placeholder="Contact"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="TextBox4" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="Button1" runat="server" Text="Sign Up" class="form-submit" OnClick="Button1_Click" />
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure>
                            <img src="images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="DeveloperSignIn.aspx" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
