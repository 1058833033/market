<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>商品上架</title>
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
<c:if test="${emp != null}">
    <!-- top-header -->
    <jsp:include page="emptop.jsp"/>
    <!-- //navigation -->
    <jsp:include page="top2.jsp"/>

    <form id="addGoodsFormID" enctype="multipart/form-data" action="addGoods" method="post">
        <table class="table table-bordered table-striped table-hover">
            <tr>
                <th>商品名</th>
                <td><input type="text" name="goodName"/></td>

            </tr>
            <tr>
                <th>图片1</th>
                <td><input type="file" name="file" value="选择图片1"/></td>
            </tr>
            <tr>
                <th>图片2</th>
                <td><input type="file" name="file" value="选择图片2"/></td>
            </tr>
            <tr>
                <th>图片3</th>
                <td><input type="file" name="file" value="选择图片3"/></td>
            </tr>
            <tr>
                <th>单价</th>
                <td><input type="text" name="price"/></td>
            </tr>
            <tr>
                <th>折扣</th>
                <td><input type="text" name="discount"/></td>
            </tr>
            <tr>
                <th>种类</th>
                <td>
                    <select name="gtid">
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
                        <option value="14">数码</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>介绍</th>
                <td>
                    <textarea name="summery" COLS="100%"></textarea>
                </td>
            </tr>
        </table>
        <div class="occasion-cart">
            <div style="margin-left: 45%;width: 150px"
                 class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                <input type="button" onclick="addGoods()" value="确认上架" class="button"/>
                <hr/>
                <input type="button" onclick="history.back()" value="返回" class="button"/>
            </div>
        </div>
    </form>
    <jsp:include page="bottom.jsp"/>
</c:if>
<script type="text/javascript">
    function addGoods() {
        var flag = confirm("是否确认上架该商品？");
        if (flag) {
            document.getElementById("addGoodsFormID").submit();
        }
    }
</script>
</body>

</html>