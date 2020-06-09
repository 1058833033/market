<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>购物车</title>
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

<form action="addOrders" method="post">
    <table class="table table-bordered table-striped table-hover">
        <tr>
            <th>&nbsp;<input type="checkbox" id="all" onclick="checkAllGoods(this.checked)"/></th>
            <th>商品id</th>
            <th>图片</th>
            <th>商品名字</th>
            <th>商品数量</th>
            <th>商品单价</th>
            <th>折扣</th>
            <th>小计</th>
        </tr>
        <c:forEach var="ct" items="${cart}">
            <tr>
                <td>&nbsp;<input type="checkbox" name="goods" value="${ct.key}" onclick="checkGoods(this.checked)"/>
                </td>
                <td>&nbsp;${ct.key}</td>
                <td><img style="width: 30px" src="img/${imgs.get(ct.key)}.jpg" class="img-responsive"/></td>
                <td>&nbsp;${ct.value.freshGoods.goodName}</td>
                <td>&nbsp;${ct.value.count}</td>
                <td>&nbsp;${ct.value.freshGoods.price}</td>
                <td>&nbsp;${ct.value.freshGoods.discount}%</td>
                <td>&nbsp;${ct.value.freshGoods.price*ct.value.freshGoods.discount*ct.value.count/100}</td>
            </tr>
        </c:forEach>
    </table>
    <div class="occasion-cart">
        <div style="margin-left: 45%;width: 150px"
             class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
            <c:if test="${users != null}">
                <input type="submit" name="submit" value="add orders" class="button"/>
            </c:if>
            <c:if test="${users == null}">
                <a href="#" data-toggle="modal" data-target="#myModal1"><input type="button" value="add orders"
                                                                               class="button"/></a>
            </c:if>
        </div>
    </div>
</form>


<!-- //newsletter -->
<!-- footer -->
<jsp:include page="bottom.jsp"/>

<script type="text/javascript">
    function checkAllGoods(flag) {
        var oGoods = document.getElementsByName("goods");
        for (var i = 0; i < oGoods.length; i++) {
            oGoods[i].checked = flag;
        }
    }

    function checkGoods(flag) {
        var oAll = document.getElementById("all");
        var oGoods = document.getElementsByName("goods");
        for (var i = 0; i < oGoods.length; i++) {
            if (oGoods[i].checked == true) {
                continue;
            } else {
                flag = false;
                break;
            }
        }
        oAll.checked = flag;
    }
</script>
</body>

</html>