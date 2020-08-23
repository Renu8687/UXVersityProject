<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserSignIn.aspx.cs" Inherits="UserHome_UserHome" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign In User</title>
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
                            <img src="images/signin-image.jpg" alt="sing up image">
                        </figure>
                        <a href="UserSignUp.aspx" class="signup-image-link">Create an account</a>
                        <a href="../Default.aspx" class="signup-image-link">Go to Home Page</a>


                    </div>
                    <div class="signin-form">
                        <h2 class="form-title">User: Sign In</h2>
                        <form runat="server" class="register-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Enter Email-Id" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                &nbsp;
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Incorrect Email-Id" ForeColor="Red" ValidationExpression="^([\w\d\-\.]+)@{1}(([\w\d\-]{1,67})|([\w\d\-]+\.[\w\d\-]{1,67}))\.(([a-zA-Z\d]{2,4})(\.[a-zA-Z\d]{2})?)$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="your_pass" style="height: 23px; width: 4px"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" placeholder="Your Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Password should be in correct format" ForeColor="Red" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" CssClass="form-submit" />

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
