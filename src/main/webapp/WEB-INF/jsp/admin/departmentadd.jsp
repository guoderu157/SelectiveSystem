<%--
  Created by IntelliJ IDEA.
  User: 85387
  Date: 2018/9/28
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
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
    <h5><b>当前位置</b>：院系管理 > 增加院系</h5>
    <hr>
    <div class="col-12">
        <form id="addinfo" action="/admin/departmentInsert" method="post">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">系编号:</span>
                </div>
                <input type="text" class="form-control col-4" placeholder="系编号" id="dno" name="dno">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">系名:</span>
                </div>
                <input type="text" class="form-control col-4" placeholder="系名" id="dname" name="dname">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">系主任:</span>
                </div>
                <input type="text" class="form-control col-4" placeholder="系主任" id="dmanager" name="dmanager">
            </div>
            <%--<div class="input-group mb-3">--%>
            <%--<div class="input-group-prepend">--%>
            <%--<span class="input-group-text">系主任:</span>--%>
            <%--</div>--%>
            <%--<select class="selectpicker mb-4" id="dmanager" name="dmanager">--%>
            <%--<c:forEach items="${teachers}" var="teacher">--%>
            <%--<option value="${teacher.tname}">${teacher.tname}</option>--%>
            <%--</c:forEach>--%>
            <%--</select>--%>
            <%--</div>--%>
            <div style="padding-top: 15px">
                <button type="submit" class="btn btn-primary">添加</button>
                <button type="reset" class="btn btn-warning">重置</button>
            </div>
        </form>

    </div>

</div>
</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${basePath}/js/jquery.min.js" type="text/javascript"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${basePath}/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<script src="${basePath}/js/checkinfo.js" type="text/javascript"></script>

</html>
