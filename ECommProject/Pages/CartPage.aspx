<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="ECommProject.Pages.CartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <script src="../Scripts/Jquery/jquery-3.6.3.min.js"></script>
    <script src="../Scripts/main.js"></script>
    <div id="mainBody">
        <div class="container">
            <div class="row">
                <!-- Sidebar ================================================== -->
                <div id="sidebar" class="span3">
                    <div class="well well-small"><a id="myCart" href="product_summary.html">
                        <img src="../images/ico-cart.png" alt="cart">3 Items in your cart  <span class="badge badge-warning pull-right">$155.00</span></a></div>
                    <ul id="sideManu" class="nav nav-tabs nav-stacked">
                        <li class="subMenu open"><a>ELECTRONICS [230]</a>
                            <ul>
                                <li><a class="active" href="products.html"><i class="icon-chevron-right"></i>Cameras (100) </a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Computers, Tablets &amp; laptop (30)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Mobile Phone (80)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Sound &amp; Vision (15)</a></li>
                            </ul>
                        </li>
                        <li class="subMenu"><a>CLOTHES [840] </a>
                            <ul style="display: none">
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Women's Clothing (45)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Women's Shoes (8)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Women's Hand Bags (5)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Men's Clothings  (45)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Men's Shoes (6)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Kids Clothing (5)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Kids Shoes (3)</a></li>
                            </ul>
                        </li>
                        <li class="subMenu"><a>FOOD AND BEVERAGES [1000]</a>
                            <ul style="display: none">
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Angoves  (35)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Bouchard Aine &amp; Fils (8)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>French Rabbit (5)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Louis Bernard  (45)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>BIB Wine (Bag in Box) (8)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Other Liquors &amp; Wine (5)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Garden (3)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Khao Shong (11)</a></li>
                            </ul>
                        </li>
                        <li><a href="products.html">HEALTH &amp; BEAUTY [18]</a></li>
                        <li><a href="products.html">SPORTS &amp; LEISURE [58]</a></li>
                        <li><a href="products.html">BOOKS &amp; ENTERTAINMENTS [14]</a></li>
                    </ul>
                    <br>
                    <div class="thumbnail">
                        <img src="../images/panasonic.jpg" alt="Bootshop panasonoc New camera">
                        <div class="caption">
                            <h5>Panasonic</h5>
                            <h4 style="text-align: center"><a class="btn" href="product_details.html"><i class="icon-zoom-in"></i></a><a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a><a class="btn btn-primary" href="#">$222.00</a></h4>
                        </div>
                    </div>
                    <br>
                    <div class="thumbnail">
                        <img src="../images/kindle.png" title="Bootshop New Kindel" alt="Bootshop Kindel">
                        <div class="caption">
                            <h5>Kindle</h5>
                            <h4 style="text-align: center"><a class="btn" href="product_details.html"><i class="icon-zoom-in"></i></a><a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a><a class="btn btn-primary" href="#">$222.00</a></h4>
                        </div>
                    </div>
                    <br>
                    <div class="thumbnail">
                        <img src="../images/payment_methods.png" title="Bootshop Payment Methods" alt="Payments Methods">
                        <div class="caption">
                            <h5>Payment Methods</h5>
                        </div>
                    </div>
                </div>
                <!-- Sidebar end=============================================== -->
                <div class="span9">
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                        <li class="active">SHOPPING CART</li>
                    </ul>
                    <h3>SHOPPING CART [ <small>3 Item(s) </small>]<a href="products.html" class="btn btn-large pull-right"><i class="icon-arrow-left"></i> Continue Shopping </a></h3>
                    <hr class="soft">
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <th>I AM ALREADY REGISTERED  </th>
                            </tr>
                            <tr>
                                <td>
                                    <form class="form-horizontal">
                                        <div class="control-group">
                                            <label class="control-label" for="inputUsername">Username</label>
                                            <div class="controls">
                                                <input type="text" id="inputUsername" placeholder="Username">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="inputPassword1">Password</label>
                                            <div class="controls">
                                                <input type="password" id="inputPassword1" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="controls">
                                                <button type="submit" class="btn">Sign in</button>
                                                OR <a href="register.html" class="btn">Register Now!</a>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="controls">
                                                <a href="forgetpass.html" style="text-decoration: underline">Forgot password ?</a>
                                            </div>
                                        </div>
                                    </form>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Description</th>
                                <th>Quantity/Update</th>
                                <th>Price</th>
                                <th>Discount</th>
                                <th>Tax</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:ListView ID="ListView1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <img width="60" src="../Images/Products/<%#Eval("Pphoto") %>" alt=""></a></td>
                                        <td><%#Eval("Pname")%><br>
                                            <%#Eval("Pdescription") %></td>
                                        <td>
                                            <div class="input-append">
                                                <input class="span1" style="max-width: 34px" placeholder="1" id="appendedInputButtons" size="16" type="text" value="<%#Eval("No_of_quantities") %>">
                                                <button class="btn" type="button" onclick="removeFromCart(<%#Eval("PId") %>);  window.location.reload();"><i class="icon-minus"></i></button>
                                                <button class="btn" type="button" onclick="addtocart(<%#Eval("PId") %>);  window.location.reload();"><i class="icon-plus"></i></button>
                                                <button class="btn btn-danger" onclick="deleteFromCart(<%#Eval("PId") %>)" type="button"><i class="icon-remove icon-white"></i></button>
                                            </div>
                                        </td>
                                        <td>₹<%#Eval("Pprice") %></td>
                                        <td>$00.00</td>
                                        <td>$00.00</td>
                                        <td>₹<%#Eval("Total_price") %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>


                            <tr>
                                <td colspan="6" style="text-align: right">Total Price:	</td>
                                <td>$228.00</td>
                            </tr>
                           <%-- <tr>
                                <td colspan="6" style="text-align: right">Total Discount:	</td>
                                <td>$50.00</td>
                            </tr>
                            <tr>
                                <td colspan="6" style="text-align: right">Total Tax:	</td>
                                <td>$31.00</td>
                            </tr>--%>
                           <%-- <tr>
                                <td colspan="6" style="text-align: right"><strong>TOTAL ($228 - $50 + $31) =</strong></td>
                                <td class="label label-important" style="display: block"><strong>₹155.00 </strong></td>
                            </tr>--%>
                        </tbody>
                    </table>


                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <td>
                                    <form class="form-horizontal">
                                        <div class="control-group">
                                            <label class="control-label"><strong>VOUCHERS CODE: </strong></label>
                                            <div class="controls">
                                                <input type="text" class="input-medium" placeholder="CODE">
                                                <button type="submit" class="btn">ADD </button>
                                            </div>
                                        </div>
                                    </form>
                                </td>
                            </tr>

                        </tbody>
                    </table>

                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <th>ESTIMATE YOUR SHIPPING </th>
                            </tr>
                            <tr>
                                <td>
                                    <form class="form-horizontal">
                                        <div class="control-group">
                                            <label class="control-label" for="inputCountry">Country </label>
                                            <div class="controls">
                                                <input type="text" id="inputCountry" placeholder="Country">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="inputPost">Post Code/ Zipcode </label>
                                            <div class="controls">
                                                <input type="text" id="inputPost" placeholder="Postcode">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="controls">
                                                <button type="submit" class="btn">ESTIMATE </button>
                                            </div>
                                        </div>
                                    </form>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <a href="products.html" class="btn btn-large"><i class="icon-arrow-left"></i>Continue Shopping </a>
                    <a href="login.html" class="btn btn-large pull-right">Next <i class="icon-arrow-right"></i></a>

                </div>
            </div>
        </div>
    </div>


</asp:Content>

