<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="isLogined" value="${not empty sessionScope.user}"></c:set>
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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <!-- 新 Bootstrap4 核心 CSS 文件 -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="js/jquery.min.js"></script>
    <!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
    <script src="js/popper.min.js"></script>
    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body class="bg-secondary">
<%--导航栏--%>
<nav class="navbar navbar-expand-sm bg-light rounded mt-2 mb-2">
    <div class="row w-100">
        <div class="col-1"></div>
        <div class="col-5"><a class="navbar-brand text-dark" href="<%=basePath%>">🦒长颈鹿天气预报</a></div>
        <div class="col-5 d-flex flex-row-reverse">
            <%--用户管理功能区--%>
            <ul class="navbar-nav text-right pl-1">
                <li class="nav-item">
                    <a class="nav-link" href="#" data-toggle="modal"
                       data-target="#loginModal">登录</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" data-toggle="modal"
                       data-target="#registeModal">注册</a>
                </li>
            </ul>

            <%--搜索功能区--%>
            <form class="form-inline">
                <input class="form-control" type="text" placeholder="请输入城市或地区">
                <button class="btn btn-success" type="button">查询</button>
            </form>
        </div>
        <div class="col-1"></div>
    </div>
</nav>
<%--导航栏$--%>

<!--登录弹出框-->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content w-75">
            <div class="modal-header">
                <h5>登录</h5>
                <button class="close" data-dismiss="modal"><span>&times;</span></button>
            </div>
            <div class="modal-body">
                <!--登录表单-->
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <label class="input-group-text" for="loginNameInput">账号</label>
                    </div>
                    <input class="form-control" id="loginNameInput"/>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <label class="input-group-text" for="loginPassInput">密码</label>
                    </div>
                    <input class="form-control" id="loginPassInput" type="password"/>
                </div>
                <!--登录表单$-->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">取消
                </button>
                <button type="button" class="btn btn-success" onclick="login()">登录</button>
            </div>
        </div>
    </div>
    <script>
        function login() {
            var name = $("#loginNameInput").val();
            var pass = $("#loginPassInput").val();
            if (name == null || pass == null || name.trim() == "" || pass.trim() == "") {
                alert("存在未填写内容，请填写");
                return;
            } else {
                $.post("s/login", {
                    name: name,
                    pass: pass
                }, function (data) {
                    if (data == "1") {
                        alert("登录成功");
                        window.location.reload();
                    } else if (data == "0") {
                        alert("用户名或密码错误");
                    } else {
                        alert("系统错误");
                    }
                });
            }
        }
    </script>
</div><!--登录弹出框$-->
<!--注册弹出框-->
<div class="modal fade" id="registeModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content w-75">
            <div class="modal-header">
                <h5>注册</h5>
                <button class="close" data-dismiss="modal"><span>&times;</span></button>
            </div>
            <div class="modal-body">
                <!--注册表单-->
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <label class="input-group-text" for="registeNameInput">输入账号</label>
                    </div>
                    <input class="form-control" id="registeNameInput">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <label class="input-group-text" for="registePassInput">输入密码</label>
                    </div>
                    <input class="form-control" id="registePassInput" type="password"/>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <label class="input-group-text"
                               for="registeConfirmInput">重复密码</label>
                    </div>
                    <input class="form-control" id="registeConfirmInput" type="password"/>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">取消
                </button>
                <button type="button" class="btn btn-warning" onclick="registe()">注册
                </button>
            </div>
        </div>
    </div>
    <script>
        function registe() {
            var name = $("#registeNameInput").val();
            var pass = $("#registePassInput").val();
            var confirm = $("#registeConfirmInput").val();
            var nickname = $("#registeNicknameInput").val();
            if (name == null || name.trim() == "" || pass == null || pass.trim() == ""
                || nickname == null || nickname == "") {
                alert("存在未填写内容");
                return;
            }
            if (confirm != pass) {
                alert("两次密码输入不一致");
                return;
            }
            $.post("s/registe", {
                name: name,
                pass: pass,
                nickname: nickname
            }, function (data) {
                if (data == "1") {
                    alert("注册成功");
                    window.location.reload();
                } else if (data == "0") {
                    alert("用户名重复");
                } else {
                    alert("系统异常");
                }
            })
        }
    </script>
</div><!--注册弹出框$-->


<div class="container bg-light p-5 rounded">
    <div class="row align-items-end">
        <div class="pl-2 col-2"><h5>上海</h5></div>
        <div class="col"></div>
        <div class="pl-2 col-2">
            <small>更新时间：</small>
        </div>
    </div>
    <div class="row">
        <div class="col d-flex align-items-end p-0">
            <h2>晴</h2>
            <h5 class="p-1">转</h5>
            <h2>多云</h2></div>
    </div>
    <hr/>
    <smal class="text-secondary">未来5天天气</smal>
    <div class="row">
        <div id="day1" class="col p-2 text-center align-items-center">
            <p>天气</p>
            <p>气温</p>
        </div>
        <div id="day2" class="col p-2 text-center align-items-center">
            <p>天气</p>
            <p>气温</p>
        </div>
        <div id="day3" class="col p-2 text-center align-items-center">
            <p>天气</p>
            <p>气温</p>
        </div>
        <div id="day4" class="col p-2 text-center align-items-center">
            <p>天气</p>
            <p>气温</p>
        </div>
        <div id="day5" class="col p-2 text-center align-items-center">
            <p>天气</p>
            <p>气温</p>
        </div>
    </div>
</div>
</body>
</html>
