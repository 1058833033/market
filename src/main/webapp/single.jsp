<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>详情-${freshGoods.goodName}</title>
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
                    <%-- <i>|</i>--%>
                </li>
                <li><a>| 商品详情</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- Single Page -->
<div class="banner-bootom-w3-agileits">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">商品详情
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>
        <!-- //tittle heading -->
        <div class="col-md-5 single-right-left ">
            <div class="grid images_3_of_2">
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="img/${imgs[0]}.jpg">
                            <div class="thumb-image">
                                <img src="img/${imgs[0]}.jpg" data-imagezoom="true" class="img-responsive" alt=""></div>
                        </li>
                        <li data-thumb="img/${imgs[1]}.jpg">
                            <div class="thumb-image">
                                <img src="img/${imgs[1]}.jpg" data-imagezoom="true" class="img-responsive" alt=""></div>
                        </li>
                        <li data-thumb="img/${imgs[2]}.jpg">
                            <div class="thumb-image">
                                <img src="img/${imgs[2]}.jpg" data-imagezoom="true" class="img-responsive" alt=""></div>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="col-md-7 single-right-left simpleCart_shelfItem">
            <h3>${freshGoods.goodName}</h3>
            <div class="rating1">
					<span class="starRating">
						<input id="rating5" type="radio" name="rating" value="5">
						<label for="rating5">5</label>
						<input id="rating4" type="radio" name="rating" value="4">
						<label for="rating4">4</label>
						<input id="rating3" type="radio" name="rating" value="3" checked="">
						<label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label>
						<input id="rating1" type="radio" name="rating" value="1">
						<label for="rating1">1</label>
					</span>
            </div>
            <p>
                <span class="item_price">${freshGoods.price*freshGoods.discount/100}</span>
                <del>${freshGoods.price}</del>
                <label>免费邮寄</label>
            </p>
            <div class="single-infoagile">
                <ul>
                    <li>
                        货到付款符合条件。
                    </li>
                    <li>
                        送货速度
                    </li>
                    <li>
                        由Supple Tek出售和完成（3.6的5 | 8个评分）。
                    </li>
                    <li>
                        1件优惠
                        <span class="item_price">${freshGoods.price*freshGoods.discount/100}</span>起
                    </li>
                </ul>
            </div>
            <div class="product-single-w3l">
                <p>
                    <i class="fa fa-hand-o-right" aria-hidden="true"></i>这是
                    <c:if test="${freshGoods.preference==1}">肉食</c:if>
                    <c:if test="${freshGoods.preference==2}">素食</c:if>
                    <c:if test="${freshGoods.preference==0}">其他</c:if>
                    <label></label>产品</p>
                <ul>
                    <li>
                        ${freshGoods.summery}
                    </li>
                    <%--<li>
                        After cooking, Zeeba Basmati rice grains attain an extra ordinary length of upto 2.4 cm/~1 inch.
                    </li>
                    <li>
                        Zeeba Basmati rice adheres to the highest food afety standards as your health is paramount to
                        us.
                    </li>
                    <li>
                        Contains only the best and purest grade of basmati rice grain of Export quality.
                    </li>--%>
                </ul>
                <p>
                    <i class="fa fa-refresh" aria-hidden="true"></i>所有食品都是
                    <label>不可退货的。</label>
                </p>
            </div>
            <div class="occasion-cart">
                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                    <form action="cart" method="post">
                        <fieldset>
                            <input type="hidden" name="fdid" value="${freshGoods.fdid}"/>
                            <input type="submit" name="submit" value="Add to cart" class="button"/>
                        </fieldset>
                    </form>
                </div>

            </div>

        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //Single Page -->
<!-- special offers -->
<div class="featured-section" id="projects">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">添加更多
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
                            <a href="single.jsp">
                                <img src="images/s1.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single.jsp">Aashirvaad, 5g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$220.00</h6>
                                <p>Save $40.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Aashirvaad, 5g"/>
                                        <input type="hidden" name="amount" value="220.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>--%>
                <%--<li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single.jsp">
                                <img src="images/s4.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single.jsp">Kissan Tomato Ketchup, 950g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$99.00</h6>
                                <p>Save $20.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Kissan Tomato Ketchup, 950g"/>
                                        <input type="hidden" name="amount" value="99.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single.jsp">
                                <img src="images/s2.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single.jsp">Madhur Pure Sugar, 1g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$69.00</h6>
                                <p>Save $20.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Madhur Pure Sugar, 1g"/>
                                        <input type="hidden" name="amount" value="69.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single2.jsp">
                                <img src="images/s3.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single2.jsp">Surf Excel Liquid, 1.02L</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$187.00</h6>
                                <p>Save $30.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Surf Excel Liquid, 1.02L"/>
                                        <input type="hidden" name="amount" value="187.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single.jsp">
                                <img src="images/s8.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single.jsp">Cadbury Choclairs, 655.5g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$160.00</h6>
                                <p>Save $60.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Cadbury Choclairs, 655.5g"/>
                                        <input type="hidden" name="amount" value="160.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single2.jsp">
                                <img src="images/s6.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single2.jsp">Fair & Lovely, 80 g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$121.60</h6>
                                <p>Save $30.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Fair & Lovely, 80 g"/>
                                        <input type="hidden" name="amount" value="121.60"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single.jsp">
                                <img src="images/s5.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single.jsp">Sprite, 2.25L (Pack of 2)</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$180.00</h6>
                                <p>Save $30.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Sprite, 2.25L (Pack of 2)"/>
                                        <input type="hidden" name="amount" value="180.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
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
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Lakme Eyeconic Kajal, 0.35 g"/>
                                        <input type="hidden" name="amount" value="153.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
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
<jsp:include page="bottom.jsp"/>
</body>

</html>