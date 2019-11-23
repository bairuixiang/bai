<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 47352
  Date: 2019/11/22
  Time: 22:08
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
<c:if test="${not empty user}">
    <div class="col-lg-12" style="height: 70px; background: rgba(0,0,0,0.92);"><h3 style="text-align: center;color: #A89C03">修改</h3>
        </div>
</c:if>
<c:if test="${empty user}">
    <div class="col-lg-12" style="height: 70px; background: rgba(0,0,0,0.92);"><h3 style="text-align: center;color: #A89C03;" >添加</h3>
    </div>
</c:if>

<div  style="margin-top: 100px" class="table-bordered container col-md-4 col-md-offset-4">
    <c:if test="${not empty user}">
    <form action="${pageContext.request.contextPath}/user/update?" style="margin: 30px">
        </c:if>
        <c:if test="${empty user}">
        <form action="${pageContext.request.contextPath}/user/insert" style="margin: 30px">
            </c:if>
            <c:if test="${not empty user}">
                <div class="form-group">
                    <label>id</label>
                    <input type="text" class="form-control" name="id" readonly value="${user.id}">
                </div>
            </c:if>
            <div class="form-group">
                <label>文章内容</label>
                <input type="text" class="form-control" name="name" value="${user.name}">
            </div>
            <div class="form-group">
                <label>文章摘要</label>
                <textarea class="form-control" name="brief" rows="4"></textarea>
            </div>
            <div class="form-group">
                <label>上传人</label>
                <input type="text" class="form-control" name="us1" value="${user.us1}">
            </div>
                <div class="form-group">
                    <label>上传时间</label>
                    <input type="date" class="form-control" name="uptime" value="${user.uptime}">
                </div>
            <div class="form-group" style="margin-top: 30px">
                <c:if test="${empty user}">
                    <button type="submit" style="background: black;color:#A89C03" class="btn ">添加</button>
                </c:if>
                <c:if test="${not empty user}">
                    <button type="submit"  style="background: black;color: #A89C03" class="btn">修改</button>
                </c:if>
                <button type="reset" class="btn btn-primary" style="background: black;color: #A89C03" class="btn">重置</button>
                <a href="${pageContext.request.contextPath}/user/selectall"><div class="btn" style="background: black;color:#A89C03">返回</div></a>
            </div>
        </form>
</div>
</body>
</html>
