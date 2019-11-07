<%--
  Created by IntelliJ IDEA.
  User: liyuchen
  Date: 2018/11/30
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8" />
    <title>首页</title>
    <link rel="stylesheet" href="css/page.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/index.js" ></script>
</head>

<body>
<div class="left">
    <div class="bigTitle">商圈后台管理系统</div>
    <h3>${sessionScope.user.username}   </h3>
    <div class="lines">
        <div onclick="pageClick(this)" class="active"><img src="img/icon-1.png" />业务人员管理</div>
        <div onclick="pageClick(this)"><img src="img/icon-2.png" />代理商品管理</div>
        <div onclick="pageClick(this)"><img src="img/icon-3.png" />个人信息管理</div>
        <div onclick="pageClick(this)"><img src="img/icon-4.png" />收货地址管理</div>
       <a href="user_list.action">列表</a>
    </div>
</div>
<div class="top">
    <div class="leftTiyle" id="flTitle">业务人员管理</div>
    <div class="thisUser">当前用户：小UU</div>
</div>
<div class="content">HELLO WORD</div>

<div style="text-align:center;">
    <p>更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>

</body>

</html>
