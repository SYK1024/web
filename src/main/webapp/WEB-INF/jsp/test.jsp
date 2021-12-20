<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div >
    <h3>新闻栏</h3>
    <form action="test" method="post">
        用户名:<input type="text" name="name"><br>
        密码:<input type="text" name="keyword"><br>
        <button type="submit">更改</button>
    </form>
    <input type="text" value="${session.get(jd)}">
    <input class="test" type="text">
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    let jd=${jd};
    $(function (){
        $(".test").val(jd);
        if(jd==1){
            alert("成功");
        }
    })
</script>
</body>
</html>
