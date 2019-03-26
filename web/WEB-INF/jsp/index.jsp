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
</head>
<body>
<div id="id1">
    <fieldset>
        <legend>登陆</legend>
        <form action="userLogin" method="post">
            <p><input type="text" name="name" required placeholder="请输入请户名"></p>
            <p><input type="password" name="password" placeholder="请输入密码" required></p>
            <input type="submit" value="登录"> <a href="register"><input type="button" value="注册"></a>
        </form>
    </fieldset>
</div>
</body>
</html>
