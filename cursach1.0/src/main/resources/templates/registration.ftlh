<#--<!DOCTYPE html>-->
<#--<html lang="ru">-->
<#--<head>-->
<#--    <meta charset="UTF-8">-->
<#--    <meta name="viewport"-->
<#--          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">-->
<#--    <meta http-equiv="X-UA-Compatible" content="ie=edge">-->
<#--&lt;#&ndash;    <link rel="shortcut icon" href="Forest Fox by bongonation.jpg" type="image/x-icon">&ndash;&gt;-->
<#--    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">-->
<#--    <title>BOOKTREE</title>-->
<#--</head>-->
<#--<body>-->
<#--<main>-->
<#--<h1>BOOKTREE</h1><hr>-->
<#--<h4>Регистрация</h4>-->
<#--<form action="/registration" method="post">-->
<#--    Имя пользователя: <input type ="text" name="name"><br><br>-->
<#--    Эл.почта: <input type ="email" name="email"><br><br>-->
<#--    Номер телефона: <input type ="text" name="phoneNumber"><br><br>-->
<#--    Пароль: <input type ="password" name="password"><br><br>-->
<#--    <input type ="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type ="submit" value="Зарегистрироваться"/>-->
<#--</form>-->
<#--<#if errorMessage??>-->
<#--    <h2 style="color: red">${errorMessage}</h2>-->
<#--</#if>-->
<#--</main>-->
<#--<footer></footer>-->
<#--</body>-->
<#--</html>-->

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
                <button class="hidden"><a class="enter" href="/login">Зарегистрироваться</a></button>
            </div>
        </div>
    </div>
</div>
<script src ="/static/css/script.js"></script>
</body>
</html>
