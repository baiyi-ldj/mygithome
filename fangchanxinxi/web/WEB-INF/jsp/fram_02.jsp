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
        <li><a href="${pageContext.request.contextPath}/users/fenye" id="x_01">房产信息查询</a></li>

    </ul>
    <div id="menu_02">
        <form action="${pageContext.request.contextPath}/users/fenye"  name="getlist" id="getlist"  method="post">
            <label>查询类型</label>
            <select name="tiaojian" id="tiaojian">

                <option value="1">用户名</option>
                <option value="2">身份证</option>
            </select>
            <input type="text"  name="leibie" class="type1" value="${aaaa}" />
            <input type="submit"  class="btu" value="提交"/>
        </form>
        <div>
            <table border="3" width="95%" height="50"  bordercolor="cornflowerblue" class="table_b" >
                <tr align="center" bgcolor="pink">
                    <td>序号</td>
                    <td>项目名称</td>
                    <td>产权人</td>
                    <td>身份证号</td>
                    <td>房屋类型</td>
                    <td>使用面积</td>
                    <td>建造时间</td>
                </tr>
                <c:forEach items="${saleList}" var="t" varStatus="status">
                    <tr align="center"
                            <c:if test="${status.index%2==1}">
                                bgcolor="pink"
                            </c:if>
                    >

                        <td> ${t.id}</td>
                        <td>${t.projectName}</td>
                        <td>${t.name}</td>
                        <td>${t.cardId}</td>
                        <td>${t.houseType}</td>
                        <td>${t.area}</td>
                        <td>${t.buildTime}</td>
                    </tr>
                </c:forEach>

            </table>

            <div>${sum}</div>

            <div class="fenye">
                共${page.totalCount }条记录&nbsp;&nbsp; ${page.currentPageNo }/${page.totalPageCount }页
                <c:if test="${page.currentPageNo > 1}">
                <a href="${pageContext.request.contextPath }/users/fenye?pageIndex=1">首页</a>
                <a href="${pageContext.request.contextPath }/users/fenye?pageIndex=${page.currentPageNo-1}">上一页</a>
                </c:if>
                <c:if test="${page.currentPageNo < page.totalPageCount }">
                <a href="${pageContext.request.contextPath }/users/fenye?pageIndex=${page.currentPageNo+1}">下一页</a>
                <a href="${pageContext.request.contextPath }/users/fenye?pageIndex=${page.totalPageCount}">最后一页</a>
                </c:if>
            </div>


    </div>

</div>
</div>
</body>
</html>
