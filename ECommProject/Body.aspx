<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Body.aspx.cs" Inherits="ECommProject.Body" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <script src="Scripts/Jquery/jquery-3.6.3.min.js"></script>
    <script src="Scripts/main.js"></script>
    <div id="carouselBlk">
        <div id="myCarousel" class="carousel slide">
            <div class="carousel-inner">

                <%--                <div class="item active">
                    <div class="container">
                        <a href="register.html">
                            <img style="width: 100%" src="ELectronics1.jpg" alt="" /></a>
                    </div>
                </div>--%>
                <%-- <div class="item">
                    <div class="container">
                        <a href="register.html">
                            <img src="Books1.png" alt="" /></a>
                    </div>
                </div>--%>
                <%-- <div class="item">
                    <div class="container">
                        <a href="register.html">
                            <img src="Books2.jpg" alt="" /></a>
                    </div>
                </div>--%>
                <div class="item">
                    <div class="container">
                        <a href="register.html">
                            <img src="themes/images/carousel/5.png" alt="" /></a>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>
    </div>
    <div id="mainBody">
        <div class="container">
            <div class="row">

                <!-- Sidebar ================================================== -->
                <div id="sidebar" class="span3">
                    <div class="well well-small">
                        <a id="myCart" href="product_summary.html">
                            <img src="themes/images/ico-cart.png" alt="cart">3 Items in your cart  <span class="badge badge-warning pull-right">₹12000.00</span></a>
                    </div>
                    <ul id="sideManu" class="nav nav-tabs nav-stacked">
                        <li class="subMenu"><a>ELECTRONICS [230]</a>
                            <ul style="display: none">
                                <li><a class="active" href="products.html"><i class="icon-chevron-right"></i>Cameras (100) </a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Computers, Tablets & laptop (30)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Mobile Phone (80)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Sound & Vision (15)</a></li>
                            </ul>
                        </li>

                        <li class="subMenu"><a>BOOKS & ENTERTAINMENTS [14]</a>
                            <ul style="display: none">
                                <li><a class="active" href="products.html"><i class="icon-chevron-right"></i>Romance(100)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Mystery(30)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Thriller(80)</a></li>
                                <li><a href="products.html"><i class="icon-chevron-right"></i>Fantasy(50))</a></li>
                            </ul>
                        </li>
                    </ul>
                    </ul>
    <br />
                    <div class="thumbnail">
                        <img src="themes/images/products/panasonic.jpg" alt="S Partners panasonoc New camera" />
                        <div class="caption">
                            <h5>Panasonic</h5>
                            <h4 style="text-align: center"><a class="btn" href="product_details.html"><i class="icon-zoom-in"></i></a><a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a><a class="btn btn-primary" href="#">₹18000.00</a></h4>
                        </div>
                    </div>
                    <br />
                    <div class="thumbnail">
                        <img src="themes/images/products/kindle.png" title="S Partners New Kindel" alt="Bootshop Kindel">
                        <div class="caption">
                            <h5>Kindle</h5>
                            <h4 style="text-align: center"><a class="btn" href="product_details.html"><i class="icon-zoom-in"></i></a><a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a><a class="btn btn-primary" href="#">₹20000.00</a></h4>
                        </div>
                    </div>
                    <br />
                    <div class="thumbnail">
                        <img src="themes/images/payment_methods.png" title="S Partners Payment Methods" alt="Payments Methods">
                        <div class="caption">
                            <h5>Payment Methods</h5>
                        </div>
                    </div>
                </div>
                <!-- Sidebar end=============================================== -->


                <div class="span9">

                    <div class="well well-small">
                        <h4>Featured Products </h4>
                        <div class="row-fluid">
                            <div id="featured" class="carousel slide">
                                <div class="carousel-inner">
                                    <% 
                                        int i = 0;
                                        foreach (var myEmp in categories)
                                        {
                                    %>
                                    <%if (i == 0)
                                        {%>


                                    <div class="item active">
                                        <ul class="thumbnails">
                                            <%} %>
                                            <li class="span3">
                                                <div class="thumbnail">
                                                    <i class="tag"></i>
                                                    <a href="Pages/ProductList.aspx?Categoryid=1">
                                                        <img src="C1.jpg" alt="">
                                                    </a>

                                                    <div class="caption">
                                                        <h5>Camera</h5>
                                                        <h4><a class="btn" href="CategoryPage.aspx?Categoryid=1">VIEW</a> <span class="pull-right">₹17999.00</span></h4>
                                                    </div>
                                                </div>
                                            </li>
                                            <% i = i + 1;
                                                if (i == 4)
                                                {
                                                    i = 0;
                                            %>
                                        </ul>
                                    </div>

                                    <% }
                                        } %>


                                    <a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
                                    <a class="right carousel-control" href="#featured" data-slide="next">›</a>
                                </div>
                            </div>
                        </div>
                        <h4>Latest Products </h4>
                        <ul class="thumbnails">
                            <li class="span3">
                                <div class="thumbnail">
                                    <a href="product_details.html">
                                        <img src="C1.jpg" alt="" /></a>
                                    <div class="caption">
                                        <h5>Nikon</h5>
                                        <h4 style="text-align: center"><a class="btn" href="product_details.html"><i class="icon-zoom-in"></i></a><a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a><a class="btn btn-primary" href="#">$222.00</a></h4>
                                    </div>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="thumbnail">
                                    <a href="product_details.html">
                                        <img src="C2.jpg" alt="" /></a>
                                    <div class="caption">
                                        <h5>Canon</h5>
                                        <h4 style="text-align: center"><a class="btn" href="product_details.html"><i class="icon-zoom-in"></i></a><a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a><a class="btn btn-primary" href="#">$222.00</a></h4>
                                    </div>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="thumbnail">
                                    <a href="product_details.html">
                                        <img src="M1.jpg" alt="" /></a>
                                    <div class="caption">
                                        <h5>Dell</h5>
                                        <h4 style="text-align: center"><a class="btn" href="product_details.html"><i class="icon-zoom-in"></i></a><a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a><a class="btn btn-primary" href="#">$222.00</a></h4>
                                    </div>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="thumbnail">
                                    <a href="product_details.html">
                                        <img src="M2.jpg" alt="" /></a>
                                    <div class="caption">
                                        <h5>Microsoft</h5>
                                        <h4 style="text-align: center"><a class="btn" href="product_details.html"><i class="icon-zoom-in"></i></a><a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a><a class="btn btn-primary" href="#">$222.00</a></h4>
                                    </div>
                                </div>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
</asp:Content>
