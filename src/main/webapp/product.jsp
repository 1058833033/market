<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>主页-${goodType.gtname}</title>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <style>
        .goodsImg {
            width: 120px;
            height: 160px;
        }

        .goodsHref {
            max-width: 180px;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            display: block;

        }

        a {
            white-space: nowrap;
            overflow: hidden;
            display: block;
        }

        h3 {
            white-space: nowrap;
            overflow: hidden;
            display: block;
        }

        #bianJu {
            margin-top: 20px;
        }

    </style>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
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
    <!-- fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
          rel="stylesheet">
</head>

<body>
<% int i = 0;%>
<jsp:include page="top1.jsp"/>
<jsp:include page="top2.jsp"/>
<!-- //banner-2 -->
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="index.jsp">主页</a>
                    <%--<i>|</i>--%>
                </li>
                <c:choose>
                    <c:when test="${goodType!=null}">
                        <li><a href="#">丨${goodType.gtname}</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="#">丨搜索结果</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>

    </div>
</div>
<!-- //page -->
<!-- top Products -->
<div class="ads-grid">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">${goodType.gtname}
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>
        <!-- //tittle heading -->
        <!-- product left -->
        <div class="side-bar col-md-3">
            <div class="search-hotel">
                <h3 class="agileits-sear-head">搜索</h3>
                <form action="getBigSouSuoGoods" method="get">
                    <input type="search" placeholder="物品名字" name="goodName" required="">
                    <input type="hidden" name="gtid" value="${goodType.gtid}">
                    <input type="submit" value=" ">
                </form>
            </div>
            <!-- price range -->
            <%--<div class="range">
                <h3 class="agileits-sear-head">价格范围</h3>
                <ul class="dropdown-menu6">
                    <li>
                        <div id="slider-range"></div>
                        <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;"  class="souSuo"/>
                    </li>
                </ul>
            </div>--%>
            <!-- //price range -->
            <!-- food preference -->
            <div class="left-side">
                <h3 class="agileits-sear-head">食物偏好</h3>
                <ul>
                    <li>
                        <input type="radio" name="pre" value="0" onclick="souSuo(this.value)" class="souSuo">
                        <span class="span">其他</span>
                    </li>
                    <li>
                        <input type="radio" name="pre" value="2" onclick="souSuo(this.value)" class="souSuo">
                        <span class="span">素食主义</span>
                    </li>
                    <li>
                        <input type="radio" name="pre" value="1" onclick="souSuo(this.value)" class="souSuo">
                        <span class="span">荤食主义</span>
                    </li>
                </ul>
            </div>
            <!-- //food preference -->
            <!-- discounts -->
            <div class="left-side">
                <h3 class="agileits-sear-head">折扣</h3>
                <ul>
                    <li>
                        <input type="radio" name="discount" value="5" onclick="discountSouSuo(this.value)"
                               class="souSuo">
                        <span class="span">5% or More</span>
                    </li>
                    <li>
                        <input type="radio" name="discount" value="10" onclick="discountSouSuo(this.value)"
                               class="souSuo">
                        <span class="span">10% or More</span>
                    </li>
                    <li>
                        <input type="radio" name="discount" value="20" onclick="discountSouSuo(this.value)"
                               class="souSuo">
                        <span class="span">20% or More</span>
                    </li>
                    <li>
                        <input type="radio" name="discount" value="30" onclick="discountSouSuo(this.value)"
                               class="souSuo">
                        <span class="span">30% or More</span>
                    </li>
                    <li>
                        <input type="radio" name="discount" value="50" onclick="discountSouSuo(this.value)"
                               class="souSuo">
                        <span class="span">50% or More</span>
                    </li>
                    <li>
                        <input type="radio" name="discount" value="60" onclick="discountSouSuo(this.value)"
                               class="souSuo">
                        <span class="span">60% or More</span>
                    </li>
                </ul>
            </div>
            <!-- //discounts -->
            <!-- reviews -->
            <%--<div class="customer-rev left-side">
                <h3 class="agileits-sear-head">顾客评价</h3>
                <ul>
                    <li>
                        <a href="#">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <span>5.0</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <span>4.0</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <span>3.5</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <span>3.0</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <span>2.5</span>
                        </a>
                    </li>
                </ul>
            </div>--%>
            <!-- //reviews -->
            <!-- cuisine -->
            <%--<div class="left-side">
                <h3 class="agileits-sear-head">Cuisine</h3>
                <ul>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">South American</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">French</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">Greek</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">Chinese</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">Japanese</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">Italian</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">Mexican</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">Thai</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">Indian</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span"> Spanish </span>
                    </li>
                </ul>
            </div>--%>
            <!-- //cuisine -->
            <!-- deals -->
            <div class="deal-leftmk left-side" id="specialGoods">
                <%--<h3 class="agileits-sear-head">Special Deals</h3>--%>

            </div>
            <!-- //deals -->
        </div>
        <!-- //product left -->
        <!-- product right -->
        <div class="agileinfo-ads-display col-md-9 w3l-rightpro">
            <div class="wrapper">
                <!-- first section -->

                <div class="product-sec1" id="products">
                    <c:forEach items="${freshGoods}" var="goods">

                        <div class="col-xs-4 product-men" id="bianJu">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">

                                    <img src="img/${imgs.get(goods.fdid)}.jpg" alt="" class="goodsImg">

                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="getGoodDetailsByFdid?fdid=${goods.fdid}"
                                               class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product ">
                                    <h4>
                                        <a href="getGoodDetailsByFdid?fdid=${goods.fdid}" class="goodsHref">&nbsp;&nbsp;&nbsp;&nbsp;${goods.goodName}</a>
                                    </h4>
                                    <div class="info-product-price">
                                        <span class="item_price">${goods.price*goods.discount/100}</span>
                                        <del>$${goods.price}</del>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                        <form action="cart" method="post">
                                            <fieldset>
                                                    <%--<input type="hidden" name="cmd" value="_cart" />
                                                    <input type="hidden" name="add" value="1" />
                                                    <input type="hidden" name="business" value=" " />
                                                    <input type="hidden" name="item_name" value="Zeeba Basmati Rice - 5 KG" />
                                                    <input type="hidden" name="amount" value="950.00" />
                                                    <input type="hidden" name="discount_amount" value="1.00" />
                                                    <input type="hidden" name="currency_code" value="USD" />
                                                    <input type="hidden" name="return" value=" " />--%>
                                                <input type="hidden" name="fdid" value="${goods.fdid}"/>
                                                <input type="submit" name="submit" value="加入购物车" class="button"/>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <% i = i + 1;%>
                    </c:forEach>
                    <a class="left carousel-control" href="/getFreshGoods?gtid=${goodType.gtid}&cp=${currentPage-1}"
                       role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="/getFreshGoods?gtid=${goodType.gtid}&cp=${currentPage+1}"
                       role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                    <div class="clearfix"></div>
                </div>
                <!-- //first section -->
                <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                    <ul style="margin-left: 28%" class="nav navbar-nav menu__list">
                        <c:choose>
                            <c:when test="${goodType!=null}">
                                <li>
                                    <a class="nav-stylehead" href="/getFreshGoods?gtid=${goodType.gtid}&cp=1">首页</a>
                                </li>
                                <li>
                                    <a class="nav-stylehead"
                                       href="/getFreshGoods?gtid=${goodType.gtid}&cp=${currentPage-1}">上一页</a>
                                </li>
                                <li>
                                    <a class="nav-stylehead"
                                       href="/getFreshGoods?gtid=${goodType.gtid}&cp=${currentPage+1}">下一页
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="nav-stylehead"
                                       href="/getFreshGoods?gtid=${goodType.gtid}&cp=${totalPage}">末页
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li>
                                    <a class="nav-stylehead" href="/getBigSouSuoGoods?goodName=${goodName}">首页</a>
                                </li>
                                <li>
                                    <a class="nav-stylehead"
                                       href="/getBigSouSuoGoods?goodName=${goodName}&cp=${currentPage-1}">上一页</a>
                                </li>
                                <li>
                                    <a class="nav-stylehead"
                                       href="/getBigSouSuoGoods?goodName=${goodName}&cp=${currentPage+1}">下一页
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="nav-stylehead"
                                       href="/getBigSouSuoGoods?goodName=${goodName}&cp=${totalPage}">末页
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>

            </div>
        </div>
        <!-- //product right -->
    </div>
