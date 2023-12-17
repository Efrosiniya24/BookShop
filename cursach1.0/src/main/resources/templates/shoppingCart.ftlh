<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <meta charset="UTF-8">-->
<#--    <meta name="viewport"-->
<#--          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">-->
<#--    <meta http-equiv="X-UA-Compatible" content="ie=edge">-->
<#--    <link rel="stylesheet" href="/static/css/styles.css">-->
<#--    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<#--    <title>BOOKTREE</title>-->
<#--</head>-->
<#--<body>-->
<#--<link type="text/css" rel="stylesheet" href="/static/css/styles.css"/>-->
<#--<header>-->
<#--    <div class="container">-->
<#--        <img src="/static/photo/tree2.png" height="50px">-->
<#--        <h3>BOOKTREE</h3>-->
<#--        <ul>-->
<#--            <li><a href="/">Главная</a></li>-->
<#--            <li><a href="/about">О нас</a></li>-->
<#--            <li><a href="/contacts">Контакты</a></li>-->
<#--            <li><a href="/product/allProducts">Все товары</a></li>-->
<#--&lt;#&ndash;            <#if user.isUser()>&ndash;&gt;-->
<#--&lt;#&ndash;                <li><a href="/user/${user.id}">Корзина</a></li>&ndash;&gt;-->
<#--&lt;#&ndash;            </#if>&ndash;&gt;-->
<#--        </ul>-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/css/3.css">
<header data-bs-theme="dark">
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/products">Главная страница</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/">Готовые букеты</a>
                    </li>
                    <li class="nav-item">

                        <a class="nav-link active" aria-current="page" href="/allProducts">Собрать букет</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/shoppingCart">Корзина </a>
                    </li>
                    <li class="nav-item1">
                        <a class="nav-link active" aria-current="page" href="/">Профиль </a>
                    </li>
                    <li class="nav-item1">
                        <a class="nav-link active" aria-current="page" href="/admin">Профиль админа </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header><br>
    </div>
</header>
<#--<div class="columns">-->
<main>
<#--    <div class="shopping-cart">-->
<#--        <div class="title">-->
<#--            Корзина-->
<#--        </div>-->
<#--        <#list products as product>-->
<#--            <div class="item">-->
<#--                <div class="buttons">-->
<#--                    <span class="delete-btn"></span>-->
<#--                    <span class="like-btn"></span>-->
<#--                </div>-->
<#--                <div class="image">-->
<#--                    <img class="my-image" src="/images/${product.previewImageId}" alt="">-->
<#--                </div>-->
<#--                <div class="description">-->
<#--                    <span>${product.name}</span>-->
<#--                    <span>${product.publicationHouse}</span>-->
<#--                </div>-->
<#--                <div class="quantity">-->
<#--                    <button class="plus-btn" type="button" name="button">-->
<#--                        <img src="/static/photo/add.png" alt=""/>-->
<#--                    </button>-->
<#--                    <input type="text" name="name" value="1">-->
<#--                    <button class="minus-btn" type="button" name="button">-->
<#--                        <img src="/static/photo/minus.png" alt=""/>-->
<#--                    </button>-->
<#--                </div>-->
<#--                <div class="total-price">${product.price}</div>-->
<#--            </div>-->
<#--        </#list>-->
<#--&lt;#&ndash;        <div class="total-price">${products.price}</div>&ndash;&gt;-->
<#--    </div>-->
    <ul>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <#list cart as cart>
                <li>
                    <div class="col">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <p class="card-text">${cart.nameProduct}</p>
                                <strong>Цена товара:</strong> <span>${cart.cost}</span><br>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <form action="/cartDelete" method="post">
                                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                                            <input type="hidden" name="id" value="${cart.id}"><br>
                                            <input type="submit" class="btn btn-sm btn-outline-secondary" value="Удалить">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </#list>
        </div>
    </ul>
</main>

</body>
</html>
