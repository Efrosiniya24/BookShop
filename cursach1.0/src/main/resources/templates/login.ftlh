<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-icon" href="Forest.ico">
    <title>BOOKTREE</title>
</head>
<body>
<main>
<h1>BOOKTREE</h1><hr>
<h4>Авторизация</h4>
<form action="/login" method="post">
    Эл.почта: <input type ="email" name="username"><br><br>
    Пароль: <input type ="password" name="password"><br><br>
    <input type ="hidden" name="_csrf" value="${_csrf.token}">
    <input type ="submit" value="Вход"/>
</form>
<a href="/registration">Зарегистрироваться</a>
</main>
<footer></footer>
</body>
</html>