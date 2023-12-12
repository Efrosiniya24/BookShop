<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/css/globals.css">
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
                <li><a href="/user/${user.id}" >Корзина</a></li>
            </#if>
        </ul>
    </div>
</header>

<main>
    <h1>BOOKTREE</h1>
    <hr>
    <#if user.email??>
        <h3>Имя пользовтеля: <i>${user.name}</i></h3>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Выйти">
        </form>
        <#if user.isAdmin()>
            <a href="/admin">Панель администратора</a>
        </#if>
    <#else>
        <a href="/login">Войти</a>
    </#if>
    <form action="/product/allProducts" method="get">
        <h1 style="text-align: center">Поиск товаров</h1>
        <hr>
        Поиск по названию книги: <input type="text" name="name"><br>
        //<input type="hidden" name="redirect-to" value="/product/id">
        <input type="submit" value="Поиск"/>
    </form>
    <#if user.email ??>
    <hr>
    <#if user.isAdmin()>
    <h3>Создать новый товар</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Название: <input type="text" name="name"/><br><br>
        Первая фотография: <input type="file" name="file1"/><br><br>
        Вторая фотография: <input type="file" name="file2"/><br><br>
        Третья фотография: <input type="file" name="file3"/><br><br>
        Автор: <input type="text" name="author"/><br><br>
        Цена: <input type="number" name="price" step="any"/><br><br>
        Описание: <input type="text" name="description"/><br><br>
        Издательство: <input type="text" name="PublicationHouse"/><br><br>
        Год публикации: <input type="number" name="yearOfPublication"/><br><br>
        Количество страниц: <input type="number" name="pages"/><br><br>
        Обложка:<input type="text" name="cover"/><br><br>
        Вес: <input type="number" name="weight"/><br><br>
        Возрастное ограничение:<input type="text" name="AgeRestriction"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Добавить товар"/>
        </#if>
        </#if>
    </form>
</main>
<footer class="footer-container">
</footer>
</body>
</html>