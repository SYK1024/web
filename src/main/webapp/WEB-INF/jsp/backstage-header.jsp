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
        vertical-align: bottom;
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
</style>
<header>
    <div class="header-top">
        <a href="" class="logo"><img src="resources/img/logo.png" alt="东林标志"></a>
        <a href="" class="header-login">登录</a>
    </div>
    <div class="header-bottom-all">
        <div class="header-bottom">
            <h4><a href="index">首页</a> </h4>
        </div>
        <div class="header-bottom">
            <h4><a href="speciality">增加</a> </h4>
            <ul>
                <li class="header-bottom-li2"><a href="">新闻</a></li>
                <li class="header-bottom-li2"><a href="">公告</a></li>
            </ul>
        </div>
        <div class="header-bottom">
            <h4><a href="teacher">删除</a> </h4>
            <ul>
                <li class="header-bottom-li2"><a href="">新闻</a></li>
                <li class="header-bottom-li2"><a href="">公告</a></li>
            </ul>
        </div>
        <div class="header-bottom">
            <h4><a href="newnefu">修改</a> </h4>
            <ul>
                <li class="header-bottom-li2"><a href="">新闻</a></li>
                <li class="header-bottom-li2"><a href="">公告</a></li>
            </ul>
        </div>
        <div class="header-bottom">
            <h4><a href="">查找</a> </h4>
            <ul>
                <li class="header-bottom-li2"><a href="">新闻</a></li>
                <li class="header-bottom-li2"><a href="">公告</a></li>
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
