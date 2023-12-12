<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <#--    <meta name="viewport"-->
<#--          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">-->
<#--    <meta http-equiv="X-UA-Compatible" content="ie=edge">-->
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="/static/css/login.css">
    <title>Login</title>
</head>
<body>

<link type="text/css" rel="stylesheet" href="/static/css/login.css"/>
<div class = "containerLogin" id ="containerLogin">
    <div class = "form-container sign-up">
        <form action="/registration" method="post">
            <h1>Зарегистрироваться</h1>
            <input type="text" name="name" placeholder="Имя">
            <input type="email" name="email" placeholder="email">
            <input type="text" name="phoneNumber" placeholder="Номер телефона">
            <input type="text" name="password" placeholder="Пароль">
            <input type ="hidden" name="_csrf" value="${_csrf.token}">
<#--            <input type ="submit" value="Зарегистрироваться"/>-->
            <button>Зарегистрироваться</button>
        </form>
<#--        <#if errorMessage??>-->
<#--            <h2 style="color: red">${errorMessage}</h2>-->
<#--        </#if>-->
    </div>
    <div class = "form-container sign-in">
        <form action="/login" method="post">
            <h1>Войти</h1>
            <input type="email" name="username" placeholder="email">
            <input type="password" name="password" placeholder="Пароль">
            <input type ="hidden" name="_csrf" value="${_csrf.token}">
<#--            <input type ="submit" value="Вход"/>-->
            <button>Войти</button>
        </form>
    </div>
    <div class = "toggle-container">
        <div class = "toggle">
            <div class="toggle-panel toggle-left">
                <h1>Добро пожаловать!</h1>
                <p>Введите Ваши персональные данные для авторизации</p>
           <button class = "hidden" id = "login">Войти</button>
            </div>
            <div class="toggle-panel toggle-right">
                <h1>Добро пожаловать!</h1>
                <p>Введите Ваши персональные данные для авторизации</p>
                <button class = "hidden" id = "register">Зарегистрироваться</button>
            </div>
        </div>
    </div>
</div>
<script src ="/static/css/script.js"></script>
</body>
</html>
