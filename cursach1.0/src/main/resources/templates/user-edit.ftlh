<!DOCTYPE html>
<html>
<head>
    <title>BOOKTREE</title>
    <link rel="icon" type="image/x-icon" href="/static/photo/tree1.ico">
</head>
<body>
<h1>BOOKTREE</h1>
<hr>
<h3>Редактирование пользователя ${user.name}</h3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}
            </label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Сохранить</button>
</form>
</body>
</html>
