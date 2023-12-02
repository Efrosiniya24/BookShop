<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">

    <title>BOOKTREE</title>
</head>
<body>
<main>
<h1>BOOKTREE</h1><hr>
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
    <b>Автор: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
<hr>
<form action = "/product/delete/${product.id}" method="post">
    <input type="submit" value = "Удалить товар"/>

</form>
</main>
<footer></footer>
</body>
</html>