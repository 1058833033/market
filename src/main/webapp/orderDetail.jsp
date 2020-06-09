<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>订单详情</title>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script>
        /*		addEventListener("load", function () {
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
    <!-- fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
          rel="stylesheet">
    <style type="text/css">
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
    </style>
</head>

<body>
<!-- top-header -->
<jsp:include page="top1.jsp"/>
<!-- //navigation -->
<jsp:include page="top2.jsp"/>

<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>图片</th>
        <th>商品名字</th>
        <th>商品数量</th>
        <th>商品单价</th>
        <th>折扣</th>
        <th>小计</th>
    </tr>
    <c:forEach var="goods" items="${freshGoods}">
        <tr>
            <td><img style="width: 30px" src="img/${goods.img}.jpg" class="img-responsive"/></td>
            <td>&nbsp;${goods.goodName}</td>
            <td>&nbsp;${goods.count}</td>
            <td>&nbsp;${goods.price}</td>
            <td>&nbsp;${goods.discount}%</td>
            <td>&nbsp;${goods.price*goods.count*goods.discount/100}</td>
        </tr>
    </c:forEach>
</table>
<div class="occasion-cart">
    <div style="margin-left: 45%;width: 150px"
         class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
        <input type="button" value="back" class="button" onclick="history.back()"/>
    </div>
</div>


<!-- //newsletter -->
<!-- footer -->
<jsp:include page="bottom.jsp"/>
</body>

</html>