</div>
<!-- //top products -->
<!-- special offers -->
<div class="featured-section" id="projects">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">特别优惠
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>
        <!-- //tittle heading -->
        <div class="content-bottom-in">
            <ul id="flexiselDemo1" class="specialOffers">
                <%--<li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single2.jsp">
                                <img src="images/s9.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single2.jsp">Lakme Eyeconic Kajal, 0.35 g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$153.00</h6>
                                <p>Save $40.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart" />
                                        <input type="hidden" name="add" value="1" />
                                        <input type="hidden" name="business" value=" " />
                                        <input type="hidden" name="item_name" value="Lakme Eyeconic Kajal, 0.35 g" />
                                        <input type="hidden" name="amount" value="153.00" />
                                        <input type="hidden" name="discount_amount" value="1.00" />
                                        <input type="hidden" name="currency_code" value="USD" />
                                        <input type="hidden" name="return" value=" " />
                                        <input type="hidden" name="cancel_return" value=" " />
                                        <input type="submit" name="submit" value="Add to cart" class="button" />
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>--%>
            </ul>
        </div>
    </div>
</div>
<!-- //special offers -->
<!-- newsletter -->
<jsp:include page="bottom.jsp"/>
<script>
    function souSuo(value) {
        location.href = "souSuo?preference=" + value;
    }

    function discountSouSuo(value) {
        location.href = "queryDiscount?discount=" + value;
    }
</script>
</body>

</html>