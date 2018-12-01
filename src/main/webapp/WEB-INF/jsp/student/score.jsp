<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="${basePath}/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>选课管理信息系统</title>
</head>
<body>
<%@include file="nav.jsp" %>
<div class="container">
    <h5><b>当前位置</b>：信息查询 > 成绩查询</h5>
    <hr>
    <table class="table">
        <thead>
        <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>课程名</th>
            <th>分数</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${scts}" var="score">
            <tr>
                <td>${score.sno}</td>
                <td>${score.sname}</td>
                <td>${score.cname}</td>
                <td>${score.grade}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${basePath}/js/jquery.min.js" type="text/javascript"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${basePath}/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
</html>
