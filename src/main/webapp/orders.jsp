<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>订单</title>
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

<form id="oform" action="deleteOrders" method="post">
    <table class="table table-bordered table-striped table-hover">
        <tr>
            <th>&nbsp;<input type="checkbox" id="all" onclick="checkAllOrders(this.checked)"/></th>
            <th>订单id</th>
            <th>创建时间</th>
            <th>订单总价</th>
            <th>送货地址</th>
            <th>订单支付</th>
            <th>订单详情</th>
        </tr>
        <c:forEach var="order" items="${orders}">
            <tr>
                <td>&nbsp;<input type="checkbox" name="orders" value="${order.oid}"
                                 onclick="checkOrders(this.checked)"/></td>
                <td>&nbsp;${order.oid}</td>
                <td>&nbsp;${order.orderTime}</td>
                <td>&nbsp;${order.totalPrice}</td>
                <td>&nbsp;${addr.province}${addr.city}${addr.township}${addr.detail}</td>
                <td>&nbsp;
                    <div style="margin-left:0;width: 80px"
                         class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                        <input type="button" onclick="location.href='payment'" value="pay" class="button"/>
                    </div>
                </td>
                <td>&nbsp;
                    <div style="margin-left:0;margin-top:0;width: 80px"
                         class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                        <input type="button" onclick="location.href='ordersDetail?oid=${order.oid}'" value="detail"
                               class="button"/>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
    <div class="occasion-cart">
        <div style="margin-left: 45%;width: 150px"
             class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
            <input type="button" onclick="deleteOrder()" value="delete" class="button"/>
        </div>
    </div>
</form>


<!-- //newsletter -->
<!-- footer -->
<jsp:include page="bottom.jsp"/>

<script type="text/javascript">
    function checkAllOrders(flag) {
        var oOrders = document.getElementsByName("orders");
        for (var i = 0; i < oOrders.length; i++) {
            oOrders[i].checked = flag;
        }
    }

    function checkGoods(flag) {
        var oAll = document.getElementById("all");
        var oOrders = document.getElementsByName("goods");
        for (var i = 0; i < oOrders.length; i++) {
            if (oOrders[i].checked == true) {
                continue;
            } else {
                flag = false;
                break;
            }
        }
        oAll.checked = flag;
    }

    function deleteOrder() {
        var flag = confirm("是否确认删除所有选中的订单？");
        if (flag) {
            document.getElementById("oform").submit();
        }
    }
</script>
</body>

</html>