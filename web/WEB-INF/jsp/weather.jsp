<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="zh">
<head>
    <%
        String contextPath = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
    %>
    <base href="<%=basePath%>"/>
    <meta charset="UTF-8">
    <title>$Title$</title>
    <!-- 新 Bootstrap4 核心 CSS 文件 -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="js/jquery.min.js"></script>
    <!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
    <script src="js/popper.min.js"></script>
    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>我的第一个 Bootstrap 页面</h1>
    <p>这是一些文本。</p>
    <!-- 第一个例子：控制列的宽度及在不同的设备上如何显示 -->
    <div class="row">
        <div class="col-sm-5"></div>
    </div>
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4"></div>
        <div class="col-sm-4"></div>
    </div>

    <!-- 第二个例子：或让 Bootstrap 者自动处理布局 -->
    <div class="row">
        <div class="col"></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
</div>
<div id=" id1">
    <fieldset>
        <legend>登陆</legend>
        <form action="userLogin"
              method="post">
            <p><input
                    type="text"
                    name="name"
                    required
                    placeholder="请输入请户名"></p>
            <p><input
                    type="password"
                    name="password"
                    placeholder="请输入密码"
                    required></p>
            <input
                    type="submit"
                    value="登录"> <a
                href="register"> <input
                type="button"
                value="注册"> </a>
        </form>
    </fieldset>
</div>
</body>
</html>
