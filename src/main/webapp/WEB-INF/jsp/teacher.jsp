<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>教师队伍</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <style>
        .main{
            box-sizing: border-box;
            margin:0;
            padding: 0;
            width: 100%;
            justify-content: center;
            display: flex;
            flex-wrap: wrap;
        }
        .show{
            width: 100%;
            margin: 0;
            padding: 0;
            display: block;
            object-fit: cover;
            position: relative;
        }
        .show img{
            width: 100%;
            height: 20em;
            margin: 0;
            padding: 0;
        }
        .sidebar {
            display: inline-block;
            width: 15%;
            padding: 0;
        }
        .sidebar h3{
            padding: 0;
            margin: 0;
        }
        .sidebar h3 a{
            display: block;
            text-decoration: none;
            text-align: center;
            background: #000;
            color: white;
            margin: 0;
            padding: 20px 0;
        }
        .sidebar ul{
            margin: 0;
            padding: 0;
            list-style-type: none;
        }
        .sidebar li{
            display: block;
            text-align: center;
        }
        .sidebar ul a{
            display: block;
            color: black;
            background: #F3F3F3;
            padding: 20px 20px;
            text-decoration: none;
        }
        .content{
            width: 75%;
            display: flex;
            flex-wrap: wrap;
            margin: 0;
            padding: 0;
            justify-content: flex-start;
        }
        .content .util{
            width: 200px;
            margin: 0 20px;
        }
        .img {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }
        .util a{
            text-decoration: none;
            text-align: center;
        }
        .util a:hover{
            color: orange;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <%@include file="/WEB-INF/jsp/header.jsp"%>
    </div>
    <div class="icon">
        <%@include file="icon.jsp"%>
    </div>
    <div class="main">
        <div class="show">
            <img src="https://icec.nefu.edu.cn/images/ba.png" alt="加载失败">
        </div>
        <div class="sidebar">
            <h3><a href="teacher">教师队伍</a> </h3>
            <ul>
                <li><a id="1" href="getteacherlevel?ulevel=1">教授</a></li>
                <li><a id="2" href="getteacherlevel?ulevel=2">副教授</a></li>
                <li><a id="3" href="getteacherlevel?ulevel=3">讲师</a></li>
            </ul>
        </div>
        <div class="content">
            <c:forEach items="${teachers}" var="t">
                <div class="util">
                    <a href="getteacher?uid=${t.id}"><img class="img" src="${t.img}" alt="暂无图片"><p>${t.name}</p></a>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="footer">
        <%@include file="footer.jsp"%>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
let level=${level};
if (level==1){
    let l1=$("#1");
    $(l1).css("color","white");
    $(l1).css("background-color","blue");
}
if (level ==2){
    let l1=$("#2");
    $(l1).css("color","white");
    $(l1).css("background-color","blue");
}
if (level ==3){
    let l1=$("#3");
    $(l1).css("color","white");
    $(l1).css("background-color","blue");
}
</script>
</body>
</html>
