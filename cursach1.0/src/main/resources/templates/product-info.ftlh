<!DOCTYPE html>
<html lang="ru">
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
<link type="text/css" rel="stylesheet" href="/static/css/styles.css"/>
<link type="text/css" rel="stylesheet" href="/static/css/cards.css"/>
<link type="text/css" rel="stylesheet" href="/static/css/productInfo.css"/>
<header>
    <div class="container">
        <img src="/static/photo/tree2.png" height="50px">
        <a href="/" class="logo">BOOKTREE</a>
        <ul>
            <li><a href="/">Главная</a></li>
            <li><a href="/product/allProducts">Все товары</a></li>
            <li><a href="/profile">Профиль</a></li>
            <li><a href="/cart">Корзина</a></li>
        </ul>
    </div>
</header>
<main>
    <div class="container1">
        <div class="left-column">
            <#list images as img>
                <img src="/images/${img.id}" height="60px"/><br><br>
            </#list>
        </div>
        <div class="right-column">
            <div class="product-description">
                <h1><b>${product.name}</b></h1><br>
                <b>Автор: </b>${product.author}<br>
                <b>Цена: </b><br>
                <b>Описание: </b>${product.description}<br>
            </div>
            <b>Издательство: </b>${product.publicationHouse}<br>
            <b>Год публикации: </b>${product.yearOfPublication}<br>
            <b>Количество страниц: </b>${product.pages}<br>
            <b>Обложка: </b>${product.cover}<br>
            <b>Вес: </b>${product.weight}<br>
            <b>Возрастное ограничение: </b>${product.ageRestriction}<br>
<#--            <b>Продавец: </b> <a href="/user/${product.user.id}">${product.user.name}</a><br>-->
            <hr>
            <form action="/AddProductToCart" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <input type="hidden" name="product_id" value="${product.id}">
                <button class="card_add">В корзину</button>
            </form>
        </div>
    </div>
</main>
</body>
</html>
