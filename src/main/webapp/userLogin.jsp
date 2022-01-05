<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2021/2/13
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
            request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>用户登录</title>
    <base href="<%=basePath%>"/>
</head>
<body>
<h2 align="center">用户登录界面</h2>
<form action="userLogin.do" method="post">
    <table align="center">
        <tr>
            <td>用户ID</td>
            <td><input type="text" name="userId"></td>
        </tr>
        <tr>
            <td>用户密码</td>
            <td><input type="text" name="userPassword"></td>
        </tr>
        <tr>
            <td align="center"><input type="submit" value="登录"/></td>
            <td align="center"><a href="userZhuCe.jsp">注册</a> </td>
        </tr>
    </table>
</form>
</body>
</html>
