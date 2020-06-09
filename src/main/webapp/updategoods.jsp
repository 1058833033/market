<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>商品管理</title>
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
<c:if test="${!empty emp}">
    <!-- top-header -->
    <jsp:include page="emptop.jsp"/>
    <!-- //navigation -->
    <jsp:include page="top2.jsp"/>

    <form id="goodsFormID" action="confirmUpdate" method="post">
        <table class="table table-bordered table-striped table-hover">
            <tr>
                <th>商品id</th>
                <th>图片</th>
                <th>商品名</th>
                <th>单价</th>
                <th>折扣</th>
                <th>操作</th>
            </tr>

            <tr>

                <td><input type="text" style="width: 50%" name="fdid" value="${goods.fdid}" readonly/></td>
                <td><img style="width: 30px" src="img/${img}.jpg"/></td>
                <td><input type="text" style="width: 100%" name="goodName" value="${goods.goodName}"/></td>
                <td><input type="text" style="width: 50%" name="price" value="${goods.price}"/></td>
                <td><input type="text" style="width: 50%" name="discount" value="${goods.discount}"/></td>
                <td><input type="button" onclick="updateGoods()" class="btn btn-primary" value="确认修改" class="button"/>
                </td>
            </tr>
        </table>
        <div class="occasion-cart">
            <div style="margin-left: 45%;width: 150px"
                 class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                <input type="reset" value="重置" class="button"/>
                <hr/>
                <input type="button" onclick="empDeleteGoods()" value="下架" class="button"/>
            </div>
        </div>
    </form>
    <jsp:include page="bottom.jsp"/>
</c:if>
<script type="text/javascript">
    function updateGoods() {
        var flag = confirm("是否确认修改该商品信息？");
        if (flag) {
            document.getElementById("goodsFormID").submit();
        }
    }

    function empDeleteGoods() {
        var flag = confirm("是否确认下架该商品？");
        if (flag) {
            location.href = 'empDeleteGoods?fdid=${goods.fdid}';
        }
    }
</script>
</body>

</html>