<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <link type="text/css" rel="stylesheet" href="/static/css/styles.css"/>
    <link type="text/css" rel="stylesheet" href="/static/css/adminInfo.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <title>BOOKTREE</title>
</head>
<body>
<header>
    <div class="container">
        <img src="/static/photo/tree2.png" height="50px">
        <h3>BOOKTREE</h3>
        <ul>
            <li><a href="/">Главная</a></li>
            <li><a href="/product/allProducts">Все товары</a></li>
            <li><a href="/cart">Корзина</a></li>
<#--            <li><a href="/user/${user.id}">Корзина</a></li>-->
        </ul>
    </div>
</header>
<div class="containerInfo">
    <h1>${user.name}</h1>
    <p><b>Номер телефона: </b> ${user.phoneNumber}</p><br>
    <p><b>Email: </b> ${user.email}</p><br>
</div>
<div class="products">
    <p><b>Купленные товары</b></p>
</div>

<#list products as product>
    <div>
        <p><b>${product.name}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Товаров нет</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>