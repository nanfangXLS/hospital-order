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
<h2 align="center">管理员登录界面</h2>
<form action="goverLogin.do">
    <table align="center">
        <tr>
            <td>管理员ID</td>
            <td><input type="text" name="goverId" id="goverId"></td>
        </tr>
        <tr>
            <td>管理员密码</td>
            <td><input type="text" name="goverPassword" id="goverPassword"></td>
        </tr>
        <tr>
            <td align="center"><input type="submit" value="登录"/></td>
            <td align="center"><input type="reset" value="清空"/></td>
        </tr>
    </table>
</form>
</body>
</html>
