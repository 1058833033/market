<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Checkout</title>
    <!--/tags -->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script>
        /*addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }*/
    </script>
    <!--//tags -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/font-awesome.css" rel="stylesheet">
    <!--pop-up-box-->
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//pop-up-box-->
    <!-- price range -->
    <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
    <!-- flexslider -->
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
    <!-- fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
          rel="stylesheet">
    <style type="text/css">
        a {
            white-space: nowrap;
            overflow: hidden;
            display: block;
        }
    </style>
</head>

<body>
<!-- top-header -->
<div class="header-most-top">
    <p>杂货优惠区优惠和折扣</p>
</div>
<!-- //top-header -->
<!-- header-bot-->
<div class="header-bot">
    <div class="header-bot_inner_wthreeinfo_header_mid">
        <!-- header-bot-->
        <div class="col-md-4 logo_agile">
            <h1>
                <a href="index.jsp">
                    <span>G</span>rocery
                    <span>S</span>hoppy
                    <img src="images/logo2.png" alt=" ">
                </a>
            </h1>
        </div>
        <!-- header-bot -->
        <div class="col-md-8 header">
            <!-- header lists -->
            <ul>
                <li>
                    <a class="play-icon popup-with-zoom-anim" href="#small-dialog1">
                        <span class="fa fa-map-marker" aria-hidden="true"></span>商品定位</a>
                </li>
                <li>
                    <a href="#" data-toggle="modal" data-target="#myModal1">
                        <span class="fa fa-truck" aria-hidden="true"></span>订单跟踪</a>
                </li>
                <li>
                    <span class="fa fa-phone" aria-hidden="true"></span> 13333333333
                </li>
                <c:choose>
                    <c:when test="${sessionScope.users == null}">
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span> 登录 </a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal2">
                                <span class="fa fa-pencil-square-o" aria-hidden="true"></span> 注
                                册 </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="#" id="logout">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span> 注销 </a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
            <!-- //header lists -->
            <!-- search -->
            <div class="agileits_search">
                <form action="#" method="post">
                    <input name="Search" type="search" placeholder="今天要来点什么？" required="">
                    <button type="submit" class="btn btn-default" aria-label="Left Align">
                        <span class="fa fa-search" aria-hidden="true"> </span>
                    </button>
                </form>
            </div>
            <!-- //search -->
            <!-- cart details -->
            <div class="top_nav_right">
                <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                    <form action="#" method="post" class="last">
                        <input type="hidden" name="cmd" value="_cart">
                        <input type="hidden" name="display" value="1">
                        <button class="w3view-cart" type="submit" name="submit" value="">
                            <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                        </button>
                    </form>
                </div>
            </div>
            <!-- //cart details -->
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- shop locator (popup) -->
<!-- Button trigger modal(shop-locator) -->
<div id="small-dialog1" class="mfp-hide">
    <div class="select-city">
        <h3>Please Select Your Location</h3>
        <select class="list_of_cities">
            <optgroup label="Popular Cities">
                <option selected style="display:none;color:#eee;">Select City</option>
                <option>Birmingham</option>
                <option>Anchorage</option>
                <option>Phoenix</option>
                <option>Little Rock</option>
                <option>Los Angeles</option>
                <option>Denver</option>
                <option>Bridgeport</option>
                <option>Wilmington</option>
                <option>Jacksonville</option>
                <option>Atlanta</option>
                <option>Honolulu</option>
                <option>Boise</option>
                <option>Chicago</option>
                <option>Indianapolis</option>
            </optgroup>
            <optgroup label="Alabama">
                <option>Birmingham</option>
                <option>Montgomery</option>
                <option>Mobile</option>
                <option>Huntsville</option>
                <option>Tuscaloosa</option>
            </optgroup>

        </select>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //shop locator (popup) -->
<!-- signin Model -->
<!-- Modal1 -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body modal-body-sub_agile">
                <div class="main-mailposi">
                    <span class="fa fa-envelope-o" aria-hidden="true"></span>
                </div>
                <div class="modal_body_left modal_body_left1">
                    <h3 class="agileinfo_sign">Sign In </h3>
                    <p>
                        请登录, 开启您的生鲜之旅。 没有账号?
                        <a href="#" data-toggle="modal" data-target="#myModal2">
                            请注册</a>
                    </p>
                    <form action="#" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" placeholder="User Name" id="username1" required="">
                        </div>
                        <div class="styled-input">
                            <input type="password" placeholder="Password" id="password1" required="">
                        </div>
                        <input type="button" value="Sign In" id="signIn">
                    </form>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //Modal content-->
    </div>
