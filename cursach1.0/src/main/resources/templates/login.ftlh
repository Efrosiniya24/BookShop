<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="/static/css/login.css">
    <title>Login</title>
</head>
<body>

<link type="text/css" rel="stylesheet" href="/static/css/login.css"/>
<div class="containerLogin" id="containerLogin">
    <div class="form-container sign-in">
        <form action="/login" method="post">
            <h1>Войти</h1>
            <input type="email" name="username" placeholder="email">
            <input type="password" name="password" placeholder="Пароль">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button>Войти</button>
        </form>
    </div>
    <div class="toggle-container">
        <div class="toggle">
            <div class="toggle-panel toggle-right">
                <h1>Добро пожаловать!</h1>
                <p>Введите Ваши персональные данные для авторизации</p>
                <button class="hidden"><a class="enter" href="/registration">Зарегистрироваться</a></button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
