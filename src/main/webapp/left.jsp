<%--
  Created by IntelliJ IDEA.
  User: liyuchen
  Date: 2018/12/11
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>左侧导航menu</title>
    <link href="css/css.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/sdmenu.js"></script>
    <script type="text/javascript">
        // <![CDATA[
        var myMenu;
        window.onload = function() {
            myMenu = new SDMenu("my_menu");
            myMenu.init();
        };






        // ]]>
    </script>

    <style type=text/css>
        html{ SCROLLBAR-FACE-COLOR: #538ec6; SCROLLBAR-HIGHLIGHT-COLOR: #dce5f0; SCROLLBAR-SHADOW-COLOR: #2c6daa; SCROLLBAR-3DLIGHT-COLOR: #dce5f0; SCROLLBAR-ARROW-COLOR: #2c6daa;  SCROLLBAR-TRACK-COLOR: #dce5f0;  SCROLLBAR-DARKSHADOW-COLOR: #dce5f0; overflow-x:hidden;}
        body{overflow-x:hidden; background:url(images/main/leftbg.jpg) left top repeat-y #f2f0f5; width:194px;}
    </style>
</head>
<body onselectstart="return false;" ondragstart="return false;" oncontextmenu="return false;">
<div id="left-top">

    <div ><a  href="expensesList.jsp"><img src="images/main/member.gif" width="44" height="44" /></a></div>
    <span>用户：${sessionScope.user.username}<br>角色：：${sessionScope.user.usertype}</span>
</div>
<div style="float: left" id="my_menu" class="sdmenu">
    <div class="collapsed">

        <span>个人中心</span>
        <a href="user_makemessage.action" target="mainFrame" onFocus="this.blur()">个人信息修改</a>

    </div>
    <div>


        <span>管理员管理</span>
        <a href="user_list.action" target="mainFrame" onFocus="this.blur()">用户列表</a>

    </div>
    <div>
        <span>资费管理</span>
        <a href="expensesList.jsp" target="mainFrame" onFocus="this.blur()">资费列表</a>
        <a href="addExpenses.jsp" target="mainFrame" onFocus="this.blur()">增加资费</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">查询资费</a>
    </div>
    <div>
        <span>号码管理</span>
        <a href="numberList1.jsp" target="mainFrame" onFocus="this.blur()">买号列表</a>
        <a href="managerNumber.jsp" target="mainFrame" onFocus="this.blur()">号码列表</a>
    </div>


</div>
</body>
</html>