</div>
<!-- //Modal1 -->
<!-- //signin Model -->
<!-- signup Model -->
<!-- Modal2 -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body modal-body-sub_agile">
                <div class="main-mailposi">
                    <span class="fa fa-envelope-o" aria-hidden="true"></span>
                </div>
                <div class="modal_body_left modal_body_left1">
                    <h3 class="agileinfo_sign">Sign Up</h3>
                    <p>
                        Come join the Grocery Shoppy! Let's set up your Account.
                    </p>
                    <form action="#" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" placeholder="Name" name="Name" required="">
                        </div>
                        <div class="styled-input">
                            <input type="email" placeholder="E-mail" name="Email" required="">
                        </div>
                        <div class="styled-input">
                            <input type="password" placeholder="Password" name="password" id="password1" required="">
                        </div>
                        <div class="styled-input">
                            <input type="password" placeholder="Confirm Password" name="Confirm Password" id="password2"
                                   required="">
                        </div>
                        <input type="submit" value="Sign Up">
                    </form>
                    <p>
                        <a href="#">By clicking register, I agree to your terms</a>
                    </p>
                </div>
            </div>
        </div>
        <!-- //Modal content-->
    </div>
</div>
<!-- //Modal2 -->
<!-- //signup Model -->
<!-- //header-bot -->
<!-- navigation -->
<div class="ban-top">
    <div class="container">
        <div class="agileits-navi_search">
            <form action="#" method="post">
                <select id="agileinfo-nav_search" class="goodType" name="agileinfo_search" required="">
                    <%--<option value="">All Categories</option>
                    <option value="Kitchen">Kitchen</option>
                    <option value="Household">Household</option>
                    <option value="Snacks &amp; Beverages">Snacks & Beverages</option>
                    <option value="Personal Care">Personal Care</option>
                    <option value="Gift Hampers">Gift Hampers</option>
                    <option value="Fruits &amp; Vegetables">Fruits & Vegetables</option>
                    <option value="Baby Care">Baby Care</option>
                    <option value="Soft Drinks &amp; Juices">Soft Drinks & Juices</option>
                    <option value="Frozen Food">Frozen Food</option>
                    <option value="Bread &amp; Bakery">Bread & Bakery</option>
                    <option value="Sweets">Sweets</option>--%>
                </select>
            </form>
        </div>
        <div class="top_nav_left">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1"
                                aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav menu__list">
                            <li>
                                <a class="nav-stylehead" href="index.jsp">主页
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="nav-stylehead" href="about.jsp">关于我们</a>
                            </li>


                            <li>
                                <a class="nav-stylehead" href="faqs.jsp">常见问题解答</a>
                            </li>

                            <li>
                                <a class="nav-stylehead" href="contact.jsp">联系我们</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- //navigation -->
<!-- banner-2 -->
<div class="page-head_agile_info_w3l">

</div>
<!-- //banner-2 -->
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="index.jsp">Home</a>

                </li>
                <li><a href="#">| 购物车</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- checkout page -->
