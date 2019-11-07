<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="com.opensymphony.xwork2.ActionContext" %>
<%--
  Created by IntelliJ IDEA.
  User: liyuchen
  Date: 2018/12/10
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table width="100%" border="1">


        <tr>
            <td>id</td>
            <td>name</td>
            <td>password</td>

        </tr>
        <s:iterator   value="li" var="p"  >
            <tr>

                <td>${p.id}</td>
                <td>${p.username}</td>
                <td>${p.password}</td>

            </tr>
        </s:iterator>
</table>
</body>
</html>
