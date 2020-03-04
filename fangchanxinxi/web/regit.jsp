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
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/regit.css" />
</head>
<body>
<div id="login">

<form class="loginForm" action="${pageContext.request.contextPath }/users/regin" name="actionForm" id="actionForm"
      method="post">
    <h2 class="aaa">账号注册</h2>
    <div class="info">${error }</div>
    <div class="inputbox">
        <label for="cardId">身份证号：</label>
        <input type="text" class="input-text" id="cardId" name="cardId" placeholder="请输入身份证号码" pattern="^[0-9]{18}" required/><span id="n"></span>
    </div>
    <div class="inputbox">
        <label for="name">用户名：</label>
        <input type="text" id="name" name="name" pattern="^[\u4e00-\u9fa5]{0,25}" placeholder="请输入用户名" required/>
    </div>
    <div class="inputbox">
        <label for="password">密码：</label>
        <input type="password" id="password" name="password" pattern="^[0-9a-zA-Z]{6,18}" placeholder="请输入密码" required/>
    </div>
    <div class="inputbox">
        <label for="password1">确认密码：</label>
        <input type="password" id="password1" name="password1" placeholder="确认密码" required/>
    </div>
<input type="hidden" class="path" name="path" value="${pageContext.request.contextPath }"/>
    <div >

        <input type="submit" class="subBtn" value="注册"/>  <input type="button" id="d" value="返回"/>
    </div>
</form>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/regit.js"></script>


</body>
</html>
