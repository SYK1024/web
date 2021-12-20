<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    header {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }
    .header-top {
        margin: 0;
        width: 100%;
        background: #6969DD;
        display: flex;
    }
    .logo {
        margin-right: 50px;
        display: inline-block;
    }
    .header-login {
        margin-left: auto;
        display: inline-block;
    }
    .header-login{
        padding-right: 50px;
        margin-top: auto;
        font-size: 27px;
    }
    .header-bottom-all {
        display: flex;
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        justify-content: center;
        background: #6968AA;
    }
    .header-bottom{
        width: 15%;
    }
    .header-bottom h4{
        text-align: center;
        margin: 0;
        color: white;
        padding: 10px 0;
    }
    .header-bottom ul{
        display: none;
        width: 15%;
        position: absolute;
        margin: 0;
        padding: 0;
        background: #6968AA;
        list-style-type: none;
        z-index: 1;
        opacity: 75%;
    }
    .header-bottom li{
        display: block;
        text-align: center;
    }
    .header-bottom a{
        display: block;
        color: white;
        padding: 10px 10px;
        text-decoration: none;
    }
    .header-top a{
        text-decoration: none;
        color: white;
        opacity: 70%;
    }
</style>
<header>
    <div class="header-top">
        <a href="" class="logo"><img src="resources/img/logo.png" alt="东林标志"></a>
        <a href="login" class="header-login">登录</a>
    </div>
    <div class="header-bottom-all">
        <div class="header-bottom">
            <h4><a href="index">首页</a> </h4>
        </div>
        <div class="header-bottom">
            <h4><a href="speciality">专业介绍</a> </h4>
            <ul>
                <li class="header-bottom-li2"><a href="speciality">专业简介</a></li>
                <li class="header-bottom-li2"><a href="speciality">专业方向</a></li>
            </ul>
        </div>
        <div class="header-bottom">
            <h4><a href="teacher">教师队伍</a> </h4>
            <ul>
                <li class="header-bottom-li2"><a href="getteacherlevel?ulevel=1">教授</a></li>
                <li class="header-bottom-li2"><a href="getteacherlevel?ulevel=2">副教授</a></li>
                <li class="header-bottom-li2"><a href="getteacherlevel?ulevel=3">讲师</a></li>
            </ul>
        </div>
        <div class="header-bottom">
            <h4><a href="lab">实验室</a> </h4>
            <ul>
                <li class="header-bottom-li2"><a href="lab?select=1">ACM实验室</a></li>
                <li class="header-bottom-li2"><a href="lab?select=2">923创新实验室</a></li>
                <li class="header-bottom-li2"><a href="lab?select=3">925移动开发实验室</a></li>
            </ul>
        </div>
        <div class="header-bottom">
            <h4><a href="newnefu">新闻</a> </h4>
            <ul>
            </ul>
        </div>
        <div class="header-bottom">
            <h4><a href="backstage">后台</a> </h4>
            <ul>
            </ul>
        </div>
    </div>
</header>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(".header-bottom").hover(function (){
        let ul=$(this).children("ul");
        $(ul).fadeIn(200);
    },function (){
        let ul=$(this).children("ul");
        $(ul).fadeOut(200);
    })
</script>
