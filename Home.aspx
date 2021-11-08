<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Bakery.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    
    <form runat="server">
        <div class="wd">
            
            <h1>Welcome...!</h1>
            <p>Satisfy your appetite with delectable cuisine and a friendly welcome from your home itself</p>

            <br />
            <p>1. Select your desired MENU</p>
            <p>2. Select Quantity and Add</p>
            <p>3. Click BUY and checkout your CART </p>
            <p>4.Complete Billing and enjoy your order</p>
            <br />

            <h2>WANNA BUY <br /> SOMETHING ?</h2>
            <asp:Button ID="Button1" runat="server" Text="Login" Height="44px" OnClick="Button1_Click" Width="133px" />
        </div>
       
    </form>

</asp:Content>
