<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserSignUp.aspx.cs" Inherits="UserHome_UserSignUp" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up:User</title>
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
        .auto-style1 {
            right: 446px;
        }
        .auto-style2 {
            height: 23px;
            left: 0;
            top: 2700%;
            width: 26px;
        }
    </style>
</head>
<body>

    <div class="main">
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">User: Sign up</h2>
                        <form class="register-form" runat="server">
                            <div class="form-group">
                                <label for="name" style="height: 23px" class="auto-style1"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Incorrect Name" ForeColor="Red" ValidationExpression="^[a-zA-Z]+[\-'\s]?[a-zA-Z]+$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="email" class="auto-style1" style="width: 4px"><i class="zmdi zmdi-email"></i></label>
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Email" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Email-Id" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Incorrect Email-Id" ForeColor="Red" ValidationExpression="^([\w\d\-\.]+)@{1}(([\w\d\-]{1,67})|([\w\d\-]+\.[\w\d\-]{1,67}))\.(([a-zA-Z\d]{2,4})(\.[a-zA-Z\d]{2})?)$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="pass" class="auto-style2"><i class="zmdi zmdi-phone"></i></label>
                                <asp:TextBox ID="TextBox3" runat="server" placeholder="Contact"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ClientIDMode="Predictable" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Contact No. Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox3" Display="Dynamic" EnableViewState="False" ErrorMessage="Phone Number should be of 10 digit" ForeColor="Red" ValidationExpression="(?:\s+|)((0|(?:(\+|)91))(?:\s|-)*(?:(?:\d(?:\s-)*\d{9})|(?:\d{2}(?:\s|-)*\d{8})|(?:\d{3}(?:\s|-)*\d{7}))|\d{10})(?:\s+|)"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="TextBox4" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Enter Password**" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Password must be at least 4 characters, no more than 8 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit." ForeColor="Red" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$">Incorrect Password**</asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="Button1" runat="server" Text="Sign Up" class="form-submit" OnClick="Button1_Click" />
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure>
                            <img src="images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="UserSignIn.aspx" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>