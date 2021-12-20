<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>专业介绍</title>
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
            <h3><a href="speciality">专业介绍</a></h3>
            <ul>
                <li><a id="1" href="#introduction">专业简介</a></li>
                <li><a id="2" href="#direction">专业方向</a></li>
            </ul>
        </div>
        <div class="content">
            <div class="introduction" id="introduction">
                <h2 >专业简介</h2>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;软件工程专业以IT业需求为导向，培养具有良好综合素质和职业道德，
                    掌握扎实的基础理论和专业知识，具有软件分析、设计、开发、测试与管理能力，
                    具备较强工程实践能力、技术创新能力和团队精神，
                    能快速适应软件工程新技术发展并具有国际视野和国际竞争力的高级软件工程师。
                    专业实施灵活的“211”人才培养模式（其中,2年基础教育,1年面向企业的专业教育,1年企业顶岗实习），
                    在教学上着力推动基于问题、基于项目和基于案例的学习，对于实践性强的课程，采取校企联合“双师制”培养，
                    同时以大学生创新实践活动、科技大赛为补充，突出工程化培养。
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;教师队伍采用专兼结合的用人机制，现有专职教师12人，其中高级职称7人，讲师5人，博士8人，硕士4人，
                    其中6人具有国外留学或访学经历，此外,专业还从国内外知名软件企业、高校聘请兼职教师承担部分教学工作作为补充。
                    专业教师主持或参加了多项国家、省、部、市及学校的纵向、横向科研和教研项目。获得省优秀教育科研成果奖一等奖、
                    省优秀高等教育科学研究成果二等奖、省科技进步二等奖、三等奖、省高等学校优秀多媒体教学软件三等奖、
                    市科技进步一等奖、省高等教育学会十一五规划课题三等奖等奖项。取得发明专利和实用新型专利10余项，
                    软件著作权10余项。专业教师累计主编和参编出版教材13部，发表论文70余篇，其中EI及ISTP检索论文40余篇。
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;软件工程专业综合实验室，服务于专业的课程实验和创新创业项目，
                    培养学生获得软件项目管理和开发经验，完成系统开发的实习、实训。
                    软件工程专业综合实验室下设软件工程实验室（系统开发实训基地）、嵌入式技术实验室、
                    移动开发实验室和IOS开发实验室。主要完成基于行业标准和技术的Rational统一过程和测试、
                    软件体系结构、面向对象技术与UML、软件需求与分析、软件测试和质量保证、移动开发和IOS开发等课程的实验。
                    同时，依托国家级大型软件企业，建立了校企合作的实习、实训基地。结合企业项目、师资、
                    环境等对学生进行有针对性的工程能力训练，使学生具备综合运用所学知识解决复杂工程问题的能力。
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;专业目前已经建立了华为、亿阳安全、东软、华信、北京思特奇、博彦集智、江苏乐建、华宇（大连）、
                    青软、微洋科技等实习基地。
                </p>
            </div>
            <div class="direction" id="direction">
                <h2>专业方向</h2>
                <p>
                    前端设计师：
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们在浏览网站时，会看到一些科技感十足，画面十分精致的网页，也会看到一些粗制滥造、仿佛回到10年前的页面。
                    所有的这些，都是出自前端之手， 他们负责在实现网站具体功能的同时加入一些互动和特效，
                    和前端联系比较紧密的是UI设计师。但是UI设计师相关的知识软件工程大多是不教的。
                    UI设计师的工作就是设计出比较好看的界面和图标，合理的页面布局等，需要掌握一些专业的设计软件。
                    <br>
                    后端：
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;听名字我们就能大概猜到后端程序员是干什么的啦，既然前端是负责网页页面的实现，
                    那么后端的任务则是网页后台数据的处理，例如你在登陆一个网页时，要输入账号与密码，
                    后端就要将你输入的信息与数据库进行访问并返回结果。如果说前端定义了一个物品的外观，后端则是实现了它的功能。
                    <br>
                    人工智能工程师：
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作为时下最热门的职业之一，人工智能工程师岗位的要求也是相对较高的，它需要有较高的数学水平和编码能力，
                    我们身边的app里大都有人工智能的痕迹，例如路线规划、喜好推荐、人脸识别等功能，其实都是人工智能的功劳。
                </p>
            </div>
        </div>
    </div>
    <div class="footer">
        <%@include file="footer.jsp"%>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    let level=0;
    let introduction=$(".introduction");
    let direction=$(".direction");
    let l1=$("#1");
    let l2=$("#2");
    $("#1").click(function (){
        level=1;
        $(".test").val(level);
        $(l1).css("color","white");
        $(l1).css("background-color","blue");
        $(l2).css("color","black");
        $(l2).css("background-color","#F3F3F3");
        $(introduction).css("background-color","#ffec99");
        $(introduction).css("color","brown");
        $(direction).css("background-color","white");
        $(direction).css("color","black");
    })
    $("#2").click(function (){
        level=2;
        $(".test").val(level);
        $(l2).css("color","white");
        $(l2).css("background-color","blue");
        $(l1).css("color","black");
        $(l1).css("background-color","#F3F3F3");
        $(direction).css("background-color","#ffec99");
        $(direction).css("color","brown");
        $(introduction).css("background-color","white");
        $(introduction).css("color","black");
    })
</script>
</body>
</html>
