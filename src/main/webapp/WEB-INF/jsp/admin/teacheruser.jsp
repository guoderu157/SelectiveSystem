<%--
  Created by IntelliJ IDEA.
  User: 85387
  Date: 2018/9/28
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="adminIndex.jsp" %>

<html>
<head>
    <title></title>
</head>
<body>
<div class="container">
    <h5><b>当前位置</b>：用户管理 > 所有教师</h5>
    <hr>
    <div>
        <table class="table">
            <thead>
            <tr>
                <th>教工号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>年龄</th>
                <th>学历</th>
                <th>职称</th>
                <th>主讲课程一</th>
                <th>主讲课程二</th>
                <th>主讲课程三</th>
                <th>修改</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach items="${teachers}" var="teacher">
                <tr>
                    <td>${teacher.tno}</td>
                    <td>${teacher.tname}</td>
                    <td>${teacher.tsex}</td>
                    <td>${teacher.tage}</td>
                    <td>${teacher.teb}</td>
                    <td>${teacher.tpt}</td>
                    <td>${teacher.cno1}</td>
                    <td>${teacher.cno2}</td>
                    <td>${teacher.cno3}</td>
                    <td><a href="<%=basePath%>admin/teacherupdate?tno=${teacher.tno}">修改</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>


    </div>
</div>
</body>
</html>