<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="/static/css/login.css">
    <title>Registration</title>
</head>
<body>

<link type="text/css" rel="stylesheet" href="/static/css/login.css"/>
<div class = "containerLogin" id ="containerLogin">
    <div class = "form-container sign-in">
        <form action="/registration" method="post">
            <h1>Зарегистрироваться</h1>
            <input type="text" name="name" placeholder="Имя">
            <input type="email" name="email" placeholder="email">
            <input type="text" name="phoneNumber" placeholder="Номер телефона">
            <input type="text" name="password" placeholder="Пароль">
            <input type ="hidden" name="_csrf" value="${_csrf.token}">
            <button>Зарегистрироваться</button>
        </form>
    </div>
    <div class = "toggle-container">
        <div class = "toggle">
            <div class="toggle-panel toggle-right">
                <h1>Добро пожаловать!</h1>
                <p>Введите Ваши персональные данные для авторизации</p>
                <button class="hidden"><a class="enter" href="/login">Войти</a></button>
            </div>
        </div>
    </div>
</div>
<script src ="/static/css/script.js"></script>
</body>
</html>
