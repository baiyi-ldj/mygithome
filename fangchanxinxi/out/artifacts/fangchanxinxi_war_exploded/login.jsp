<%--
  Created by IntelliJ IDEA.
  User: 流年
  Date: 2019/7/29
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/login.css" />
</head>
<body>
<div id="login">

<form class="loginForm" action="" name="actionForm" id="actionForm"
      method="post">
    <h2>房产信息系统查询</h2>
    <div class="info">${error }</div>
    <div class="inputbox">
        <label for="cardId">请输入身份证号：</label>
        <input type="text" class="input-text" id="cardId" name="cardId" placeholder="请输入用户名" required/>
    </div>
    <div class="inputbox">
        <label for="password">请输入密码：</label>
        <input type="password" id="password" name="password" placeholder="请输入密码" required/>
    </div>
<input type="hidden" class="path" name="path" value="${pageContext.request.contextPath }"/>
    <div >

        <input type="button" class="subBtn" value="登录"/> <a href="${pageContext.request.contextPath }/users/regit1">注册</a>
    </div>
</form>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/login.js"></script>


</body>
</html>
