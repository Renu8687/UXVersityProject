<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeveloperSignIn.aspx.cs" Inherits="Developer_DeveloperSignIn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form Developer</title>
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="main">
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure>
                            <img src="images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="DeveloperSignUp.aspx" class="signup-image-link">Create an account</a>
                        <a href="../Default.aspx" class="signup-image-link">Go to Home</a>

                    </div>
                    <div class="signin-form">
                        <h2 class="form-title">Developer:Sign In</h2>
                        <form runat="server" class="register-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Email" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" placeholder="Your Password" ></asp:TextBox>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" CssClass="form-submit"/>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