<div class="privacy">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">购物车
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>
        <!-- //tittle heading -->
        <div class="checkout-right">
            <h4>您的购物车包含：
                <span>3 个商品</span>
            </h4>
            <div class="table-responsive">
                <table class="timetable_sub">
                    <thead>
                    <tr>
                        <th>编号</th>
                        <th>商品</th>
                        <th>数量</th>
                        <th>商品名称</th>

                        <th>价钱</th>
                        <th>去掉</th>
                    </tr>
                    </thead>
                    <tbody class="cart1">
                    <%-- <tr class="rem1">
                         <td class="invert">1</td>
                         <td class="invert-image">
                             <a href="single2.jsp">
                                 <img src="images/a7.jpg" alt=" " class="img-responsive">
                             </a>
                         </td>
                         <td class="invert">
                             <div class="quantity">
                                 <div class="quantity-select">
                                     <div class="entry value-minus">&nbsp;</div>
                                     <div class="entry value">
                                         <span>1</span>
                                     </div>
                                     <div class="entry value-plus active">&nbsp;</div>
                                 </div>
                             </div>
                         </td>
                         <td class="invert">Spotzero Spin Mop</td>
                         <td class="invert">$888.00</td>
                         <td class="invert">
                             <div class="rem">
                                 <div class="close1"></div>
                             </div>
                         </td>
                     </tr>--%>
                    <%-- <tr class="rem2">
                         <td class="invert">2</td>
                         <td class="invert-image">
                             <a href="single2.jsp">
                                 <img src="images/s6.jpg" alt=" " class="img-responsive">
                             </a>
                         </td>
                         <td class="invert">
                             <div class="quantity">
                                 <div class="quantity-select">
                                     <div class="entry value-minus">&nbsp;</div>
                                     <div class="entry value">
                                         <span>1</span>
                                     </div>
                                     <div class="entry value-plus active">&nbsp;</div>
                                 </div>
                             </div>
                         </td>
                         <td class="invert">Fair & Lovely, 80 g</td>
                         <td class="invert">$121.60</td>
                         <td class="invert">
                             <div class="rem">
                                 <div class="close2"></div>
                             </div>
                         </td>
                     </tr>
                     <tr class="rem3">
                         <td class="invert">3</td>
                         <td class="invert-image">
                             <a href="single.jsp">
                                 <img src="images/s5.jpg" alt=" " class="img-responsive">
                             </a>
                         </td>
                         <td class="invert">
                             <div class="quantity">
                                 <div class="quantity-select">
                                     <div class="entry value-minus">&nbsp;</div>
                                     <div class="entry value">
                                         <span>1</span>
                                     </div>
                                     <div class="entry value-plus active">&nbsp;</div>
                                 </div>
                             </div>
                         </td>
                         <td class="invert">Sprite, 2.25L (Pack of 2)</td>
                         <td class="invert">$180.00</td>
                         <td class="invert">
                             <div class="rem">
                                 <div class="close3"></div>
                             </div>
                         </td>
                     </tr>--%>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="checkout-left">
            <div class="address_form_agile">
                <h4>Add a new Details</h4>
                <form action="payment.jsp" method="post" class="creditly-card-form agileinfo_form">
                    <div class="creditly-wrapper wthree, w3_agileits_wrapper">
                        <div class="information-wrapper">
                            <div class="first-row">
                                <div class="controls">
                                    <input class="billing-address-name" type="text" name="name" placeholder="Full Name"
                                           required="">
                                </div>
                                <div class="w3_agileits_card_number_grids">
                                    <div class="w3_agileits_card_number_grid_left">
                                        <div class="controls">
                                            <input type="text" placeholder="Mobile Number" name="number" required="">
                                        </div>
                                    </div>
                                    <div class="w3_agileits_card_number_grid_right">
                                        <div class="controls">
                                            <input type="text" placeholder="Landmark" name="landmark" required="">
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                <div class="controls">
                                    <input type="text" placeholder="Town/City" name="city" required="">
                                </div>
                                <div class="controls">
                                    <select class="option-w3ls">
                                        <option>Select Address type</option>
                                        <option>Office</option>
                                        <option>Home</option>
                                        <option>Commercial</option>

                                    </select>
                                </div>
                            </div>
                            <button class="submit check_out">Delivery to this Address</button>
                        </div>
                    </div>
                </form>
                <div class="checkout-right-basket">
                    <a href="payment.jsp">Make a Payment
                        <span class="fa fa-hand-o-right" aria-hidden="true"></span>
                    </a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //checkout page -->
