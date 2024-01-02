<!DOCTYPE html>
<html>
<head>
    <title>BOOKTREE</title>
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <link rel="stylesheet" href="/static/css/admin.css">
    <link type="text/css" rel="stylesheet" href="/static/css/styles.css"/>

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
                    <form action="/admin/${user.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">

                    <td><b><a href="/admin/${user.id}">Подробная информация</a></b></td>
                    </form>
                </tr>
            <#else>
                <h3>Пользователей нет</h3>
            </#list>
            </tbody>
        </table>
    </section>
</main>
</body>
</html>