<%--
  Created by IntelliJ IDEA.
  User: 85387
  Date: 2018/10/9
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="${basePath}/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>选课管理信息系统</title>

</head>
<body>
<c:if test="${role=='student'}">
    <c:set var="IndexUrl" value="../student/nav.jsp"/>
</c:if>
<c:if test="${role=='teacher'}">
    <c:set var="IndexUrl" value="../teacher/nav.jsp"/>
</c:if>
<%--动态include--%>
<jsp:include page="${IndexUrl}" flush="true"/>

<div class="container">
    <h5><b>当前位置</b>：个人信息 > 密码修改</h5>
    <hr>
        <form action="${pageContext.request.contextPath}/login/PasswordUpdate" method="post">
        <input type="hidden" name="username" value=${sessionScope.username}>
        <input type="hidden" id="type" name="type" value="1">
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">旧密码:</span>
            </div>
            <input type="password" class="form-control col-4" placeholder="旧密码" id="password"
                   name="password">
            <a id="old_password_text" style="color: #c82333"></a>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">新密码:</span>
            </div>
            <input type="password" class="form-control col-4" placeholder="请输入8~24位新密码" id="newpassword"
                   name="newpassword">
            <a id="new_password_text" style="color: #c82333"></a>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">确认新密码:</span>
            </div>
            <input type="password" class="form-control col-4" placeholder="请输入8~24位密码确认新密码" id="new_password_again"
                   name="new_password_again">
            <a id="new_passwords_text" style="color: #c82333"></a>
        </div>
        <div id="info">
            ${info}
        </div>
        <div style="padding-top: 15px">
            <button id="ChangePassword" type="submit" class="btn btn-primary" onclick="return changepassword()">修改</button>
            <button type="reset" class="btn btn-warning">重置</button>
        </div>
    </form>
</div>
</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${basePath}/js/jquery.min.js" type="text/javascript"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${basePath}/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<script src="${basePath}/js/encrypt/md5.min.js" type="text/javascript"></script>
<script src="${basePath}/js/encrypt/sha3.js" type="text/javascript"></script>
<script src="${basePath}/js/checkinfo.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function () {
        if(${role=='teacher'}){
            $("#type").val("2")
        }
        if(${role=='admin'}){
            $("#type").val("3")
        }
    });
</script>
</html>