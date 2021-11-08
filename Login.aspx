<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bakery.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Login_style.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
</head>
<body>

    <div class="main-bg">
        <div class="login-container text-c animated flipInX">
            <div>
                <h1 class="logo-badge text-whitesmoke"><span class="fa fa-user-circle"></span></h1>
            </div>
            <h3 class="text-whitesmoke">Log In</h3>
            <div class="container-content">
                <form class="margin-t" runat="server">
                    <div class="form-group">
                        <asp:TextBox ID="username_tb" type="text" class="form-control mt-2" runat="server" placeholder="Email"  > </asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="pass_tb" runat="server" type="password" class="form-control mt-2" placeholder="Password" ></asp:TextBox>
                    </div>

                    <asp:Button ID="login_btn" class="form-button button-l margin-b mt-4" runat="server" type="submit" Text="Login" OnClick="login_btn_Click" />
                  
                    <asp:Label ID="error" runat="server" Text="Invalid User Credentials" BorderWidth="3px" ForeColor="Red" ></asp:Label>
                    <br />

                    <a class="text-darkyellow" href="#"><small>Forgot your password?</small></a>
                    <br />

                    <p class="text-whitesmoke text-center"><small>Do not have an account?</small></p>
                    <asp:Button ID="register_btn" class="text-darkyellow" runat="server" Text="Register" BackColor="#4A484A" OnClick="register_btn_Click" />
                </form>
            </div>
        </div>
    </div>
</body>
</html>