<!-- newsletter -->
<div class="footer-top">
    <div class="container-fluid">
        <div class="col-xs-8 agile-leftmk">
            <h2>Get your Groceries delivered from local stores</h2>
            <p>Free Delivery on your first order!</p>
            <form action="#" method="post">
                <input type="email" placeholder="E-mail" name="email" required="">
                <input type="submit" value="Subscribe">
            </form>
            <div class="newsform-w3l">
                <span class="fa fa-envelope-o" aria-hidden="true"></span>
            </div>
        </div>
        <div class="col-xs-4 w3l-rightmk">
            <img src="images/tab3.png" alt=" ">
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //newsletter -->
<!-- footer -->
<footer>
    <div class="container">
        <!-- footer first section -->
        <p class="footer-main">
            <span>"Grocery Shoppy"</span> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
            sed quia consequuntur
            magni dolores eos qui ratione voluptatem sequi nesciunt.Sed ut perspiciatis unde omnis iste natus error sit
            voluptatem
            accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
            architecto
            beatae vitae dicta sunt explicabo.</p>
        <!-- //footer first section -->
        <!-- footer second section -->
        <div class="w3l-grids-footer">
            <div class="col-xs-4 offer-footer">
                <div class="col-xs-4 icon-fot">
                    <span class="fa fa-map-marker" aria-hidden="true"></span>
                </div>
                <div class="col-xs-8 text-form-footer">
                    <h3>Track Your Order</h3>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-xs-4 offer-footer">
                <div class="col-xs-4 icon-fot">
                    <span class="fa fa-refresh" aria-hidden="true"></span>
                </div>
                <div class="col-xs-8 text-form-footer">
                    <h3>Free & Easy Returns</h3>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-xs-4 offer-footer">
                <div class="col-xs-4 icon-fot">
                    <span class="fa fa-times" aria-hidden="true"></span>
                </div>
                <div class="col-xs-8 text-form-footer">
                    <h3>Online cancellation </h3>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //footer second section -->
        <!-- footer third section -->
        <div class="footer-info w3-agileits-info">
            <!-- footer categories -->
            <div class="col-sm-5 address-right">
                <div class="col-xs-6 footer-grids">
                    <h3>Categories</h3>
                    <ul>
                        <li>
                            <a href="product.jsp">Grocery</a>
                        </li>
                        <li>
                            <a href="product.jsp">Fruits</a>
                        </li>
                        <li>
                            <a href="product.jsp">Soft Drinks</a>
                        </li>
                        <li>
                            <a href="product2.jsp">Dishwashers</a>
                        </li>
                        <li>
                            <a href="product.jsp">Biscuits & Cookies</a>
                        </li>
                        <li>
                            <a href="product2.jsp">Baby Diapers</a>
                        </li>
                    </ul>
                </div>
                <div class="col-xs-6 footer-grids agile-secomk">
                    <ul>
                        <li>
                            <a href="product.jsp">Snacks & Beverages</a>
                        </li>
                        <li>
                            <a href="product.jsp">Bread & Bakery</a>
                        </li>
                        <li>
                            <a href="product.jsp">Sweets</a>
                        </li>
                        <li>
                            <a href="product.jsp">Chocolates & Biscuits</a>
                        </li>
                        <li>
                            <a href="product2.jsp">Personal Care</a>
                        </li>
                        <li>
                            <a href="product.jsp">Dried Fruits & Nuts</a>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- //footer categories -->
            <!-- quick links -->
            <div class="col-sm-5 address-right">
                <div class="col-xs-6 footer-grids">
                    <h3>Quick Links</h3>
                    <ul>
                        <li>
                            <a href="about.jsp">About Us</a>
                        </li>
                        <li>
                            <a href="contact.jsp">Contact Us</a>
                        </li>
                        <li>
                            <a href="help.jsp">Help</a>
                        </li>
                        <li>
                            <a href="faqs.jsp">Faqs</a>
                        </li>
                        <li>
                            <a href="terms.jsp">Terms of use</a>
                        </li>
                        <li>
                            <a href="privacy.jsp">Privacy Policy</a>
                        </li>
                    </ul>
                </div>
                <div class="col-xs-6 footer-grids">
                    <h3>Get in Touch</h3>
                    <ul>
                        <li>
                            <i class="fa fa-map-marker"></i> 123 Sebastian, USA.
                        </li>
                        <li>
                            <i class="fa fa-mobile"></i> 333 222 3333
                        </li>
                        <li>
                            <i class="fa fa-phone"></i> +222 11 4444
                        </li>
                        <li>
                            <i class="fa fa-envelope-o"></i>
                            <a href="mailto:example@mail.com"> mail@example.com</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- //quick links -->
            <!-- social icons -->
            <div class="col-sm-2 footer-grids  w3l-socialmk">
                <h3>Follow Us on</h3>
                <div class="social">
                    <ul>
                        <li>
                            <a class="icon fb" href="#">
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li>
                            <a class="icon tw" href="#">
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a class="icon gp" href="#">
                                <i class="fa fa-google-plus"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="agileits_app-devices">
                    <h5>Download the App</h5>
                    <a href="#">
                        <img src="images/1.png" alt="">
                    </a>
                    <a href="#">
                        <img src="images/2.png" alt="">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- //social icons -->
            <div class="clearfix"></div>
        </div>
        <!-- //footer third section -->
        <!-- footer fourth section (text) -->
        <div class="agile-sometext">
            <div class="sub-some">
                <h5>Online Grocery Shopping</h5>
                <p>Order online. All your favourite products from the low price online supermarket for grocery home
                    delivery in Delhi,
                    Gurgaon, Bengaluru, Mumbai and other cities in India. Lowest prices guaranteed on Patanjali,
                    Aashirvaad, Pampers, Maggi,
                    Saffola, Huggies, Fortune, Nestle, Amul, MamyPoko Pants, Surf Excel, Ariel, Vim, Haldiram's and
                    others.</p>
            </div>
            <div class="sub-some">
                <h5>Shop online with the best deals & offers</h5>
                <p>Now Get Upto 40% Off On Everyday Essential Products Shown On The Offer Page. The range includes
                    Grocery, Personal Care,
                    Baby Care, Pet Supplies, Healthcare and Other Daily Need Products. Discount May Vary From Product To
                    Product.</p>
            </div>
            <!-- brands -->
            <div class="sub-some">
                <h5>Popular Brands</h5>
                <ul>
                    <li>
                        <a href="product.jsp">Aashirvaad</a>
                    </li>
                    <li>
                        <a href="product.jsp">Amul</a>
                    </li>
                    <li>
                        <a href="product.jsp">Bingo</a>
                    </li>
                    <li>
                        <a href="product.jsp">Boost</a>
                    </li>
                    <li>
                        <a href="product.jsp">Durex</a>
                    </li>
                    <li>
                        <a href="product.jsp"> Maggi</a>
                    </li>
                    <li>
                        <a href="product.jsp">Glucon-D</a>
                    </li>
                    <li>
                        <a href="product.jsp">Horlicks</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Head & Shoulders</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Dove</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Dettol</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Dabur</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Colgate</a>
                    </li>
                    <li>
                        <a href="product.jsp">Coca-Cola</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Closeup</a>
                    </li>
                    <li>
                        <a href="product2.jsp"> Cinthol</a>
                    </li>
                    <li>
                        <a href="product.jsp">Cadbury</a>
                    </li>
                    <li>
                        <a href="product.jsp">Bru</a>
                    </li>
                    <li>
                        <a href="product.jsp">Bournvita</a>
                    </li>
                    <li>
                        <a href="product.jsp">Tang</a>
                    </li>
                    <li>
                        <a href="product.jsp">Pears</a>
                    </li>
                    <li>
                        <a href="product.jsp">Oreo</a>
                    </li>
                    <li>
                        <a href="product.jsp"> Taj Mahal</a>
                    </li>
                    <li>
                        <a href="product.jsp">Sprite</a>
                    </li>
                    <li>
                        <a href="product.jsp">Thums Up</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Fair & Lovely</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Lakme</a>
                    </li>
                    <li>
                        <a href="product.jsp">Tata</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Sunfeast</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Sunsilk</a>
                    </li>
                    <li>
                        <a href="product.jsp">Patanjali</a>
                    </li>
                    <li>
                        <a href="product.jsp">MTR</a>
                    </li>
                    <li>
                        <a href="product.jsp">Kissan</a>
                    </li>
                    <li>
                        <a href="product2.jsp"> Lipton</a>
                    </li>
                </ul>
            </div>
            <!-- //brands -->
            <!-- payment -->
            <div class="sub-some child-momu">
                <h5>Payment Method</h5>
                <ul>
                    <li>
                        <img src="images/pay2.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay5.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay1.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay4.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay6.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay3.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay7.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay8.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay9.png" alt="">
                    </li>
                </ul>
            </div>
            <!-- //payment -->
        </div>
        <!-- //footer fourth section (text) -->
    </div>
