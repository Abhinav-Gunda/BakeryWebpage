<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Bakery.Register" %>

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
        <h3 class="text-whitesmoke">New Registration</h3>
        <div class="container-content">
            <form class="margin-t" runat="server">
                <div class="form-group">
                    <asp:TextBox ID="reg_username" type="text" class="form-control " placeholder="Email"  runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:TextBox ID="reg_pass" type="password" class="form-control mt-2" placeholder="Password" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:TextBox ID="reg_con_pass" type="password" class="form-control mt-2" placeholder="Confirm Password"  runat="server"></asp:TextBox>
                </div>
                <br />

                <asp:Label ID="reg_error" runat="server" Text="Password did not match" BorderWidth="3px" ForeColor="Red" ></asp:Label>
                <br />

                <asp:Button ID="Button1" type="submit" class="form-button button-l margin-b mt-4" runat="server" Text="Register" OnClick="Button1_Click" />
                
                <p class="text-whitesmoke text-center"><small>Already have an account?</small></p>
                <asp:Button ID="reg_login_btn" class="text-darkyellow" runat="server" Text="Login" BackColor="#4A484A" OnClick="reg_login_btn_Click" />
                
            </form>
        </div>
    </div>
</div>
</body>
</html>
