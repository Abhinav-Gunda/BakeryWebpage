<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Bakery.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
    <link href="Dashboard.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <form runat="server">

        <h1 class="w3-center w3-jumbo" id="title">CART
            <br />
        </h1>
        <div class="row">

            <div class="cart">
                <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="gph" ItemPlaceholderID="iph">
                    <LayoutTemplate>
                        <table class="table">
                            <tr>
                                <th>Item</th>
                                <th>Cost</th>
                                <th>Quantity</th>
                                <th>Sum</th>
                            </tr>
                            <tr id="gph" runat="server"></tr>
                        </table>
                    </LayoutTemplate>

                    <GroupTemplate>
                        <tr>
                            <tr id="iph" runat="server"></tr>
                        </tr>
                    </GroupTemplate>

                    <ItemTemplate>
                        <td><%# Eval("Item") %></td>
                        <td><%# Eval("Cost") %></td>
                        <td><%# Eval("T_Quant") %></td>
                        <td><%# Eval("Total") %></td>
                    </ItemTemplate>
                </asp:ListView>
            </div>

            <div class="d-flex justify-content-evenly">

                <div class="p-2 bd-highlight" id="l1">
                    <asp:Label ID="Label1" runat="server" Text="Final Bill" Enabled="false" Height="55px" Width="250px" BackColor="White" BorderColor="#EBD614" BorderStyle="Solid"></asp:Label>
                </div>

                <div class="p-2 bd-highlight" id="l2">
                    <asp:Label ID="Label2" runat="server" Text="0" Enabled="false" Height="55px" Width="150px" BackColor="White" BorderColor="#EBD614" BorderStyle="Solid"></asp:Label>
                </div>

                <div class="p-2 bd-highlight" id="bill">
                    <asp:Button ID="Button2" runat="server" Text="Proceeed" Height="55px" OnClick="Button1_Click" Width="129px" />
                </div>
            </div>

        </div>

    </form>
</asp:Content>
