<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .icon{
        position: fixed;
        right: 0;
        top: 35%;
        opacity: 70%;
    }
    .fab{
        margin:0;
        padding: 0;
        box-sizing: border-box;
    }
    .fab{
        position: absolute;
        right: 0;
        float: right;
        text-align: center;
    }
    .fab-menu{
        display: none;
    }
    .fab-menu ul{
        list-style-type: none;
        margin: 0;
        padding: 0;
    }
    .fab-menu li{
        margin: 0;
        padding: 0;
    }
    .fab-menu a{
        margin: 0;
        padding: 0;
        text-decoration: none;
        color: orange;
    }
    .fab-btn{
        transition: transform 2.0s;
        color: red;
    }
    .fab-btn:hover{
        transform:rotate(180deg) ;
    }
    .fab span{
        font-size: 35px;
    }
</style>
<div class="fab">
    <div class="fab-btn">
        <a><span class="material-icons btu">list</span></a>
    </div>
    <div class="fab-menu">
        <ul>
            <li><a href="index"><span class="material-icons">home</span></a></li>
            <li><a href="speciality"><span class="material-icons">description</span></a></li>
            <li><a href="teacher"><span class="material-icons">supervisor_account</span></a></li>
            <li><a href="lab"><span class="material-icons">science</span></a></li>
            <li><a href="newnefu"><span class="material-icons">newspaper</span></a></li>
            <li><a href="backstage"><span class="material-icons">key</span></a></li>
        </ul>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(".fab").hover(function (){
            $(".btu").replaceWith("<span class=\"material-icons btu1\">keyboard_double_arrow_down</span>");
            $(".fab-menu").fadeIn(200);
        },function (){
            $(".btu1").replaceWith("<span class=\"material-icons btu\">list</span>");
            $(".fab-menu").fadeOut(200);
        }
    )
</script>
