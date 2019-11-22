<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 47352
  Date: 2019/11/22
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>表格</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
     
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
     
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div class="col-lg-12" style="height: 70px; background: rgba(0,0,0,0.92);"><h3 style="text-align: center;color: #A89C03">展示</h3>
</div>

<div class="container col-xs-3 col-md-offset-3" style="margin-top: 30px" >
    <form class="form-inline" action="${pageContext.request.contextPath}/user/selectall" method="post">
        <div class="input-group">
            <input type="text" class="form-control" name="brief" placeholder="请输入名字" style="width: 100px">
        </div>
            <div class="input-group">
                <input type="text" class="form-control" name="us1" placeholder="请输入名字" style="width: 100px">
            </div>
        <button type="submit" class="btn" style="height: 35px;background: black;color: #A89C03;">查找</button>
    </form>
</div>
<div class="container" style="margin-top: 90px">
    <table class="table table-bordered table-striped table-hover" >
        <tr style="background: rgb(0,0,0); color: #A89C03" >
            <td>ID</td>
            <td>文章名</td>
            <td>摘要</td>
            <td>上传者</td>
            <td>上传者</td>
            <td>上传时间</td>
            <td></td>
            <td></td>
        </tr>
        <c:if test="${not empty users}">
        <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.brief}</td>
            <td>${user.us1}</td>
            <td>${user.uptime}</td>
        <td><a href="${pageContext.request.contextPath}/user/modify?id=${user.id}"><div style="height: 35px;background: black;color: #A89C03" class="btn btn-primary ">修改</div></a></td>
        <td><a href="${pageContext.request.contextPath}/user/delete?id=${user.id}"><div style="height: 35px;background: black;color: #A89C03;" class="btn btn-primary ">修改</div></a></td>
        </tr>
        </c:forEach>
        </c:if>
    </table>

    <c:if test="${empty users}">
            <h2 style="text-align: center">暂时没有文章上传</h2>
    </c:if>
</div>

<div class="container col-xs-3 col-lg-3 col-md-offset-3">
    <a  href="${pageContext.request.contextPath}/user/getadd"><button class="btn"  style="height: 35px;background: black;color: #A89C03">添加新的文章</button></a>
</div>

</body>
</html>
