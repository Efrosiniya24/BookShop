<!DOCTYPE html>
<html>
<head>
    <title>BOOK SHOP</title>
</head>
<body>
<h1>BOOK SHOP</h1><hr>
<h4> Подробная информация о товаре</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px" /><br><br>
</#list>
<b>Название: </b>${product.name}<br>
<b>Автор: </b>${product.author}<br>
<b>Цена: </b>${product.price}<br>
<b>Описание: </b>${product.description}<br>
<b>Издательство: </b>${product.publicationHouse}<br>
<b>Год публикации: </b>${product.yearOfPublication}<br>
<b>Количество страниц: </b>${product.pages}<br>
<b>Обложка: </b>${product.cover}<br>
<b>Вес: </b>${product.weight}<br>
<b>Возрастное ограничение: </b>${product.ageRestriction}<br>
<hr>
<form action = "/product/delete/${product.id}" method="post">
    <input type="submit" value = "Удалить товар"/>

</form>
</body>
</html>

