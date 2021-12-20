<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录界面</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
</head>
<body>
<div class="icon">
    <%@include file="icon.jsp"%>
</div>
<form action="login" method="post">
    用户名 : <input type="text" name="username">
    <br>
    密码 : <input type="password" name="pwd">
    <br>
    <button type="submit">登录</button>

</form>
</body>
</html>
