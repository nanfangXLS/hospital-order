<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2021/2/12
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
            request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>医疗预约系统</title>
    <base href="<%=basePath%>"/>
</head>
<body>
    <h1 align="center">医疗预约系统</h1>
    <table align="center">
        <tr>
            <td><a href="userLogin.jsp">我是用户</a></td>
        </tr>
        <tr>
            <td><a href="doctorLogin.jsp">我是医生</a></td>
        </tr>
        <tr>
            <td><a href="goverLogin.jsp">我是管理员</a></td>
        </tr>
    </table>

</body>
</html>
