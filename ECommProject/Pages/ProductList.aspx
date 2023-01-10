﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="ECommProject.Pages.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <script src="../Scripts/Jquery/jquery-3.6.3.min.js"></script>
    <script src="../Scripts/main.js"></script>
    <div class="mainBody">
        <div class="container">

            <div class="row">
                <!-- Sidebar ================================================== -->
                <div id="sidebar" class="span3">
                    <div class="well well-small">
                        <a id="myCart" href="product_summary.html">
                            <img src="../themes/images/ico-cart.png" alt="cart">3 Items in your cart  <span class="badge badge-warning pull-right">$155.00</span></a>
                    </div>
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
                        <img src="../themes/images/products/panasonic.jpg" alt="Bootshop panasonoc New camera">
                        <div class="caption">
                            <h5>Panasonic</h5>
                            <h4 style="text-align: center"><a class="btn" href="product_details.html"><i class="icon-zoom-in"></i></a>

                                <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a>
                                <a class="btn btn-primary" href="#">$222.00</a></h4>
                        </div>
                    </div>
                    <br>
                    <div class="thumbnail">
                        <img src="../themes/images/products/kindle.png" title="Bootshop New Kindel" alt="Bootshop Kindel">
                        <div class="caption">
                            <h5>Kindle</h5>
                            <h4 style="text-align: center"><a class="btn" href="product_details.html"><i class="icon-zoom-in"></i></a><a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a><a class="btn btn-primary" href="#">$222.00</a></h4>
                        </div>
                    </div>
                    <br>
                    <div class="thumbnail">
                        <img src="../themes/images/payment_methods.png" title="Bootshop Payment Methods" alt="Payments Methods">
                        <div class="caption">
                            <h5>Payment Methods</h5>
                        </div>
                    </div>
                </div>
                <!-- Sidebar end=============================================== -->
                <div class="span9">
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                        <li class="active">Products Name</li>
                    </ul>
                    <h3>Products Name <small class="pull-right"><asp:Label runat="server" ID="PdCount"></asp:Label></small></h3>
                    <hr class="soft">
                    <p>
                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular and we have a great number of faithful customers all over the country.

                    </p>
                    <hr class="soft">
                    <form class="form-horizontal span6">
                        <div class="control-group">
                            <label class="control-label alignL">Sort By </label>
                            <select>
                                <option>Priduct name A - Z</option>
                                <option>Priduct name Z - A</option>
                                <option>Priduct Stoke</option>
                                <option>Price Lowest first</option>
                            </select>
                        </div>
                    </form>

                    <div id="myTab" class="pull-right">
                        <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
                        <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
                    </div>
                    <br class="clr">
                    <div class="tab-content">
                        <div class="tab-pane" id="listView">
                            <div class="row">
                                <div class="span2">
                                    <img src="../themes/images/products/3.jpg" alt="">
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
			
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr">
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3>$140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">
                                            Adds product to compair
		
                                        </label>
                                        <br>

                                        <a href="product_details.html" class="btn btn-large btn-primary">Add to <i class=" icon-shopping-cart"></i></a>
                                        <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                    </form>
                                </div>
                            </div>
                            <hr class="soft">
                            <div class="row">
                                <div class="span2">
                                    <img src="../themes/images/products/1.jpg" alt="">
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
			
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr">
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3>$140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">
                                            Adds product to compair
			
                                        </label>
                                        <br>

                                        <a href="product_details.html" class="btn btn-large btn-primary">Add to <i class=" icon-shopping-cart"></i></a>
                                        <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                    </form>
                                </div>
                            </div>
                            <hr class="soft">
                            <div class="row">
                                <div class="span2">
                                    <img src="../themes/images/products/3.jpg" alt="">
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
			
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr">
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3>$140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">
                                            Adds product to compair
			
                                        </label>
                                        <br>

                                        <a href="product_details.html" class="btn btn-large btn-primary">Add to <i class=" icon-shopping-cart"></i></a>
                                        <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                    </form>
                                </div>
                            </div>
                            <hr class="soft">
                            <div class="row">
                                <div class="span2">
                                    <img src="../themes/images/products/3.jpg" alt="">
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
			
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr">
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3>$140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">
                                            Adds product to compair
			
                                        </label>
                                        <br>

                                        <a href="product_details.html" class="btn btn-large btn-primary">Add to <i class=" icon-shopping-cart"></i></a>
                                        <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                    </form>
                                </div>
                            </div>

                            <hr class="soft">
                            <div class="row">
                                <div class="span2">
                                    <img src="../themes/images/products/3.jpg" alt="">
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
			
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr">
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3>$140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">
                                            Adds product to compair
			
                                        </label>
                                        <br>
                                        <a href="product_details.html" class="btn btn-large btn-primary">Add to <i class=" icon-shopping-cart"></i></a>
                                        <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
                                    </form>
                                </div>
                            </div>
                            <hr class="soft">
                            <div class="row">
                                <div class="span2">
                                    <img src="../themes/images/products/3.jpg" alt="">
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
			
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr">
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3>$140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">
                                            Adds product to compair
			
                                        </label>
                                        <br>

                                        <a href="product_details.html" class="btn btn-large btn-primary">Add to <i class=" icon-shopping-cart"></i></a>
                                        <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>

                                    </form>
                                </div>
                            </div>
                            <hr class="soft">
                        </div>
                        <div class="tab-pane  active" id="blockView">
                            <ul class="thumbnails">


                                <asp:ListView ID="ListView1" runat="server">
                                    <ItemTemplate>
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <a href="Product_Details.aspx?productId=<%#Eval("Pid") %>">
                                                    <img height="160" width="160" src="../Images/Products/<%#Eval("Pphoto") %>" alt=""></a>
                                                <div class="caption">
                                                    <h5><%#Eval("Pname") %></h5>
                                                    <p>
                                                        <%#Eval("Pdescription") %>
                                                    </p>
                                                    <h4 style="text-align: center">
                                                        <a class="btn" href="product_details.html"><i class="icon-zoom-in"></i></a>
                                                        <button type="button" class="btn" onclick="addtocart(<%#Eval("Pid") %>)">Add to <i class="icon-shopping-cart"></i></button>
                                                        <a class="btn btn-primary" href="#"><%#Eval("Pprice") %></a>

                                                    </h4>
                                                </div>
                                            </div>
                                        </li>

                                    </ItemTemplate>
                                </asp:ListView>
                            </ul>
                            <hr class="soft">
                        </div>
                    </div>
                    <a href="compair.html" class="btn btn-large pull-right">Compare Product</a>
                    <div class="pagination">
                        <ul>
                            <li><a href="#">‹</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">...</a></li>
                            <li><a href="#">›</a></li>
                        </ul>
                    </div>
                    <br class="clr">
                </div>
            </div>

        </div>
    </div>

</asp:Content>

