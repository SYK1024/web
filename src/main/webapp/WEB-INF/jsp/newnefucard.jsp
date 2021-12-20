<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .card-all{
        box-sizing: border-box;
        flex-direction: row;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .card{
        width: 30%;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 10px;
        margin: 10px;
    }
    .card-all header{
        width: 100%;
        height: 300px;
    }
    .card-all .header img{
        border-radius: 50%;
        opacity: 50%;
        object-fit: contain;
        transition: opacity 2s;
    }
    .card-all .inf{
        width: 100%;
        text-align: center;
    }
    .card-all a{
        display: inline-block;
        text-decoration: none;
        background: tomato;
        padding: 5px 10px;
        border-radius: 5px;
        color: white;
        margin-top: 5px;
    }
    .card-all .card:hover{
        box-shadow:0px 10px 10px 3px  gray;
    }
    .card-all .card:hover img{
        opacity: 1;
    }
    .card-all a:hover{
        background: red;
    }
</style>
<div class="card-all">
<c:forEach items="${newnefuneed}" var="u">
<div class="card">
    <div class="header">
        <img src="${u.img}" alt="">
    </div>
    <div class="inf">
        <p class="tittle">${u.tittle}</p>
        <p class="create_time">${u.create_time}</p>
        <a href="getnewnefu?id=${u.id}">Read More</a>
    </div>
</div>
</c:forEach>
</div>
<%--    <div class="card">--%>
<%--        <div class="header">--%>
<%--            <img src="https://picsum.photos/250?random=1" alt="">--%>
<%--        </div>--%>
<%--        <div class="inf">--%>
<%--            <span class="tittle">dddd</span>--%>
<%--            <span class="create_time">5555</span>--%>
<%--            <a href="getnewnefu?id">Read More</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
