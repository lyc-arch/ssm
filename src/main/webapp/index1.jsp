<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="com.opensymphony.xwork2.ActionContext" %><%--
  Created by IntelliJ IDEA.
  User: liyuchen
  Date: 2018/11/30
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<script type="text/javascript">
    function del(){
        if(confirm("Are you sure?")){
            return true;
        }
        return false;
    }
</script>
<body>


<table width="100%" border="1">
<form method="post" action="user_selectByName">
    <tr>
        <input type="text" name="user.select"/>
        <input type="radio" name="user.condition" value="username" />
        姓名</label>
        <label>
            <input type="radio" name="st.condition" value="password" />
            密码</label>

        <input type="submit" value="确定"/>
    </tr>


    <tr>
        <td>id</td>
        <td>name</td>
        <td>password</td>
        <td>操作</td>
    </tr>
        <s:iterator   value="li" var="p"  >
    <tr>

        <td>${p.id}</td>
        <td>${p.username}</td>
        <td>${p.password}</td>
        <td >
            <s:a href="user_delete.action?user.id=%{#p.id}" onclick="return del()">Delete</s:a>
            <s:a href="user_findById.action?user.id=%{#p.id}" >修改</s:a>
        </td>

    </tr>
    </s:iterator>
</form>
</table>


</body>
</html>
