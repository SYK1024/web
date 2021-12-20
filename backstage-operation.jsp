<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台操作</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
</head>
<body>
<div class="header">
    <%@include file="backstage-header.jsp"%>
</div>
<div class="icon">
    <%@include file="icon.jsp"%>
</div>
<form action="backstage-operation" method="post">
    <table>
        <thead>
        <tr>
            <th>tittle</th>
            <th>content</th>
            <th>provider</th>
            <th>img</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><input type="text" name="tittle" value="${newnefu.tittle}"></td>
            <td><input type="text" name="content" value="${newnefu.content}"></td>
            <td><input type="text" name="provider" value="${newnefu.provider}"></td>
            <td><input type="text" name="img" value="${newnefu.img}"></td>
            <input type="hidden" name="id" value="${newnefu.id}">
            <input type="hidden" name="type" value="1">
            <input type="hidden" name="operation" value="3">
        </tr>
        </tbody>
    </table>
    <button type="submit">修改</button>
</form>
<form action="backstage-operation" method="post">
    <input type="hidden" name="id" value="${newnefu.id}">
    <input type="hidden" name="type" value="1">
    <input type="hidden" name="operation" value="2">
    <button type="submit">删除</button>
</form>
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
