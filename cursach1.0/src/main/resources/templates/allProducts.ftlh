<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <#--    <link href="/static/css/styles.css" rel="stylesheet" type="text/css">-->
    <link rel="stylesheet" href="/static/css/styles.css">
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <title>BOOK SHOP</title>
</head>
<body>
<link type="text/css" rel="stylesheet" href="/static/css/styles.css"/>
<link type="text/css" rel="stylesheet" href="/static/css/cards.css"/>
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
<main>
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
<#--                    <a href="/product/${product.id}" class="card_title">-->
<#--                        ${product.name}-->
<#--                    </a>-->

                    <form action="/AddToCart" method="post" enctype="application/x-www-form-urlencoded">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="hidden" name="nameProduct" value="${product.name}">
<#--                        <input type="hidden" name="user_id" value="${user.id}">-->
                        <input type="hidden" name="cost" value="${product.price}">
                        <button class="card_add" type="submit" value="В корзину">В корзину</button>
                    </form>
                </div>
            </div>
        <#else>
            <h3>Товаров нет</h3>
        </#list>
    </div>
</main>
<#--<footer class="footer-container">-->
<#--</footer>-->
</body>
</html>

<#--<h3>Создать новый товар</h3>-->
<#--<form action="/product/create" method="post" enctype="multipart/form-data">-->
<#--    Название: <input type="text" name="name"/><br><br>-->
<#--    Первая фотография: <input type="file" name="file1"/><br><br>-->
<#--    Вторая фотография: <input type="file" name="file2"/><br><br>-->
<#--    Третья фотография: <input type="file" name="file3"/><br><br>-->
<#--    Автор: <input type="text" name="author"/><br><br>-->
<#--    Цена: <input type="number" name="price" step="any"/><br><br>-->
<#--    Описание: <input type="text" name="description"/><br><br>-->
<#--    Издательство: <input type="text" name="PublicationHouse"/><br><br>-->
<#--    Год публикации: <input type="number" name="yearOfPublication"/><br><br>-->
<#--    Количество страниц: <input type="number" name="pages"/><br><br>-->
<#--    Обложка:<input type="text" name="cover"/><br><br>-->
<#--    Вес: <input type="number" name="weight"/><br><br>-->
<#--    Возрастное ограничение:<input type="text" name="AgeRestriction"/><br><br>-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type="submit" value="Добавить товар"/>-->
<#--    </#if>-->
<#--    </#if>-->
<#--</form>-->