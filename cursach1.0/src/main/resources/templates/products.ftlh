<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
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
        <li><a href="/cart">Корзина</a></li>
        <li><a href="/profile">Профиль</a></li>
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
        <#if !user.isAdmin() && !user.isUser()>
            <a href="/login" class="ctaa"><i class ="ri-play-fill"></i>Войти</a>
            <#else >
                <form action="/logout" method="post" class="ctaa">
                    <input  type="hidden" name="_csrf" value="${_csrf.token}">
                    <input  type="submit" value="Выйти" >
                </form>
        </#if>
    </div>

    <div class="hero-img">
        <img src="/static/photo/treeProducts.png">
    </div>
</section>
</body>
</html>
