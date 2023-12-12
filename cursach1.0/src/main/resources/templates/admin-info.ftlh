<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/css/styles.css">
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <title>BOOKTREE</title>
</head>
<body>
<header>
    <div class="container">
        <img src="/static/photo/tree2.png" height="50px">
        <h3>BOOKTREE</h3>
        <ul>
            <li><a href="/">Главная</a></li>
            <li><a href="/about">О нас</a></li>
            <li><a href="/contacts">Контакты</a></li>
            <li><a href="/product/allProducts">Все товары</a></li>
            <#if user.isUser()>
                <li><a href="/user/${user.id}">Корзина</a></li>
            </#if>
        </ul>
    </div>
</header>
<#if user.isAdmin()>
    <h3>Подробная информация о пользователе ${user.name}</h3>
    <b>Номер телефона: </b> ${user.phoneNumber}<br>
    <b>Email: </b> ${user.email}<br>
    <h4>Товары пользователя ${user.name}</h4>
    <#list products as product>
        <div>
            <p><b>${product.name}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
        </div>
    <#else>
        <h3>Товаров нет</h3>
    </#list>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
</#if>
<#if !user.isAdmin()>
    <h1>BOOK SHOP</h1>
    <hr>
    <h4>Все товары</h4>
    <form action="/product/allProducts" method="get">
        <h1 style="text-align: center">Поиск товаров</h1>
        <hr>
        Поиск по названию книги: <input type="text" name="name"><br>
        <input type="submit" value="Поиск"/>
    </form>
    <div class="cards">
        <#list products as product>
            <div class="card">
                <#--            <img src="/images/${product.previewImageId}" alt="">-->
                <div class="card_top">
                    <a href="/product/${product.id}" class="card_image">
                        <img class="my-image" src="/images/${product.previewImageId}" alt="">
                        <p><b>${product.name}</b> ${product.price} руб. | <a
                                    href="/product/${product.id}">Подробнее...</a></p>
                    </a>
                </div>
                <div class="card_bottom">
                    <div class="card_prices">
                        <div class="card_price card_price-common">${product.price} руб.</div>
                    </div>
                    <a href="/product/${product.id}" class="card_title">
                        ${product.name}
                    </a>
                    <button class="card_add">В корзину</button>
                </div>
            </div>
        <#else>
            <h3>Товаров нет</h3>
        </#list>
    </div>
</#if>
</body>
</html>