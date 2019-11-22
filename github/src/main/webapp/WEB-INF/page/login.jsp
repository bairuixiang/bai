<%--
  Created by IntelliJ IDEA.
  User: 47352
  Date: 2019/11/22
  Time: 22:16
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
<div class="col-lg-12" style="height: 70px; background: rgba(0,0,0,0.92);"><h3 style="text-align: center;color:  #A89C03">登陆</h3>
</div>

<div  style="margin-top: 100px" class="table-bordered container col-md-4 col-md-offset-4">

        <form action="${pageContext.request.contextPath}/user/login" style="margin: 30px">
            <div class="form-group">
                <label>用户名</label>
                <input type="text" class="form-control" name="us1" value="${user.name}">
            </div>
            <div class="form-group">
                <label>密码</label>
                <input type="password" class="form-control" name="password" value="${user.us1}">
            </div>
            <div class="form-group" style="margin-top: 30px">
                <button type="submit" class="btn " style="background: black;color: #A89C03">登陆</button>
                <button type="reset" class="btn" style="background: black;color: #A89C03">注册</button>
            </div>
        </form>
</div>
</body>
</html>
