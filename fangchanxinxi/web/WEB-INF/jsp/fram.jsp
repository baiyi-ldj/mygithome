<%--
  Created by IntelliJ IDEA.
  User: 流年
  Date: 2019/7/29
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/menu.css" />
</head>
<body>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/login.js"></script>
<div id="menu_01">
    <br/>
<div id="wh">欢迎：${users.name},<a href="#" id="d">退出登录</a></div>
    <input type="hidden" class="path" name="path" value="${pageContext.request.contextPath }"/>
<div>
    <ul>
        <li><a href="${pageContext.request.contextPath}/users/fenye">房产信息查询</a></li>
    </ul>
    <div id="menu_02">
        <div id="biaoti_01"><h1>欢迎使用房产信息查询系统</h1></div>

   <%-- <div id="add">
        <form class="loginForm" action="${pageContext.request.contextPath }/users/login" name="actionForm" id="actionForm"
              method="post">
        <h3>添加销售</h3>
        商品名称：<select >
            <c:forEach items="${productlist}" var="i">
                <option value="0">-请选择商品-</option>
                <option value="${i.id}">${i.productName}</option>
            </c:forEach>

                 </select><br/>
            销售单价：<input type="text" id="danjia"><br/>
            销售数量：<input type="text" id="num"><br/>
            <div id="dl">
            <input type="submit" value="保存"/>
            </div>
        </form>
    </div>--%>

    </div>

</div>
</div>
</body>
</html>
