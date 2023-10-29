<!DOCTYPE html>
<html>
<head>
    <title>BOOK SHOP</title>
</head>
<body>
<h1>BOOK SHOP</h1><hr>
<h4>Все товары</h4>
<#list products as product>
    <div>
        <p><b>${product.name} </b>${product.price} руб.| <a href="/product/${product.id}">Подробнее...</a> </p>
    </div>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action = "/product/create" method="post">
    Название: <input type = "text"  name = "name"/><br><br>
    Автор: <input type = "text" name = "author"/><br><br>
    Цена: <input type ="number" name = "price"/><br><br>
    Описание: <input type = "text" name = "description"/><br><br>
    Издательство: <input type = "text" name = "PublicationHouse"/><br><br>
    Год публикации: <input type = "number" name = "yearOfPublication"/><br><br>
    Количество страниц: <input type="number" name="pages"/><br><br>
    Обложка:<input type = "text" name = "description"/><br><br>
    Вес: <input type="number" name="weight"/><br><br>
    Возрастное ограничение:<input type = "text" name = "description"/><br><br>
    <input type="submit" value = "Добавить товар"/>

</form>
</body>
</html>
