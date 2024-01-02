<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/css/styles.css">
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <title>BOOKTREE</title>
    <link rel="stylesheet" type="text/css" href="/static/css/shoppingCarts.css">
    <#--    <link rel="stylesheet" type="text/css"-->
    <#--          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">-->
</head>
<body>
<div class="container">
    <img src="/static/photo/tree2.png" height="50px">
    <a href="/" class="logo">BOOKTREE</a>
    <ul>
        <li><a href="/">Главная</a></li>
        <li><a href="/product/allProducts">Все товары</a></li>
        <li><a href="/cart">Корзина</a></li>
        <li><a href="/profile">Профиль</a></li>
        <#--        <li><a href="/user/${user.id}">Корзина</a></li>-->
    </ul>
</div>
<main>
    <div class="containerCart">
        <h1>Корзина</h1>
        <div class="cart">
            <div class="products">
                <#list products as product>
                    <div class="product">
                        <img src="/images/${product.previewImageId}">
                        <div class="product-info">
                            <h3 class="product-name">${product.name}</h3>
                            <h4 class="product-name">${product.author}</h4>
                            <h5 class="product-price">${product.price} р.</h5>
                            <#--                    <p class="product-quantity">Qnt: <input value="1" name="">-->

<#--                                <i class="fa fa-trash" aria-hidden="true"></i>-->
<#--                                <span class="remove">Удалить</span>-->

                            <form action="/deleteProductFromCart" method="post"  class="product-remove">
                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                <input type="hidden" name="product_id" value="${product.id}">
                                <input  type="submit" value="Удалить" >
                            </form>


                        </div>
                    </div>
                </#list>
            </div>
            <div class="cart-total">
                <p>
                    <span>Общая стоимость</span>
                    <#if cart??>
                    <span> ${cart.totalPrice}</span>
                    <#else>
                    <span>  0</span>
                    </#if>
                </p>
                <p>
                    <span>Количество товаров</span>
                    <span>${numberItems}</span>
                </p>
                <a href="#">Оформить заказ</a>
            </div>
        </div>
    </div>
</main>
</body>
</html>