<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2021/2/13
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3 align="center" style="color: red">用户${userName}登录成功，请选择您需要的功能。</h3>
    <table align="center">
        <tr>
            <td><a href="userPreview.jsp">我要预约</a></td>
        </tr>
        <tr>
            <td><a href="userYuyueHistory.jsp">查看历史预约记录</a></td>
        </tr>
        <tr>
            <td><a href="userBingLiHistory.jsp">查看历史病历</a></td>
        </tr>
    </table>
</body>
</html>
