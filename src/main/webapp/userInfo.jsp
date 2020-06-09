<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>个人信息</title>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
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
<form action="updateUser" method="post" onsubmit="return checkConfirm()">
    <table class="table table-bordered table-striped table-hover">
        <tr>
            <th>用户id</th>
            <td><input type="text" name="userId" value="${user.userId}"/></td>
            <td>不可修改</td>
        </tr>
        <tr>
            <th>等级</th>
            <td><input type="text" name="level" value="${user.level}"/></td>
            <td>不可修改</td>
        </tr>
        <tr>
            <th>用户名</th>
            <td><input type="text" name="userName" value="${user.userName}"/></td>
            <td>不可修改</td>
        </tr>
        <tr>
            <th>密码</th>
            <td><input type="text" name="password" value="${user.password}"/></td>
            <td>可修改</td>
        </tr>
        <tr>
            <th>邮箱</th>
            <td><input type="text" name="email" value="${user.email}"/></td>
            <td>可修改</td>
        </tr>
        <tr>
            <th>电话</th>
            <td><input type="text" name="tel" value="${user.tel}"/></td>
            <td>可修改</td>
        </tr>
        <tr>
            <th>省份</th>
            <td><input type="text" name="province" value="${user.province}"/></td>
            <td>可修改</td>
        </tr>
        <tr>
            <th>城市</th>
            <td><input type="text" name="city" value="${user.city}"/></td>
            <td>可修改</td>
        </tr>
        <tr>
            <th>区县</th>
            <td><input type="text" name="township" value="${user.township}"/></td>
            <td>可修改</td>
        </tr>
        <tr>
            <th>详细地址</th>
            <td><input type="text" name="detail" value="${user.detail}"/></td>
            <td>可修改</td>
        </tr>
    </table>
    <div class="occasion-cart">
        <div style="margin-left: 40%;width: 150px"
             class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
            <input type="submit" value="confirm" class="button"/>
            <hr/>
            <input type="button" value="back" class="button" onclick="history.back()"/>
        </div>
    </div>
</form>

<!-- //newsletter -->
<!-- footer -->
<jsp:include page="bottom.jsp"/>
<script>
    function checkConfirm() {
        var flag = confirm("是否确认修改以上信息？");
        return flag;
    }
</script>

</body>

</html>