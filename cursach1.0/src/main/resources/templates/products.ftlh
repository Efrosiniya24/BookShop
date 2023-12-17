<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <#--    <meta http-equiv="X-UA-Compatible" content="ie=edge">-->
    <#--    <link rel="stylesheet" href="/static/css/styles.css">-->
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.0.0/fonts/remixicon.css"
          rel="stylesheet"/>

    <link rel="stylesheet" href="/static/css/products.css">
    <link rel="stylesheet"
          href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/
    css2?family=Permanent+Marker&family=Poppins:wght@300;
    400;500;600;700;800;900&display=swap" rel="stylesheet">
    <title>BOOKTREE</title>
</head>
<body>
<header>
    <img src="/static/photo/tree2.png" height="50px">
    <a href="/" class ="logo">BOOKTREE</a>

    <ul class="navlist">
        <li><a href="/">Главная</a></li>
        <li><a href="/product/allProducts">Все товары</a></li>
        <li><a href="/shoppingCart">Корзина</a></li>
    </ul>
    <div class="bx bx-menu" id="menu-icon"></div>
</header>

<section class="hero">
    <div class="hero-text">
        <h5>#Книги</h5>
        <h4>Книжный онлайн-магазин</h4>
        <h1>BOOKTREE</h1>
        <p>BOOKTREE - это ваш проводник в мир литературы.<br> Мы знаем, что чтение - это увлекательное путешествие, и мы хотим помочь вам открыть для себя новые горизонты.</p>
        <a href="/product/allProducts">Каталог</a>
        <a href="/login" class="ctaa"><i class ="ri-play-fill"></i>Войти</a>
    </div>

    <div class="hero-img">
        <img src="/static/photo/treeProducts.png">
    </div>
</section>



</body>
</html>


<#--<link type="text/css" rel="stylesheet" href="/static/css/styles.css"/>-->
<#--<link type="text/css" rel="stylesheet" href="/static/css/cards.css"/>-->
<#--<header>-->
<#--    <div class="container">-->
<#--        <img src="/static/photo/tree2.png" height="50px">-->
<#--        <h3>BOOKTREE</h3>-->
<#--        <ul>-->
<#--            <#if user.isUser()>-->
<#--            <li><a href="/">Главная</a></li>-->
<#--            <li><a href="/about">О нас</a></li>-->
<#--            <li><a href="/contacts">Контакты</a></li>-->
<#--            <li><a href="/product/allProducts">Все товары</a></li>-->
<#--            <li><a href="/shoppingCart">Корзина</a></li>-->

<#--&lt;#&ndash;                <li><a href="/user/${user.id}">Корзина</a></li>&ndash;&gt;-->
<#--            </#if>-->

<#--        </ul>-->
<#--    </div>-->
<#--</header>-->

<#--<main>-->
<#--    <hr>-->
<#--    <#if user.email??>-->
<#--        <h3>Имя пользовтеля: <i>${user.name}</i></h3>-->
<#--        <form action="/logout" method="post">-->
<#--            <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--            <input type="submit" value="Выйти">-->
<#--        </form>-->
<#--&lt;#&ndash;        <#if user.isAdmin()>&ndash;&gt;-->

<#--        <a  class="enter" href="/login">Войти</a>-->
<#--    </#if>-->
<#--    <form action="/product/allProducts" method="get">-->
<#--        <h1 style="text-align: center">Поиск товаров</h1>-->
<#--        <hr>-->
<#--        Поиск по названию книги: <input type="text" name="name"><br>-->
<#--        <input type="submit" value="Поиск"/>-->
<#--    </form>-->
<#--    <div class="cards">-->
<#--        <#list products as product>-->
<#--            <div class="card">-->
<#--                <div class="card_top">-->
<#--                    <a href="/product/${product.id}" class="card_image">-->
<#--                        <img class="my-image" src="/images/${product.previewImageId}" alt="">-->
<#--                        <p><b>${product.name}</b> ${product.price} руб. | <a-->
<#--                                    href="/product/${product.id}">Подробнее...</a></p>-->
<#--                    </a>-->
<#--                </div>-->
<#--                <div class="card_bottom">-->
<#--                    <div class="card_prices">-->
<#--                        <div class="card_price card_price-common">${product.price} руб.</div>-->
<#--                    </div>-->
<#--                    <a href="/product/${product.id}" class="card_title">-->
<#--                        ${product.name}-->
<#--                    </a>-->

<#--                    <form action="/AddToCart" method="post" enctype="application/x-www-form-urlencoded">-->
<#--                        &lt;#&ndash;                        <form action="/AddToCart" method="post" >&ndash;&gt;-->
<#--                        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                        <input type="hidden" name="nameProduct" value="${product.name}">-->
<#--                        &lt;#&ndash;                        <input type="hidden" name="user_id" value="${user.id}">&ndash;&gt;-->
<#--                        <input type="hidden" name="cost" value="${product.price}">-->
<#--                        <input class="card_add" type="submit" value="В корзину"/>-->
<#--                        &lt;#&ndash;                        <button class="card_add" type="submit" value="В корзину">В корзину</button>&ndash;&gt;-->
<#--                    </form>-->
<#--                </div>-->
<#--            </div>-->
<#--        <#else>-->
<#--            <h3>Товаров нет</h3>-->
<#--        </#list>-->
<#--    </div>-->
<#--</main>-->
<#--<footer class="footer-container">-->
<#--</footer>-->
<#--</body>-->
<#--</html>-->