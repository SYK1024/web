<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新闻详细</title>
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
        .sidebar a:hover{
            background: red;
            color: white;
        }
        .content{
            width: 55%;
            margin: 0 0 0 20px;
            padding: 0;
            justify-content: center;
        }
        .inf{
            text-align: center;
            justify-content: center;
        }
        .inf span{
            margin: 20px 0;
            display: block;
            font-size: 20px;
        }
        .img{
            margin-left: 40%;
            width: 20%;
            height: 250px;
            object-fit: cover;
            text-align: center;
        }
        .content p{
            text-align: justify;
            font-size: 17px;
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
            <div class="inf">
                <h2>${newnefu.tittle}</h2>
                <span>提供者：${newnefu.provider} 时间：${newnefu.create_time}</span>
            </div>
            <img class="img" src="${newnefu.img}" alt="暂无图片">
            <p>${newnefu.content}</p>
        </div>
    </div>
    <div class="footer">
        <%@include file="footer.jsp"%>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>
