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
<link type="text/css" rel="stylesheet" href="/static/css/styles.css"/>
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
<#--<div class="columns">-->
<main>
    <div class="shopping-cart">
        <div class="title">
            Корзина
        </div>
        <#list products as product>
            <div class="item">
                <div class="buttons">
                    <span class="delete-btn"></span>
                    <span class="like-btn"></span>
                </div>
                <div class="image">
                    <img class="my-image" src="/images/${product.previewImageId}" alt="">
                </div>
                <div class="description">
                    <span>${product.name}</span>
                    <span>${product.publicationHouse}</span>
                </div>
                <div class="quantity">
                    <button class="plus-btn" type="button" name="button">
                        <img src="/static/photo/add.png" alt=""/>
                    </button>
                    <input type="text" name="name" value="1">
                    <button class="minus-btn" type="button" name="button">
                        <img src="/static/photo/minus.png" alt=""/>
                    </button>
                </div>
                <div class="total-price">${product.price}</div>
            </div>
        </#list>
<#--        <div class="total-price">${products.price}</div>-->
    </div>
</main>

</body>
</html>
