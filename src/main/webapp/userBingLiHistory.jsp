<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2021/2/25
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
            request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>用户病历史</title>
    <base href="<%=basePath%>"/>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url:"bingLiAll.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    $("#info").html("");
                    $.each(data,function (i,n) {
                        $("#info").append("<tr>").append("<td>" + n.userId + "</td>").append("<td>" + n.userName + "</td>")
                            .append("<td>" + n.keshiName + "</td>").append("<td>" + n.doctorName + "</td>")
                            .append("<td>" + n.userBingLi + "</td>").append("<td>" + n.bingLiTime + "</td>").append("</tr>");
                    })
                }
            })
        })
    </script>
</head>
<body>
    <h2 align="center">用户病情历史记录</h2>
    <table align="center" width="80%" border="2px">
        <thead>
        <tr>
            <td>用户ID</td>
            <td>用户姓名</td>
            <td>科室名称</td>
            <td>医生姓名</td>
            <td>病情</td>
            <td>时间</td>
        </tr>
        </thead>
        <tbody id="info">

        </tbody>
    </table>
</body>
</html>
