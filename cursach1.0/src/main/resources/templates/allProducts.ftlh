<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/css/styles.css">
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <title>BOOK SHOP</title>
    <style>
        .search-container {
            text-align: center;
            margin-top: 20px;
        }

        .search-input {
            margin-bottom: 10px;
        }

        .search-submit {
            display: block;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<link type="text/css" rel="stylesheet" href="/static/css/styles.css"/>
<link type="text/css" rel="stylesheet" href="/static/css/cards.css"/>
<header>
    <div class="container">
        <img src="/static/photo/tree2.png" height="50px">
        <a href="/" class="logo">BOOKTREE</a>
        <ul>
            <li><a href="/">Главная</a></li>
            <li><a href="/product/allProducts">Все товары</a></li>
            <#if user?has_content && user.isUser()>
                <li><a href="/profile">Профиль</a></li>
                <li><a href="/cart">Корзина</a></li>
            <#else>
            </#if>
        </ul>
    </div>
</header>
<main>
    <div class="search-container">
        <form action="#" method="get">
            <input class="search-input" type="text" name="name">
            <input class="search-submit" type="submit" value="Поиск">
        </form>
    </div>
    <form action="/product/allProducts" method="get">
        <h1 style="text-align: center">Все товары</h1>
        <hr>
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
                        <a href="/product/${product.id}" class="card_title">${product.name}</a>
                    </div>
                    <#if user?has_content && user.isUser()>
                        <form action="/AddProductToCart" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <input type="hidden" name="product_id" value="${product.id}">
                            <button class="card_add">В корзину</button>
                        </form>
                    </#if>
                    <#if  user?has_content && user.isAdmin()>
                        <form action="/product/delete" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <input type="hidden" name="product_id" value="${product.id}">
                            <button  type="submit" class="card_add">Удалить товар</button>
                        </form>
                    </#if>
                </div>
            </div>
        <#else>
            <h3>Товаров нет</h3>
        </#list>
    </div>
</main>
</body>
</html>