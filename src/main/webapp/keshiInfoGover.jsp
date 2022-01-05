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
    <title>科室信息管理页面</title>
    <base href="<%=basePath%>"/>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url:"keshiAll.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    $("#info").html("");
                    $.each(data,function (i,n) {
                        $("#info").append("<tr>").append("<td>" + n.keshiId + "</td>").append("<td>" + n.keshiName + "</td>").append("</tr>")
                    })
                }
            })
        })
    </script>
</head>
<body>
    <div style="background: pink">
        <h1 align="center">科室信息管理</h1>
    </div>
    <table align="center" width="80%" border="2px">
        <thead align="center">
        <tr>
            <td>科室ID</td>
            <td>科室名字</td>
        </tr>
        </thead>
        <tbody id="info" align="center">

        </tbody>
    </table>

</body>
</html>
