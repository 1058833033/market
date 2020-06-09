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
<jsp:include page="emptop.jsp"/>
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
                </ul>
                <p>
                    <i class="fa fa-refresh" aria-hidden="true"></i>所有食品都是
                    <label>不可退货的。</label>
                </p>
            </div>
            <div class="occasion-cart">
                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                    <form action="#" method="post">
                        <fieldset>
                            <input type="button" name="submit" value="返回" onclick="location.href='adminIndex'"
                                   class="button"/>
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
            </ul>
        </div>
    </div>
</div>
<!-- //special offers -->
<jsp:include page="bottom.jsp"/>
</body>

</html>