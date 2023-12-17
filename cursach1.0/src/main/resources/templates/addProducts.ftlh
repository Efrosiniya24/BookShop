<!DOCTYPE html>
<html>
<head>
    <title>BOOKTREE</title>
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <link rel="stylesheet" href="/static/css/admin.css">
    <link type="text/css" rel="stylesheet" href="/static/css/styles.css"/>
    <link type="text/css" rel="stylesheet" href="/static/css/addProducts.css"/>
</head>
<body>
<header>
    <div class="container">
        <img src="/static/photo/tree2.png" height="50px">
        <h3>BOOKTREE</h3>
        <ul>
            <li><a href="/admin">Пользователи</a></li>
            <li><a href="/product/allProducts">Все товары</a></li>
            <li><a href="/addProducts">Добавление товаров</a></li>
        </ul>
    </div>
</header>
<hr>
<main>
    <p><b>Создать новый товар</b></p>
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
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Добавить товар"/>
    </form>
</main>
</body>
</html>