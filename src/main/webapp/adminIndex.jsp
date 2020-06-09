<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>首页</title>
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
<jsp:include page="emptop.jsp"/>
<jsp:include page="top2.jsp"/>

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

        <!-- //product left -->
        <!-- product right -->
        <div style="position: relative;margin-left: 13%" class="agileinfo-ads-display col-md-9 w3l-rightpro">
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
                                            <a href="adminCheckGoods?fdid=${goods.fdid}" class="link-product-add-cart">商品详情</a>
                                        </div>
                                    </div>
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
                                        <form action="gotoUpdateGoods" method="get">
                                            <fieldset>
                                                <c:choose>
                                                    <c:when test="${emp != null}">
                                                        <input type="hidden" name="fdid" value="${goods.fdid}"/>
                                                        <input type="submit" name="submit" value="修改商品信息"
                                                               class="button"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input data-toggle="modal" data-target="#myModal1" type="button"
                                                               name="submit" value="修改商品信息" class="button"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <% i = i + 1;%>
                    </c:forEach>
                    <a class="left carousel-control" href="getSouSuoGoods?goodName=${goodName}&cp=${currentPage-1}"
                       role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="getSouSuoGoods?goodName=${goodName}&cp=${currentPage+1}"
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
                                    <a class="nav-stylehead" href="getSouSuoGoods?goodName=${goodName}">首页</a>
                                </li>
                                <li>
                                    <a class="nav-stylehead"
                                       href="getSouSuoGoods?goodName=${goodName}&cp=${currentPage-1}">上一页</a>
                                </li>
                                <li>
                                    <a class="nav-stylehead"
                                       href="getSouSuoGoods?goodName=${goodName}&cp=${currentPage+1}">下一页
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="nav-stylehead" href="getSouSuoGoods?goodName=${goodName}&cp=${totalPage}">末页
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


<jsp:include page="bottom.jsp"/>
</body>