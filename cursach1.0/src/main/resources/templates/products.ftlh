<!DOCTYPE html>
<html>
<head>
    <header>
        <div>
            <nav>
                <ul>
                    <li><a href="/">Главная</a></li> <li><a href="/about">О нас</a></li>
                    <li><a href="/contacts">Контакты</a></li>
                    <li><a href="/product/allProducts">Все товары</a></li>
                </ul>
            </nav>
        </div>
    </header>
<#--  <meta charset="utf-8">-->
<#--    //<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">-->
  <link rel="stylesheet" href="/static/css/style.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">

    <title>BOOK SHOP</title>
</head>
<body>
<h1>BOOK SHOP | <a href="/login">Войти</a> </h1><hr>
<form action="/logout" method="post">
    <input type ="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Выйти">
</form>

<#--<h4>Все товары</h4>-->
<form action="/" method="get">
    <h1 style="text-align: center">Поиск товаров</h1><hr>
    Поиск по названию книги: <input type="text" name = "name"><br>

    <input type="submit" value = "Поиск"/>
</form>
<#--<#list products as product>-->
<#--    <div>-->
<#--        <p><b>${product.name} </b>${product.price} руб.| <a href="/product/${product.id}">Подробнее...</a> </p>-->
<#--    </div>-->
<#--<#else>-->
<#--    <h3>Товаров нет</h3>-->
<#--</#list>-->

<hr>
<h3>Создать новый товар</h3>
<form action = "/product/create" method="post" enctype="multipart/form-data">
    Название: <input type = "text"  name = "name"/><br><br>
    Первая фотография: <input type = "file"  name = "file1"/><br><br>
    Вторая фотография: <input type = "file"  name = "file2"/><br><br>
    Третья фотография: <input type = "file"  name = "file3"/><br><br>
    Автор: <input type = "text" name = "author"/><br><br>
    Цена: <input type ="number" name = "price" step="any"/><br><br>
    Описание: <input type = "text" name = "description"/><br><br>
    Издательство: <input type = "text" name = "PublicationHouse"/><br><br>
    Год публикации: <input type = "number" name = "yearOfPublication"/><br><br>
    Количество страниц: <input type="number" name="pages"/><br><br>
    Обложка:<input type = "text" name = "cover"/><br><br>
    Вес: <input type="number" name="weight"/><br><br>
    Возрастное ограничение:<input type = "text" name = "AgeRestriction"/><br><br>

    <input type="submit" value = "Добавить товар"/>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>
</form>
</body>
</html>