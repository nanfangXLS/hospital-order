<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2021/2/19
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
            request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>用户预约历史记录</title>
    <base href="<%=basePath%>"/>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url:"yuYueHistory.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    $("#info").html("");
                    $.each(data,function (i,n) {
                        $("#info").append("<tr>").append("<td>" + n.userName + "</td>").append("<td>" + n.keshiName + "</td>")
                        .append("<td>" + n.doctorName + "</td>").append("<td>" + n.shijian + "</td>").append("</tr>");
                    })
                }
            })
        })
    </script>
</head>
<body>
    <h2 align="center">用户预约挂号历史记录</h2>
    <table align="center" width="80%" border="2px">
        <thead align="center">
        <tr>
            <td>用户姓名</td>
            <td>科室名称</td>
            <td>医生姓名</td>
            <td>预约时间</td>
        </tr>
        </thead>
        <tbody id="info" align="center">

        </tbody>
    </table>
</body>
</html>
