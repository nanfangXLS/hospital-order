<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2021/2/24
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
            request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>填写病人病历</title>
    <base href="<%=basePath%>"/>
</head>
<body>
    <h2 align="center">填写用户病历</h2>
    <form action="bingLi.do">
        <table align="center">
            <tr>
                <td>用户ID</td>
                <td><input type="text" name="userId" value="<%=request.getParameter("userId")%>" readonly/></td>
            </tr>
            <tr>
                <td>用户姓名</td>
                <td><input type="text" name="userName" value="<%=request.getParameter("userName")%>" readonly/></td>
            </tr>
            <tr>
                <td>预约科室</td>
                <td><input type="text" name="keshiName" value="<%=request.getParameter("keshiName")%>" readonly/></td>
            </tr>
            <tr>
                <td>医生姓名</td>
                <td><input type="text" name="doctorName" value="<%=request.getParameter("doctorName")%>" readonly/></td>
            </tr>
            <tr>
                <td>用户病情</td>
                <td><input type="text" name="userBingLi"/></td>
            </tr>
            <tr align="center">
                <td><input type="submit" value="提交"/></td>
                <td><input type="reset" value="清空"/></td>
            </tr>
        </table>
    </form>
</body>
</html>
