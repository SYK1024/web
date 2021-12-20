<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <style>
        table{
            width: 100%;
            border-collapse: collapse;
        }
        tr
        {
            text-align: center;
            border-bottom:1px solid #ddd;
        }
        td{
            text-align: center;
            padding: 10px;
        }
        tbody tr:nth-child(odd){
            background: aliceblue;
        }
        div.main a{
            display: inline-block;
            background: red;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            padding: 5px 15px;
        }
        div.main a:hover{
            background: deepskyblue;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <%@include file="backstage-header.jsp"%>
    </div>
    <div class="icon">
        <%@include file="icon.jsp"%>
    </div>
    <div class="main">
        <div class="newnefu">
            <h2>新闻</h2>
        <div class="operaction">
            <div class="add">
                <h3>增加</h3>
                <form action="backstage-operation" method="post">
                    tittle:<input type="text" name="tittle">
                    content:<input type="text" name="content">
                    provider:<input type="text" name="provider">
                    img:<input type="text" name="img">
                    <input type="hidden" name="id" value="0">
                    <input type="hidden" name="type" value="1">
                    <input type="hidden" name="operation" value="1">
                    <button type="submit">提交</button>
                </form>
            </div>
            <div class="select">
                <h3>查找</h3>
                <form action="backstage-operation" method="post">
                    <input type="hidden" name="id" value="0">
                    <input type="hidden" name="type" value="1">
                    <input type="hidden" name="operation" value="4">
                    请输入tittle:<input type="text" name="tittle">
                    <button type="submit">提交</button>
                </form>
            </div>
        </div>
    <div class="all-newnefu">
        <table>
            <thead>
            <tr>
                <th>#</th>
                <th>tittle</th>
                <th>content</th>
                <th>provider</th>
                <th>img</th>
                <th>create_time</th>
                <th>update_time</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${newnefus}" var="n" varStatus="i">
                <tr class="util">
                    <td>${i.count}</td>
                    <td><input type="text" name="tittle" value="${n.tittle}"></td>
                    <td><input type="text" name="content" value="${n.content}"></td>
                    <td><input type="text" name="provider" value="${n.provider}"></td>
                    <td><input type="text" name="img" value="${n.img}"></td>
                    <td><input type="text" name="create_time" value="${n.create_time}"></td>
                    <td><input type="text" name="update_time" value="${n.update_time}"></td>
                    <td><form action="backstage-operation" method="post">
                        <input type="hidden" name="id" value="${n.id}">
                        <input type="hidden" name="type" value="1">
                        <input type="hidden" name="operation" value="0">
                        <button type="submit">修改</button>
                        </form>
                        <form action="backstage-operation" method="post">
                            <input type="hidden" name="id" value="${n.id}">
                            <input type="hidden" name="type" value="1">
                            <input type="hidden" name="operation" value="2">
                            <button type="submit">删除</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
        </div>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    let jd=${jd};
    $(function (){
        if(jd==1){
            alert("增加成功");
        }
        if(jd==2){
            alert("删除成功");
        }
        if(jd==3){
            alert("修改成功");
        }
        if(jd==4){
            alert("查询成功");
        }
    })
</script>
</body>
</html>
