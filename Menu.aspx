<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Bakery.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Menu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <!-- Menu Container -->
   <form runat="server">
       <h1 class="w3-center w3-jumbo" id="title">THE MENU <br /></h1>

       <div class="row" id="card">

           <!-- Snacks Container -->
           <div class="col-lg-4 border border-warning">
               <h1 style="text-align: center">Snacks</h1>
               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">Item</div>
                   <div class="p-2 bd-highlight">Cost <sub>/pcs</sub></div>
                   <div class="p-2 bd-highlight">Quantity</div>
                   <div class="p-2 bd-highlight">-</div>
               </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="samosa_cb" runat="server" Text="Samosa"  />
                   </div>
                       <div class="p-2 bd-highlight">15/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="samosa_dd" runat="server" >
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="samosa_add" runat="server" Text="Add" OnClick="samosa_add_Click"  />
                       </div>
                   </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="roll_cb" runat="server" Text="Roll" />
                    </div>
                       <div class="p-2 bd-highlight">25/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="roll_dd" runat="server" >
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="roll_add" runat="server" Text="Add" OnClick="roll_add_Click"  />
                       </div>
                   </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="burger_cb" runat="server" Text="Burger" />
                    </div>
                       <div class="p-2 bd-highlight">80/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="burger_dd" runat="server" >
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="burger_add" runat="server" Text="Add" OnClick="burger_add_Click" />
                       </div>
                   </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="pizza_cb" runat="server" Text="Pizza" />
                    </div>
                       <div class="p-2 bd-highlight">100/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="pizza_dd" runat="server">
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="pizza_add" runat="server" Text="Add" OnClick="pizza_add_Click"/>
                       </div>
                   </div>
               </div>


           <!-- Drinks Container -->

            <div class="col-lg-4 border border-warning">
               <h1 style="text-align: center">Drinks</h1>
               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">Item</div>
                   <div class="p-2 bd-highlight">Cost <sub>/pcs</sub></div>
                   <div class="p-2 bd-highlight">Quantity</div>
                   <div class="p-2 bd-highlight">-</div>
               </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="sting_cb" runat="server" Text="Sting"  />
                    </div>
                       <div class="p-2 bd-highlight">30/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="sting_dd" runat="server" >
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="sting_add" runat="server" Text="Add" OnClick="sting_add_Click" />
                       </div>
                   </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="rb_cb" runat="server" Text="RedBull" />
                    </div>
                       <div class="p-2 bd-highlight">90/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="rb_dd" runat="server" >
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="rb_add" runat="server" Text="Add" OnClick="rb_add_Click"  />
                       </div>
                   </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="ln_cb" runat="server" Text="Limonade" />
                    </div>
                       <div class="p-2 bd-highlight">90/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="ln_dd" runat="server"  >
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="ln_add" runat="server" Text="Add" OnClick="ln_add_Click" />
                       </div>
                   </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="cap_cb" runat="server" Text="Cappuccino" />
                    </div>
                       <div class="p-2 bd-highlight">120/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="cap_dd" runat="server" >
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="cap_add" runat="server" Text="Add" OnClick="cap_add_Click" />
                       </div>
                   </div>
               </div>


           <!-- Shakes Container -->

            <div class="col-lg-4 border border-warning">
               <h1 style="text-align: center">Milkshakes</h1>
               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">Item</div>
                   <div class="p-2 bd-highlight">Cost <sub>/pcs</sub></div>
                   <div class="p-2 bd-highlight">Quantity</div>
                   <div class="p-2 bd-highlight">-</div>
               </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="choc_cb" runat="server" Text="Chocolate" />
                    </div>
                       <div class="p-2 bd-highlight">70/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="choc_dd" runat="server">
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="choc_add" runat="server" Text="Add" OnClick="choc_add_Click"  />
                       </div>
                   </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="van_cb" runat="server" Text="Vanilla" />
                    </div>
                       <div class="p-2 bd-highlight">70/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="van_dd" runat="server" >
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="van_add" runat="server" Text="Add" OnClick="van_add_Click" />
                       </div>
                   </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="bs_cb" runat="server" Text="ButterScotch" />
                    </div>
                       <div class="p-2 bd-highlight">120/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="bs_dd" runat="server">
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="bs_add" runat="server" Text="Add" OnClick="bs_add_Click" />
                       </div>
                   </div>

               <div class="d-flex justify-content-between">
                   <div class="p-2 bd-highlight">
                       <asp:CheckBox ID="rv_cb" runat="server" Text="Red Velvet" />
                    </div>
                       <div class="p-2 bd-highlight">150/-</div>
                       <div class="p-2 bd-highlight">
                           <asp:DropDownList ID="rv_dd" runat="server">
                               <asp:ListItem>0</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                               <asp:ListItem>7</asp:ListItem>
                               <asp:ListItem>8</asp:ListItem>
                               <asp:ListItem Value="9">9</asp:ListItem>
                               <asp:ListItem>10</asp:ListItem>
                           </asp:DropDownList>

                       </div>
                       <div class="p-2 bd-highlight">
                           <asp:Button ID="rv_add" runat="server" Text="Add" OnClick="rv_add_Click"/>
                       </div>
                   </div>
               </div>
       </div>
       
       <div class="buy">
           <asp:Button ID="Button1" runat="server" Text="Buy" OnClick="Button1_Click" Width="105px" />
       </div>

   </form>
</asp:Content>