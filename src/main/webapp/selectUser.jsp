<%--
  Created by IntelliJ IDEA.
  User: liyuchen
  Date: 2018/12/13
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>主要内容区main</title>
    <link href="css/css.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/modalBox.css">
    <link href="css/main.css" type="text/css" rel="stylesheet" />
    <link rel="shortcut icon" href="images/main/favicon.ico" />
    <link rel="stylesheet" href="layui/css/layui.css"  media="all">
    <script src="js/jquery.js"></script>
    <link href="layui/lay/modules/theme/default/layer.css">
    <script src="layui/lay/modules/layer.js"></script>
    <style>
        #search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
        #search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
        #search form input.text-word1{height:24px; line-height:24px; width:65px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
        #search form input.text-but{height:24px; line-height:24px; width:55px; background:url(images/main/list_input.jpg) no-repeat left top; border:none; curbody{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
        #searchmain{ font-size:12px;}
        #search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF; float:left}
        sor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
        #search a.add{ background:url(images/main/add.jpg) no-repeat -3px 7px #548fc9; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF; float:right}
        #search a:hover.add{ text-decoration:underline; color:#d2e9ff;}
        #search bottun.add{ background:url(images/main/add.jpg) no-repeat -3px 7px #548fc9; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF; float:right}
        #search bottun:hover.add{ text-decoration:underline; color:#d2e9ff;}
        #main-tab{ border:1px solid #eaeaea; background:#FFF; font-size:12px;}
        #main-tab th{ font-size:12px; background:url(images/main/list_bg.jpg) repeat-x; height:32px; line-height:32px;}
        #main-tab td{ font-size:12px; line-height:40px;}
        #main-tab td a{ font-size:12px; color:#548fc9;}
        #main-tab td a:hover{color:#565656; text-decoration:underline;}
        #main-tab td bottun{ font-size:12px; color:#548fc9;}
        #main-tab td bottun:hover{color:#565656; text-decoration:underline;}
        .bordertop{ border-top:1px solid #ebebeb}
        .borderright{ border-right:1px solid #ebebeb}
        .borderbottom{ border-bottom:1px solid #ebebeb}
        .borderleft{ border-left:1px solid #ebebeb}
        .gray{ color:#dbdbdb;}
        td.fenye{ padding:10px 0 0 0; text-align:right;}
        .bggray{ background:#f9f9f9}
    </style>

</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
    <tr>
        <td width="99%" align="left" valign="top">您的位置：管理员管理</td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="search">
                <tr>
                    <td width="90%" align="left" valign="middle">            <span>管理员：</span>
                        <input type="text" name="message" id="message" value="" class="text-word">&nbsp;|&nbsp;
                        <select name="select" id="select" class="yinwen">

                            <option value="username" name="condition"  >用户登录名</option>
                            <option value="indentity"  name="condition">身份证</option>

                        </select>&nbsp;|&nbsp;            <input name="button" type="button" class="text-but" value="查询"id="find"></td>
                    <td width="10%" align="center" valign="middle" style="text-align:right; width:150px;"><a href="addManager.jsp" target="mainFrame" onFocus="this.blur()" class="add">新增管理员</a></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">

            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">

                <tr>
                    <th align="center" valign="middle" class="borderright">用户姓名</th>
                    <th align="center" valign="middle" class="borderright">用户登录名</th>
                    <th align="center" valign="middle" class="borderright">用户登录密码</th>
                    <th align="center" valign="middle" class="borderright">用户电话</th>
                    <th align="center" valign="middle" class="borderright">用户类型</th>
                    <th align="center" valign="middle">操作</th>
                </tr>
                <s:iterator   value="li" var="p">
                <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                    <td align="center" valign="middle" class="borderright borderbottom">${p.user}
                    <input type="hidden" id="userId">
                    </td>
                    <td align="center" valign="middle" class="borderright borderbottom">${p.username}</td>
                    <td align="center" valign="middle" class="borderright borderbottom">${p.userpassword}</td>
                    <td align="center" valign="middle" class="borderright borderbottom">${p.userphone}</td>
                    <td align="center" valign="middle" class="borderright borderbottom">${p.usertype}</td>
                    <td align="center" valign="middle" class="borderbottom"><button value="${p.userId}" id="delete1" onclick="h(this)"class="add">删除</button><span class="gray">&nbsp;|&nbsp;</span>
                        <button value="${p.userId}" id="triggerBtn" onclick="w(this)"class="add">编辑</button></td>      </tr>
                </s:iterator>

            </table>







        </td>
    </tr>
    <s:set name="page" value="#request.page"></s:set>
    <tr id="tab1">
        <td  align="left" valign="top" class="fenye">
            当前是第<s:property value="#page.pageNow"/>页，共<s:property value="#page.totalPage"/>页&nbsp;&nbsp;
            <s:if test="#page.hasFirst">
                <a href="user_list.action?pageNow=1" onFocus="this.blur()" target="mainFrame">首页</a>&nbsp;&nbsp;
            </s:if>
            <s:if test="#page.hasPre">
                <a href="user_list.action?pageNow=<s:property value="#page.pageNow-1"/> " onFocus="this.blur()" target="mainFrame">上一页</a>&nbsp;&nbsp;
            </s:if>
            <s:if test="#page.hasNext">
                <a  href="user_list.action?pageNow=<s:property value="#page.pageNow+1" />"onFocus="this.blur()" target="mainFrame">下一页</a>&nbsp;&nbsp;
            </s:if>
            <s:if test="#page.hasLast">
                <a href="user_list.action?pageNow=<s:property value="#page.totalPage"/>" onFocus="this.blur()" target="mainFrame">尾页</a>
            </s:if>
        </td>
    </tr>

</table>
</body>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script src="layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/modalBox.js"></script>
<script type="text/javascript">

    function h(q){
        var id=q.value;

        $.ajax({
            type : 'post',
            url : 'delete.action',
            data : 'user.userId='+id,
            dataType : 'json',
            success : function(data){
                if(data.result){
                    alert("删除成功");
                    location.href="userMessage.jsp";
                }else{
                    alert("删除失败");
                }}
        })
    }


    $("#find").click(function(){

        var message = $("#message").val();
        var managerName = $("#one").val();
        var loginName = $("#two").val();
        var radios =$("#select").val();

        var q = true;
        //根据 name集合长度 遍历name集合

        $.ajax({
            type :  "post",
            url :  "check.action",
            data :   { choose : radios,message : message },
            dataType : "json",
            success :  function(data){
                $("#main-tab  tr:not(:first)").empty("");

                $("#tab1").empty();

                alert(data.pageshow1.pageNow);
                    for(var i = 0;i<data.list.length;i++)
                    {


                        var table = document.getElementById("main-tab");
                        var row = table.insertRow();//创建一行
                        var cell = row.insertCell();//创建一个单元

                        row.setAttribute('align', 'center');
                        cell.setAttribute('class', 'borderright borderbottom');

                        /*   alert('<a href=ContentServlet?Id='+Id+'>'+list.title+'</a>'); */
                        cell.innerHTML = data.list[i].user;
                        cell = row.insertCell();//创建一个单元
                        cell.setAttribute('class', 'borderright borderbottom');
                        cell.innerHTML = data.list[i].username;
                        cell = row.insertCell();//创建一个单元
                        cell.setAttribute('class', 'borderright borderbottom');
                        cell.innerHTML = data.list[i].userpassword;
                        cell = row.insertCell();//创建一个单元
                        cell.setAttribute('class', 'borderright borderbottom');
                        cell.innerHTML = data.list[i].userphone;
                        cell = row.insertCell();//创建一个单元
                        cell.setAttribute('class', 'borderright borderbottom');
                        cell.innerHTML = data.list[i].usertype;
                        cell = row.insertCell();//创建一个单元
                        cell.setAttribute('class', 'borderright borderbottom add');
                        cell.innerHTML = '<button value=' + data.list[i].username + ' id=delete1 onclick=h(this)' + '>' + '删除' + '</button>' + '<span class="gray">&nbsp;|&nbsp;</span>' + '<button value=' + data.list[i].username + ' id=’update onclick=w(this)' + ' >' + '编辑' + '</button>';
                    }
                    var tr = document.getElementById("tab1");
                     tr.setAttribute('align', 'right');
                     var se = tr.insertCell();
                   se.innerHTML= '<td  align="left" valign="top" class="fenye">\n' +
                       '                    当前是第'+data.pageshow1.pageNow+'页，共'+data.pageshow1.totalPage+'页&nbsp;&nbsp;\n' +
                       '                <s:if test='+data.pageshow1.hasFirst+'>\n' +
                       '            <a href="check.action?pageNow=1" onFocus="this.blur()" target="mainFrame">首页</a>&nbsp;&nbsp;\n' +
                       '                    </s:if>\n' +
                       '                    <s:if test='+data.pageshow1.hasPre+'>\n' +
                       '                    <a href="check.action?pageNow='+data.pageshow1.pageNow-1+' +
                       '+ " onFocus="this.blur()" target="mainFrame">上一页</a>&nbsp;&nbsp;\n' +
                       '                    </s:if>\n' +
                       '                    <s:if test='+data.pageshow1.hasNext+'>\n' +
                       '                    <a  href="check.action?pageNow='+data.pageshow1.pageNow+1+' onFocus="this.blur()" target="mainFrame">下一页</a>&nbsp;&nbsp;\n' +
                       '                    </s:if>\n' +
                       '                    <s:if test='+data.pageshow1.hasLast+'>\n' +
                       '                    <a href="check.action?pageNow='+data.pageshow1.totalPage+ ' onFocus="this.blur()" target="mainFrame">尾页</a>\n' +
                       '                    </s:if>\n' +
                       '                    </td>'




            }
        });
        q = false;
        if(message == null || message == '' )
            alert("输入搜索内容");
        if(q)
            alert("请选择搜索方式");

    })
    function w(c){

        var id = c.value;

        $.ajax({

            type: "post",
            url: "updateUser.action",
            data: {id: id},
            dataType:"json",
            success:   function (data) {

                alert(data);
                layer.open({
                    type: 1,
                    closeBtn: false,
                    shift: 7,
                    shadeClose: true,
                    content: "<div style='width:350px;'><div style='width:320px;margin-left: 5%;' class='form-group has-feedback'><p>用户姓名</p><input id='username' class='form-control' type='text' name='awardName' value='"+data.user.username+"'/>" +
                        "</div>" +
                        "<div style='width:320px;margin-left: 5%;' class='borderright borderbottom bggray'><p>用户密码</p><input id='userpassword' class='text-word' type='text' name='awardDescription' value='"+data.user.userpassword+"'/></div>"+
                        "<div style='width:320px;margin-left: 5%;' class='borderright borderbottom bggray'><p>用户登录名</p><input id='user' class='text-word' type='text' name='user.awardUserCount' value='"+data.user.user+"'/></div>"+
                        "<div style='" +
                        "width:320px;margin-left: 5%;' class='borderright borderbottom bggray'><p>用户手机号码</p><input id='phone' class='text-word' type='text' name='awardKind' value='"+data.user.userphone+"'/></div>"+
                        "<div style='width:320px;margin-left: 5%;' class='borderright borderbottom bggray'><p>用户性别</p><input id='sex' class='text-word' type='text' name='awardKind' value='"+data.user.sex+"'/></div>"+
                        "<div style='width:320px;margin-left: 5%;' class='borderright borderbottom bggray'><p>身份证</p><input id='identity' class='text-word' type='text' name='awardKind' value='"+data.user.identity+"'/></div>"+
                    "<button style='margin-top:8%;' type='button' class='btn btn-block btn-success btn-lg' onclick='updateAward("+data.user.userId+")'>提交</button></div>"
                });
           }

        })

    }
    
    
    function updateAward(c) {

        var id = c;
        alert(id);
        var username = $("#username").val();
        var password = $("#userpassword").val();
        var user = $("#user").val();
        var phone = $("#phone").val();
        var sex = $("#sex").val();
        var identity = $("#identity").val();
        $.ajax({

            type: "post",
            url: "makeUser.action",
            data: {
                "user.userId": id,
                "user.userpassword": password,
                "user.username": username,
                "user.user": user,
                "user.userphone": phone,
                "user.sex": sex,
                "user.identity": identity,
            },
            dataType: "json",
            success: function (data) {
                var updateSuccess = data.result;
                if (updateSuccess) {
                    layer.msg('修改成功', {
                        time: 500, //0.5s后自动关闭
                        // btn: ['明白了', '知道了']
                    });

                    refreshPage();
                } else {
                    layer.msg('修改失败', {
                        time: 500, //20s后自动关闭
                        // btn: ['明白了', '知道了']
                    });
                }


            }


        })
        layer.closeAll();
    }

</script>
</html>