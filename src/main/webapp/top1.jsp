<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <span>F</span>resh
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
                    <a href="location">
                        <span class="fa fa-map-marker" aria-hidden="true"></span>商店定位</a>
                </li>
                <li>
                    <c:if test="${users==null}">
                        <a href="#" data-toggle="modal" data-target="#myModal1">
                            <span class="fa fa-truck" aria-hidden="true"></span>订单跟踪</a>
                    </c:if>
                    <c:if test="${users!=null}">
                        <a href="gotoOrders">
                            <span class="fa fa-truck" aria-hidden="true"></span>订单跟踪</a>
                    </c:if>

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
                            <a href="userLogout" id="logout">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span> 注销 </a>
                        </li>
                        <li>
                            <a href="getUserInfo">
                                <span class="fa fa-pencil-square-o" aria-hidden="true"></span>个人信息</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
            <!-- //header lists -->
            <!-- search -->
            <div class="agileits_search">
                <form action="getBigSouSuoGoods" method="get">
                    <input name="goodName" type="search" placeholder="今天要来点什么？" required="">
                    <button type="submit" class="btn btn-default" aria-label="Left Align">
                        <span class="fa fa-search" aria-hidden="true"> </span>
                    </button>
                </form>
            </div>
            <!-- //search -->
            <!-- cart details -->
            <div class="top_nav_right">
                <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                    <form action="cart" method="post" class="last">
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
                        <sapn id="loginMes" style="margin-left: 30%"></sapn>
                    </p>
                    <form id="loginID" action="userLogin" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" placeholder="用户名" name="userName" id="username1" required="">
                        </div>
                        <div class="styled-input">
                            <input type="password" placeholder="密码" name="password" id="password1" required="">
                        </div>
                        <input type="button" class="btn btn-primary btn-lg btn-block" value="登录" onclick="isLogin()">
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
                    <h3 class="agileinfo_sign">注册</h3>
                    <p>
                        快来加入杂货店吧！请设置您的帐户。
                    </p>
                    <span id="msg" style="margin-left: 40%">请填写信息</span>
                    <form action="register" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" placeholder="Name" id="userNameId" name="userName"
                                   onblur="checkUserName()"/>
                        </div>
                        <div class="styled-input">
                            <input type="email" placeholder="E-mail" name="email"/>
                        </div>
                        <div class="styled-input">
                            <input type="password" placeholder="Password" name="password"/>
                        </div>
                        <div class="styled-input">
                            <input type="text" placeholder="Tel" name="tel"/>
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
                    <option value="13">所有类别</option>
                    <option value="1">水果</option>
                    <option value="2">蔬菜</option>
                    <option value="3">乳制品</option>
                    <option value="4">酒水</option>
                    <option value="5">速冻食品</option>
                    <option value="6">糖果</option>
                    <option value="7">零食</option>
                    <option value="8">海鲜</option>
                    <option value="9">肉类</option>
                    <option value="10">米面</option>
                    <option value="11">粮油</option>
                    <option value="12">饮料</option>
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
                            <li class="active">
                                <a class="nav-stylehead" href="index.jsp">主页
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="nav-stylehead" href="about.jsp">关于我们</a>
                            </li>
                            <%--<li class="dropdown">
                                <a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Kitchen
                                    <span class="caret"></span>
                                </a>
                                &lt;%&ndash;<ul class="dropdown-menu multi-column columns-3">
                                    <div class="agile_inner_drop_nav_info">
                                        <div class="col-sm-4 multi-gd-img">
                                            <ul class="multi-column-dropdown">
                                                <li>
                                                    <a href="product.jsp">Bakery</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Baking Supplies</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Coffee, Tea & Beverages</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Dried Fruits, Nuts</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Sweets, Chocolate</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Spices & Masalas</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Jams, Honey & Spreads</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4 multi-gd-img">
                                            <ul class="multi-column-dropdown">
                                                <li>
                                                    <a href="product.jsp">Pickles</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Pasta & Noodles</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Rice, Flour & Pulses</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Sauces & Cooking Pastes</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Snack Foods</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Oils, Vinegars</a>
                                                </li>
                                                <li>
                                                    <a href="product.jsp">Meat, Poultry & Seafood</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4 multi-gd-img">
                                            <img src="images/nav.png" alt="">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>&ndash;%&gt;
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Household
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="agile_inner_drop_nav_info">
                                        <div class="col-sm-6 multi-gd-img">
                                            <ul class="multi-column-dropdown">
                                                <li>
                                                    <a href="product2.jsp">Kitchen & Dining</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp">Detergents</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp">Utensil Cleaners</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp">Floor & Other Cleaners</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp">Disposables, Garbage Bag</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp">Repellents & Fresheners</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp"> Dishwash</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 multi-gd-img">
                                            <ul class="multi-column-dropdown">
                                                <li>
                                                    <a href="product2.jsp">Pet Care</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp">Cleaning Accessories</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp">Pooja Needs</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp">Crackers</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp">Festive Decoratives</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp">Plasticware</a>
                                                </li>
                                                <li>
                                                    <a href="product2.jsp">Home Care</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>--%>
                            <li class="">
                                <a class="nav-stylehead" href="faqs.jsp">常见问题解答</a>
                            </li>
                            <%--<li class="dropdown">
                                <a class="nav-stylehead dropdown-toggle" href="#" data-toggle="dropdown">Pages
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu agile_short_dropdown">
                                    <li>
                                        <a href="icons.jsp">Web Icons</a>
                                    </li>
                                    <li>
                                        <a href="typography.jsp">Typography</a>
                                    </li>
                                </ul>
                            </li>--%>
                            <%--<li class="">
                                <a class="nav-stylehead" href="contact.jsp">联系我们</a>
                            </li>--%>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<script>
    function creatAjax() {
        var xhr;
        if (window.XMLHttpRequest) {
            xhr = new XMLHttpRequest();
        } else {
            xhr = new ActiveXObject("microsoft.xmlhttp");
        }
        return xhr;
    }

    function checkUserName() {
        var userName = document.getElementById("userNameId").value.trim();
        var oSpan = document.getElementById("msg");
        oSpan.innerHTML = "&nbsp;";
        var xhr = creatAjax();
        xhr.open("get", "checkUser?userName=" + userName, true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var msg = xhr.responseText;
                if (msg == 'no') {
                    oSpan.innerHTML = "该用户已被注册！".fontcolor('red');
                } else {
                    oSpan.innerHTML = "用户名ok！请继续！".fontcolor('blue');
                }
            }
        }
    }

    function isLogin() {
        var xhr = creatAjax();
        var name = document.getElementById("username1").value.trim();
        var pass = document.getElementById("password1").value.trim();
        var oMsg = document.getElementById("loginMes");
        xhr.open("get", "checkLogin?userName=" + name + "&password=" + pass + "&num=" + Math.random(), true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var msg = xhr.responseText;
                if (msg == 'no') {
                    oMsg.innerHTML = "用户名或密码错误！请重新输入！".fontcolor('red');
                } else {
                    document.getElementById("loginID").submit();
                }
            }
        }
    }
</script>