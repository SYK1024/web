<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新闻</title>
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
            text-align: justify;
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
            width: 55%;
            margin: 0 0 0 20px;
            padding: 0;
            justify-content: center;
        }
        .sidebar a:hover{
            background: red;
            color: white;
        }
        .util{
            width: 90%;
            margin: 10px;
            justify-content: center;
        }
        .util a{
            color: black;
            font-size: 25px;
            display: block;
            text-align: center;
            padding: 20px;
            text-decoration: none;
        }
        .util a:link{background: white;color: black}
        .util a:visited{
            background: #2B41B8;color: limegreen;}
        .util a:hover{
            background: orange;
            color: white;
        }
        .util:hover{
            box-shadow:3px 5px 5px 3px  gray;
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
            <h3><a href="lab">新闻</a></h3>
            <ul>
                <c:forEach items="${newnefuneed}" var="t">
                    <li><a id="${t.id}" href="getnewnefu?id=${t.id}">${t.tittle}</a></li>
                </c:forEach>
            </ul>
        </div>
        <div class="content">
            <c:forEach items="${newnefus}" var="n">
                <div class="util">
                    <a href="getnewnefu?id=${n.id}">${n.tittle}</a>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="footer">
        <%@include file="footer.jsp"%>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>
