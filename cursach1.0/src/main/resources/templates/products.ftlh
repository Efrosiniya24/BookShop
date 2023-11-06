<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <#--    <link rel="shortcut icon" href="cursach1.0/src/main/resources/static/icons8-дерево-64.png" type="image/png">-->

    <#--  <meta charset="utf-8">-->
    <#--    //<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">-->
    <link rel="stylesheet" href="/static/css/style.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">

    <title>BOOK SHOP</title>
</head>
<body>

<header>
    <div>
        <nav>
            <ul>
                <li><a href="/">Главная</a></li>
                <li><a href="/about">О нас</a></li>
                <li><a href="/contacts">Контакты</a></li>
                <li><a href="/product/allProducts">Все товары</a></li>
            </ul>
        </nav>
    </div>
</header>

<main>
    <h1>BOOK SHOP</h1><hr>
    <#if user.email??>
        <h3>Имя пользовтеля: <i>${user.name}</i></h3>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Выйти">
        </form>
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