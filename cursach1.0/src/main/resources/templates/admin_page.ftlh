<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/css/globals.css">
    <link rel="stylesheet" href="/static/css/styles.css">
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <link href= "https://cdn.jsdelivr.net/npm/remixicon@4.0.0/fonts/remixicon.css"
          rel="stylesheet"/>
    <title>BOOKTREE</title>
</head>
<body>
<link type="text/css" rel="stylesheet" href="/static/css/styles.css"/>
<link type="text/css" rel="stylesheet" href="/static/css/cards.css"/>
<header>
    <div class="container">
        <img src="/static/photo/tree2.png" height="50px">
        <h3>BOOKTREE</h3>
        <ul>
            <#if user.isAdmin()>
                <li><a href="/admin">Пользователи</a></li>
                <li><a href="/product/allProducts">Все товары</a></li>
                <li><a href="/addProducts">Добавление товаров</a></li>
            </#if>
        </ul>
    </div>
</header>

<main>
    <hr>
    <#if user.email??>
        <h3>Имя пользовтеля: <i>${user.name}</i></h3>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Выйти">
        </form>
    <#--        <#if user.isAdmin()>-->
        <a href="/admin">Панель администратора</a>
        <main class="table">
            <section class="table__header">
                <h1>Панель администратора</h1>
            </section>
            <section class="table__body">
                <table>
                    <thead>
                    <tr>
                        <th>Email</th>
                        <th>Номер телефона</th>
                        <th>Активность</th>
                        <th>Роль</th>
                        <th>Бан</th>
                        <th>Подробная информация</th>
                        <th>Редактировать</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list users as user>
                        <tr>
                            <td>${user.email}</td>
                            <td>${user.phoneNumber}</td>
                            <td><#if user.active>true<#else>false</#if></td>
                            <td><#list user.roles as role>
                                <#if user.isUser()>
                                <p class="status user">${role}
                                    </#if>
                                    <#if user.isAdmin()>
                                <p class="status admin">${role}
                                    </#if>
                                    </#list>
                                </p>
                            </td>
                            <td>
                                <form action="/admin/user/ban/${user.id}" method="post">
                                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                                    <input type="submit" value="Бан" class="ban-button">
                                </form>
                            </td>
                            <td><b><a href="/admin/user/edit/${user.id}">Редактировние</a></b></td>
                            <#list roles as role>
                                <div>
                                    <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}
                                    </label>
                                </div>
                            </#list>
                            <td><b><a href="/admin/${user.id}">Подробная информация</a></b></td>
                        </tr>
                    <#else>
                        <h3>Пользователей нет</h3>
                    </#list>
                    </tbody>
                </table>
            </section>
        </main>
    <#--        </#if>-->
    <#else>
        <a  class="enter" href="/login">Войти</a>
    </#if>
    <#--    <div class="search-form">-->
    <#--        <form action="/product/allProducts" method="get">-->
    <#--            <hr>-->
    <#--            <input class="search-form__txt" type="text" name="name" align="stretch">-->
    <#--            <button class="search-form_btn"><img class="search-font__image" src="/static/photo/free-icon-search-149309.png" alt="image" height="50px" width="50px"></button>-->
    <#--            <input type="hidden" name="redirect-to" value="/product/id">-->
    <#--            <input type="submit" value="Поиск"/>-->
    <#--        </form>-->
    <#--    </div>-->
    <#if user.email ??>

    </#if>
    <#--        </#if>-->
    </form>
    <form action="/product/allProducts" method="get">
        <h1 style="text-align: center">Поиск товаров</h1>
        <hr>
        Поиск по названию книги: <input type="text" name="name"><br>
        <input type="submit" value="Поиск"/>
    </form>
    <div class="cards">
        <#list products as product>
            <div class="card">
                <div class="card_top">
                    <a href="/product/${product.id}" class="card_image">
                        <img class="my-image" src="/images/${product.previewImageId}" alt="">
                        <p><b>${product.name}</b> ${product.price} руб. | <a
                                    href="/product/${product.id}">Подробнее...</a></p>
                    </a>
                </div>
                <div class="card_bottom">
                    <div class="card_prices">
                        <div class="card_price card_price-common">${product.price} руб.</div>
                    </div>
                    <a href="/product/${product.id}" class="card_title">
                        ${product.name}
                    </a>

                    <form action="/AddToCart" method="post" enctype="application/x-www-form-urlencoded">
                        <#--                        <form action="/AddToCart" method="post" >-->
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="hidden" name="nameProduct" value="${product.name}">
                        <#--                        <input type="hidden" name="user_id" value="${user.id}">-->
                        <input type="hidden" name="cost" value="${product.price}">
                        <input class="card_add" type="submit" value="В корзину"/>
                        <#--                        <button class="card_add" type="submit" value="В корзину">В корзину</button>-->
                    </form>
                </div>
            </div>
        <#else>
            <h3>Товаров нет</h3>
        </#list>
    </div>
</main>
<footer class="footer-container">
</footer>
</body>
</html>