</footer>
<!-- //footer -->
<!-- copyright -->
<div class="copy-right">
    <div class="container">
        <p>Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/"
                                                                                    target="_blank"
                                                                                    title="模板之家">模板之家</a> - Collect from
            <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
    </div>
</div>
<!-- //copyright -->

<!-- js-files -->
<!-- jquery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jquery -->
<script>
    $(function () {
        $("#signIn").click(function () {
            var name = $("#username1").val();
            var pass = $("#password1").val();
            $.post("/userLogin", {username: name, password: pass}, function (data) {
                if (data == "true") {
                    location.href = "index.jsp";
                }
            });
        });

        function goodType() {
            $.get("/getGoodTypes", function (data) {
                var option = "<option value=''>所有种类</option>"
                for (var key in data) {
                    option += "<option value='" + data[key].gtid + "'>" + data[key].gtname + "</option>"
                }
                $(".goodType").append($(option));
            });
        }

        //初始化下拉框
        goodType();
        //获取被选中的种类
        $(".goodType").on("change", function () {
            var gtid = $(this).find(":selected").val();
            console.log(gtid);
            location.href = "getFreshGoods?gtid=" + gtid;
        });

    });
</script>
<!-- popup modal (for signin & signup)-->
<script src="js/jquery.magnific-popup.js"></script>
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>
<!-- Large modal -->
<!-- <script>
    $('#').modal('show');
