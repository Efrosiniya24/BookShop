<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<#--    <link rel="shortcut icon" href="Forest Fox by bongonation.jpg" type="image/x-icon">-->
    <link rel="icon" type="image/x-icon" href="Forest.ico">
    <title>BOOKTREE</title>
</head>
<body>
<main>
<h1>BOOKTREE</h1><hr>
<h4>Регистрация</h4>
<form action="/registration" method="post">
    Имя пользователя: <input type ="text" name="name"><br><br>
    Эл.почта: <input type ="email" name="email"><br><br>
    Номер телефона: <input type ="text" name="phoneNumber"><br><br>
    Пароль: <input type ="password" name="password"><br><br>
    <input type ="hidden" name="_csrf" value="${_csrf.token}">
    <input type ="submit" value="Зарегистрироваться"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</main>
<footer></footer>
</body>
</html>