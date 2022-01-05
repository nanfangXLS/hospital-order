<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2021/2/13
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3 align="center" style="color: red">${tips}</h3>
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
                <td align="center"><input type="button" id="btn2" value="注册"/></td>
            </tr>
        </table>
    </form>
</body>
</html>
