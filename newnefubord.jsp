<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .board{
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
    }
    .newnefu-board{
        width: 100%;
    }
    .newnefu-board ul{
        width: 100%;
        margin: 0;
        padding: 0;
        list-style-type: none;
    }
    .newnefu-board li{
        display: block;
    }
    .newnefu-board a{
        display: flex;
        text-decoration: none;
    }
    .newnefu-board span{
        padding: 5px;
        text-align: justify;
    }
    .newnefu-board .tittle{
        width: 70%;
    }
    .newnefu-board a .create_time{
        width: 30%;
        margin-left: auto;
    }
</style>
<div class="board">
    <div class="newnefu-board">
        <h3>新闻栏</h3>
        <ul>
            <c:forEach items="${newnefuneed }" var="u">
                <li><a href="getnewnefu?id=${u.id}"><span class="tittle">${u.tittle}</span>
                    <span class="create_time">${u.create_time}</span></a> </li>
            </c:forEach>
        </ul>
    </div>
</div>
