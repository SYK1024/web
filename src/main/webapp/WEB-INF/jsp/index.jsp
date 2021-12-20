<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <title>首页</title>
    <style>
        .newnefucard{
            width: 90%;
            margin-left: 5%;
        }
        .newnefubord{
            display: none;
        }
        .extra{
            box-sizing: border-box;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .extra a{
            width: 450px;
            text-decoration: none;
            display: block;
            padding: 5px;
            margin: 5px;
            color: white;
            background: mediumpurple;
            text-align: center;
        }
        .extra a:hover{
            color: red;
            background: #08E7F6;
        }
        @media (max-width: 800px) {
            .newnefucard{
                display: none;
            }
            .newnefubord{
                display: block;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <%@include file="/WEB-INF/jsp/header.jsp"%>
    </div>
    <div class="slider">
        <%@include file="/WEB-INF/jsp/slider.jsp"%>
    </div>
    <div class="icon">
        <%@include file="icon.jsp"%>
    </div>
    <div class="main">
        <div class="newnefucard">
        <%@include file="newnefucard.jsp"%>
        </div>
        <div class="newnefubord">
            <%@include file="newnefubord.jsp"%>
        </div>
        <div class="extra">
            <a href="https://www.nefu.edu.cn/" target="_blank">东北林业大学</a>
            <a href="https://icec.nefu.edu.cn/" target="_blank">东北林业大学信息与计算机工程学院</a>
            <a href="https://nic.nefu.edu.cn/" target="_blank">东北林业大学网络信息中心</a>
            <a href="http://nefu.fy.chaoxing.com/portal" target="_blank">东北林业大学网络教学平台</a>
            <a href="https://webvpn.nefu.edu.cn/" target="_blank">东北林业大学VPN</a>
        </div>
    </div>
    <div class="footer">
        <%@include file="footer.jsp"%>
    </div>
</div>
</body>
</html>
