<!DOCTYPE html>
<html>
<head>
    <title>BOOK SHOP</title>
</head>
<body>
<h1>BOOK SHOP</h1><hr>
<h4>Все товары</h4>
<form action="/" method="get">
    Поиск по названию книги: <input type="text" name = "name"><br>
    <input type="submit" value = "Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.name} </b>${product.price} руб.| <a href="/product/${product.id}">Подробнее...</a> </p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>

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

</form>
</body>
</html>
