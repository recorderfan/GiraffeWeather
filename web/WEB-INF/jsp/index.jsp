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
  $END$
  </body>
</html>
