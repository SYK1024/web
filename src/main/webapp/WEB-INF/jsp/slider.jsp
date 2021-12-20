<%@ page pageEncoding="UTF-8" %>
<style type="text/css">
    * {
        margin: 0;
        padding: 0;
        list-style: none;
    }

    a {
        text-decoration: none;
    }

    div {
        box-sizing: border-box;
    }

    img {
        width: 100%;
        object-fit: cover;
    }

    .slider-wrap {
        position: relative;
        width: 100%;
        height: 800px;
    }
    @media screen and (min-width: 1200px) {
        .slider-wrap {
            height: 800px;
        }
    }

    @media screen and (min-width:768px) and (max-width:992px) {
        .slider-wrap {
            height: 500px;
        }
    }

    @media screen and (max-width:768px) {
        .slider-wrap {
            max-height: 350px;
        }
    }

    .slider {
        height: 100%;
    }

    .slider .slider-list {
        position: relative;
        height: 100%;
    }

    .slider .slider-list .item {
        display: none;
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        overflow: hidden;
    }

    .slider .slider-list .item.cur {
        display: block;
    }

    .yuan {
        position: absolute;
        left: 50%;
        bottom: 40px;
        transform: translateX(-50%);
        -webkit-transform: translateX(-50%);
        -moz-transform: translateX(-50%);
    }

    .yuan .yuan-item {
        display: block;
        position: relative;
        float: left;
        width: 18px;
        height: 18px;
        margin-right: 1px;
        cursor: pointer;
    }
    .yuan .yuan-item::after {
        content: "";
        display: block;
        position: absolute;
        top: 4px;
        left: 4px;
        width: 10px;
        height: 10px;
        border: 2px solid rgba(255, 255, 255, .4);
        border-radius: 50%;
        box-sizing: border-box;
    }

    .yuan .yuan-item.cur::after {
        background: #fff;
    }

    .yuan .yuan-item::before {
        content: "";
        display: block;
        width: 18px;
        height: 18px;
        background-color: rgba(255, 255, 255, 0);
        border-radius: 50%;
    }

    .yuan .yuan-item.cur::before {
        background-color: rgba(255, 255, 255, .2);
    }

    .btn-group {
        width: 100%;
    }
    .btn-group .btn-left,
    .btn-group .btn-right {
        position: absolute;
        width: 50px;
        height: 50px;
        line-height: 50px;
        font-size: 30px;
        text-align: center;
        color: #fff;
        background: rgba(255, 255, 255, .5);
        border-radius: 50%;
        cursor: pointer;
        font-family: "宋体";
    }
    .btn-group .btn-left {
        left: 15px;
        top: 50%;
        margin-top: -25px;
    }
    .btn-group .btn-right {
        right: 15px;
        top: 50%;
        margin-top: -25px;
    }
</style>
<div class="slider-wrap  J_sliderWrap">
    <div class="slider">
        <ul class="slider-list">
            <li class="item cur">
                <img class="item-img"
                     src="resources/img/slider-1.jpg"
                     alt=""/>
            </li>
            <li class="item">
                <img class="item-img"
                     src="resources/img/slider-2.jpg"
                     alt=""/>
            </li>
            <li class="item">
                <img class="item-img"
                      src="resources/img/slider-3.jpg"
                      alt=""/>
            </li>
            <li class="item">
                <img class="item-img"
                     src="resources/img/slider-4.jpg"
                     alt=""/>
            </li>
        </ul>
    </div>
    <div class="pic">
        <div class="yuan">
            <i class="yuan-item cur"></i>
            <i class="yuan-item"></i>
            <i class="yuan-item"></i>
            <i class="yuan-item"></i>
        </div>
    </div>

    <div class="btn-group">
        <div class="btn-left">&lt;</div>
        <div class="btn-right">&gt;</div>
    </div>
</div>
<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="resources/js/mySlider.js"></script>
<script>
    new Slider({
        oSliderWrap: $('.J_sliderWrap'),
        sliderItems: $('.item'),
        yuan: $('.yuan'),
        yuanItems: $('.yuan-item'),
        btnGroupLeft: $('.btn-left'),
        btnGroupRight: $('.btn-right')
    }).init();
</script>