</script> -->
<!-- //popup modal (for signin & signup)-->

<!-- cart-js -->
<script src="js/minicart.js"></script>
<script>
    paypalm.minicartk.render(); //use only unique class names other than paypal1.minicart1.Also Replace same class name in css and minicart.min.js

    paypalm.minicartk.cart.on('checkout', function (evt) {
        var items = this.items(),
            len = items.length,
            total = 0,
            i;

        // Count the number of each item in the cart
        for (i = 0; i < len; i++) {
            total += items[i].get('quantity');
        }

        if (total < 3) {
            alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
            evt.preventDefault();
        }
    });
</script>
<!-- //cart-js -->

<!--quantity-->
<script>
    $('.value-plus').on('click', function () {
        var divUpd = $(this).parent().find('.value'),
            newVal = parseInt(divUpd.text(), 10) + 1;
        divUpd.text(newVal);
    });

    $('.value-minus').on('click', function () {
        var divUpd = $(this).parent().find('.value'),
            newVal = parseInt(divUpd.text(), 10) - 1;
        if (newVal >= 1) divUpd.text(newVal);
    });
</script>
<!--quantity-->
<script>
    $(document).ready(function (c) {
        $('.close1').on('click', function (c) {
            $('.rem1').fadeOut('slow', function (c) {
                $('.rem1').remove();
            });
        });
    });
</script>
<script>
    $(document).ready(function (c) {
        $('.close2').on('click', function (c) {
            $('.rem2').fadeOut('slow', function (c) {
                $('.rem2').remove();
            });
        });
    });
</script>
<script>
    $(document).ready(function (c) {
        $('.close3').on('click', function (c) {
            $('.rem3').fadeOut('slow', function (c) {
                $('.rem3').remove();
            });
        });
    });
</script>
<!--//quantity-->

<!-- password-script -->
<script>
    window.onload = function () {
        document.getElementById("password1").onchange = validatePassword;
        document.getElementById("password2").onchange = validatePassword;
    }

    function validatePassword() {
        var pass2 = document.getElementById("password2").value;
        var pass1 = document.getElementById("password1").value;
        if (pass1 != pass2)
            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
        else
            document.getElementById("password2").setCustomValidity('');
        //empty string means no validation error
    }
</script>
<!-- //password-script -->

<!-- smoothscroll -->
<script src="js/SmoothScroll.min.js"></script>
<!-- //smoothscroll -->

<!-- start-smooth-scrolling -->
<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();

            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->

<!-- smooth-scrolling-of-move-up -->
<script>
    $(document).ready(function () {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */
        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->

<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- //js-files -->
<script>
    $.get("/", function (data) {
        for (var key in data) {
            var tr = $("<tr class='rem1'></tr>");

            var td1 = $("<td class='invert'>1</td>");
            var td2 = $("<td class='invert-image'></td>");

            var imgs = data[key].img.split("-");
            var img = $("<a href='single2.jsp'><img src='img/" + imgs[0] + ".jpg' alt='' class='img-responsive'></a>");
            td2.append(img);


            var td3 = $("<td class='invert'></td>");

            var div1 = $("<div class='quantity'></div>");
            var div2 = $("<div class='quantity-select'></div>");
            var div3 = $("<div class='entry value-minus'>&nbsp;</div>");
            var div4 = $("<div class='entry value'></div>");
            var spann = $("<span>1</span>");
            div4.append(spann);
            var div5 = $("<div class='entry value-plus active'>&nbsp;</div>");
            div2.append(div3);
            div2.append(div4);
            div2.append(div5);

            div1.append(div2);
            td3.append(div1);

            var td4 = $("<td class='invert'>Spotzero Spin Mop</td>");
            var td5 = $("<td class='invert'>$888.00</td>");
            var td6 = $("<td class='invert'></td>");
            var div6 = $("<div class='rem'></div>");
            var div7 = $("<div class='close1'></div>");

            div6.append(div7);
            td6.append(div6);

            tr.append(td1);
            tr.append(td2);
            tr.append(td3);
            tr.append(td4);
            tr.append(td5);
            tr.append(td6);
            $(".cart1").append(li);
        }

    });
</script>
</body>

</html>