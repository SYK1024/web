<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>实验室</title>
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
            width: 55%;
            margin: 0 0 0 20px;
            padding: 0;
            justify-content: center;
        }
        .content p{
            text-align: justify;
        }
        .util img{
            margin-left: 40%;
            width: 20%;
            height: 250px;
            object-fit: cover;
            text-align: center;
        }
        .util h2{
            text-align: center;
        }
        .acm a{
            display: block;
            text-align: center;
            text-decoration: none;
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
        <h3><a href="lab">实验室</a></h3>
        <ul>
            <li><a id="1" href="lab?select=1">ACM实验室</a></li>
            <li><a id="2" href="lab?select=2">923创新实验室</a></li>
            <li><a id="3" href="lab?select=3">925移动开发实验室</a></li>
        </ul>
    </div>
    <div class="content">
        <div class="util">
        <div class="acm">
            <h2>ACM实验室</h2>
            <img src="http://news.nefu.edu.cn/__local/8/E3/B1/5B6B2065681817D03B0DEDD86F4_FDB897F4_34523E.jpg">
            <a href="http://acm.nefu.edu.cn/">东北林业大学ACM主页</a>
           <p>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ACM实验室，从2006年到2018年，在ACM/ICPC国际大学生编程竞赛累计获奖（省级以上）共477人次，
               其中一等奖13个，二等奖39个，三等奖47个，优胜奖35个，最佳女队奖1个，
               全国赛银牌6枚、铜牌8枚，亚洲赛区银牌5枚、铜牌41枚。培养出100多名年薪十万以上的毕业生，
               其中年薪200万以上1人，100万-200万1人，50万-99万的4人；这100多人分别就业于：
               美国谷歌、微软中国、网易、百度、阿里巴巴和腾讯等IT公司。
           </p>
        </div>
        </div>
        <div class="util">
        <div class="l923">
            <h2>923创新实验室</h2>
            <img src="https://aulin.nefu.edu.cn/__local/E/33/AB/0E849F252D5646219D15E87AD27_29B97A33_3BD8.jpg">
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学院和专业十分重视学生实践和创新能力的锻炼和提高，通过搭建创新创业平台、
                社会实践平台和建设学生实践基地等方式为学生的创新和实践活动提供支持。
                采取多种形式鼓励学生参与到大学生创新项目的研究中来。
                2015年-2018年专业共获批大学生创新项目和科研训练项目81项，其中，
                国家级大学生创新项目26项，省级大学生创新项目10项，校级大学生创新项目31项，
                院级大学生创新项目7项，科研训练项目7项。
            </p>
        </div>
        </div>
        <div class="util">
        <div class="l925">
            <h2>925移动开发实验室</h2>
            <img src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fclact.jsnu.edu.cn%2F_upload%2Farticle%2F30%2F32%2Fe4796bcb499aa1625a57859a450f%2F5bb45685-805e-44b1-916b-159723a98a85.jpg&refer=http%3A%2F%2Fclact.jsnu.edu.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1641820981&t=cdc354cbc39d8e0b86ac638d4eeea210">
            <p>
                非真实图片
            </p>
        </div>
        </div>
</div>
</div>
<div class="footer">
    <%@include file="footer.jsp"%>
</div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    let select=${select};
    let acm=$(".acm");
    let l923=$(".l923");
    let l925=$(".l925");
    if(select==1){
        acm.show();
        l923.hide();
        l925.hide();
        let l1=$("#1");
        $(l1).css("color","white");
        $(l1).css("background-color","blue");
    }
    if(select==2){
        acm.hide();
        l925.hide();
        let l1=$("#2");
        $(l1).css("color","white");
        $(l1).css("background-color","blue");
    }
    if(select==3){
        acm.hide();
        l923.hide();
        let l1=$("#3");
        $(l1).css("color","white");
        $(l1).css("background-color","blue");
    }
</script>
</body>
</html>
