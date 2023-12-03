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
        </ul>
    </div>
</header>
<main>
    <h1>BOOK SHOP</h1>
    <hr>
    <h4>Все товары</h4>
    <form action="/" method="get">
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
</main>
<footer></footer>
</body>
</html>


<#--    <a href="#" class="card__image">-->
<#--        <img-->
<#--                src="./image/iphone-14-pro-max-gold.png"-->
<#--                alt="Apple IPhone 14 PRO Max Gold"-->
<#--        />-->
<#--    </a>-->
<#--    <!-- Скидка на товар &ndash;&gt;-->
<#--    <div class="card__label">-10%</div>-->
<#--</div>-->
<!-- Нижняя часть -->
<#--<div class="card__bottom">-->
<#--    <!-- Цены на товар (с учетом скидки и без)&ndash;&gt;-->
<#--    <div class="card__prices">-->
<#--        <div class="card__price card__price--discount">135 000</div>-->
<#--        <div class="card__price card__price--common">150 000</div>-->
<#--    </div>-->
<#--    <!-- Ссылка-название товара &ndash;&gt;-->
<#--    <a href="#" class="card__title">-->
<#--        Смартфон Apple IPhone 14 Pro Max 256Gb, золотой-->
<#--    </a>-->
<#--    <!-- Кнопка добавить в корзину &ndash;&gt;-->
<#--    <button class="card__add">В корзину</button>-->
<#--</div>-->
<#--</div>-->