<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2021/2/15
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
            request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>用户信息管理页面</title>
    <base href="<%=basePath%>"/>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url:"userAll.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    $("#info").html("");
                    $.each(data,function (i,n) {
                        $("#info").append("<tr>").append("<td>" + n.userId + "</td>").append("<td>" + n.userName + "</td>")
                        .append("<td>" + n.userSex + "</td>").append("<td>" + n.userAge + "</td>").append("<td>" + n.userEmail + "</td>")
                        .append("<td>" + n.userPhone + "</td>").append("<td><button class='btn' id='"+n.userId+"'>"+ "删除用户" + "</button></td>")
                        .append("</tr>")
                    })
                    $(".btn").click(function () {
                        $.ajax({
                            url:"userDelete.do?userId="+$(this).attr("id")+"",
                            type:"get",
                            dataType: "json",
                            success:function (data) {
                                if(data != 0){
                                    alert("删除成功");
                                }else {
                                    alert("删除失败");
                                }
                            }
                        })
                    })
                }
            })
        })
    </script>
</head>
<body>
    <div style="background: pink">
        <h1 align="center">用户信息管理</h1>
    </div>
    <table align="center" width="80%" border="2px">
        <thead align="center">
        <tr>
            <td>用户ID</td>
            <td>用户姓名</td>
            <td>用户性别</td>
            <td>用户年龄</td>
            <td>用户邮箱</td>
            <td>用户电话</td>
            <td>删除</td>
        </tr>
        </thead>
        <tbody id="info" align="center">

        </tbody>
    </table>

</body>
</html>
