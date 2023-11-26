<!DOCTYPE html>
<html xmlns:security="/resources/**" access="permitAll">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/css/globals.css">
    <link rel="stylesheet" href="/static/css/styles.css">
    <link rel="icon" type="image/x-icon" href="Forest.ico">
<#--    <link type="text/css" rel="stylesheet" href="/cursach1.0/src/main/resources/static/css/styles.css" />-->
    <title>BOOKTREE</title>
</head>
<body>
<link type="text/css" rel="stylesheet" href="/cursach1.0/src/main/resources/static/css/styles.css" />
<header>
    <div class="container">
        <h3>BOOKTREE</h3>
        <ul>
            <li><a href="/">Главная</a></li>
            <li><a href="/about">О нас</a></li>
            <li><a href="/contacts">Контакты</a></li>
            <li><a href="/product/allProducts">Все товары</a></li>
        </ul>
    </div>
    <img src="Forest.ico">
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
    <#--<h4>Все товары</h4>-->
    <form action="/" method="get">
        <h1 style="text-align: center">Поиск товаров</h1>
        <hr>
        Поиск по названию книги: <input type="text" name="name"><br>

        <input type="submit" value="Поиск"/>
    </form>
    <#--<#list products as product>-->
    <#--    <div>-->
    <#--        <p><b>${product.name} </b>${product.price} руб.| <a href="/product/${product.id}">Подробнее...</a> </p>-->
    <#--    </div>-->
    <#--<#else>-->
    <#--    <h3>Товаров нет</h3>-->
    <#--</#list>-->
    <#if user.email ??>
    <hr>
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

    </form>
</main>
<footer></footer>
</body>
</html>