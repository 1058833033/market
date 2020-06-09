<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- //top-header -->
<!-- header-bot-->
<div class="header-bot">
    <div class="header-bot_inner_wthreeinfo_header_mid">
        <!-- header-bot-->
        <div class="col-md-4 logo_agile">
            <h1>
                <a href="index.jsp">
                    <span>F</span>resh
                    <span>S</span>hoppy
                    <img src="images/logo2.png" alt=" ">
                </a>
            </h1>
        </div>
        <!-- header-bot -->
        <div class="col-md-8 header">
            <!-- header lists -->
            <ul>
                <li>
                    <c:if test="${emp==null}">
                        <a href="#" data-toggle="modal" data-target="#myModal1">
                            <span class="fa fa-truck" aria-hidden="true"></span>添加商品</a>
                    </c:if>
                    <c:if test="${emp!=null}">
                        <a href="addGoods.jsp">
                            <span class="fa fa-truck" aria-hidden="true"></span>添加商品</a>
                    </c:if>
                </li>
                <li class="active">
                    <a class="nav-stylehead" href="adminIndex"><span
                            style="font-family: Bahnschrift; color: red">主页</span>
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <c:choose>
                    <c:when test="${sessionScope.emp == null}">
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span> 登录 </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="empLogout" id="logout">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span> 注销 </a>
                        </li>
                        <li>
                            <a href="gotoEmpInfo">
                                <span class="fa fa-pencil-square-o" aria-hidden="true"></span>员工信息</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
            <!-- //header lists -->
            <!-- search -->
            <div class="agileits_search">
                <form action="getSouSuoGoods" method="get">
                    <input name="goodName" type="search" placeholder="搜索商品" required="">
                    <button type="submit" class="btn btn-default" aria-label="Left Align">
                        <span class="fa fa-search" aria-hidden="true"> </span>
                    </button>
                </form>
            </div>
            <!-- //cart details -->
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- shop locator (popup) -->
<!-- Button trigger modal(shop-locator) -->
<div id="small-dialog1" class="mfp-hide">
    <div class="select-city">
        <h3>Please Select Your Location</h3>
        <select class="list_of_cities">
            <optgroup label="Popular Cities">
                <option selected style="display:none;color:#eee;">Select City</option>
                <option>Birmingham</option>
                <option>Anchorage</option>
                <option>Phoenix</option>
                <option>Little Rock</option>
                <option>Los Angeles</option>
                <option>Denver</option>
                <option>Bridgeport</option>
                <option>Wilmington</option>
                <option>Jacksonville</option>
                <option>Atlanta</option>
                <option>Honolulu</option>
                <option>Boise</option>
                <option>Chicago</option>
                <option>Indianapolis</option>
            </optgroup>
        </select>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //shop locator (popup) -->
<!-- signin Model -->
<!-- Modal1 -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body modal-body-sub_agile">
                <div class="main-mailposi">
                    <span class="fa fa-envelope-o" aria-hidden="true"></span>
                </div>
                <div class="modal_body_left modal_body_left1">
                    <h3 class="agileinfo_sign">Sign In </h3>
                    <form id="loginID" action="empLogin" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" placeholder="账户" name="ename">
                        </div>
                        <div class="styled-input">
                            <input type="password" placeholder="密码" name="password">
                        </div>
                        <input type="submit" class="btn btn-primary btn-lg btn-block" value="登录">
                    </form>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>

<script>
    function creatAjax() {
        var xhr;
        if (window.XMLHttpRequest) {
            xhr = new XMLHttpRequest();
        } else {
            xhr = new ActiveXObject("microsoft.xmlhttp");
        }
        return xhr;
    }

    function checkUserName() {
        var userName = document.getElementById("userNameId").value.trim();
        var oSpan = document.getElementById("msg");
        oSpan.innerHTML = "&nbsp;";
        var xhr = creatAjax();
        xhr.open("get", "checkUser?userName=" + userName, true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var msg = xhr.responseText;
                if (msg == 'no') {
                    oSpan.innerHTML = "该用户已被注册！".fontcolor('red');
                } else {
                    oSpan.innerHTML = "用户名ok！请继续！".fontcolor('blue');
                }
            }
        }
    }
</script>