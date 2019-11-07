<%--
  Created by IntelliJ IDEA.
  User: liyuchen
  Date: 2018/12/9
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table width="100%" border="1">
    <form method="post" action="user_update.action">
<tr>
    <td>id</td>
    <td><input type="text" name="user.id" id="id"value=${user.id}></td>


</tr>

    <tr>
        <td>username</td>
        <td><input type="text" name="user.username" id="username"value=${user.username}></td>
    </tr>
        <tr>
            <td>password</td>
            <td><input type="text" name="user.password" id="password"value=${user.password}></td>
        </tr>
        <tr>
            <td>
      <input type="submit" value="确定"/>
            </td>
        </tr>
    </form>
</table>
</body>
</html>
