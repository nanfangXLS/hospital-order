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
    <title>医生信息管理页面</title>
    <base href="<%=basePath%>"/>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url:"doctors.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    $("#info").html("");
                    $.each(data,function (i,n) {
                        $("#info").append("<tr>").append("<td>" + n.doctorId + "</td>").append("<td>" + n.doctorName + "</td>")
                            .append("<td>" + n.doctorSex + "</td>").append("<td>" + n.doctorAge + "</td>").append("<td>" + n.doctorEmail + "</td>")
                            .append("<td>" + n.doctorPhone + "</td>").append("<td>" + n.doctorText + "</td>")
                            .append("<td>" + n.keshiName + "</td>")
                            .append("<td><button class='btn' id='"+n.doctorId+"'>"+ "删除医生" + "</button></td>")
                            .append("</tr>")
                    })
                    $(".btn").click(function () {
                        $.ajax({
                            url:"doctorDelete.do?doctorId="+$(this).attr("id")+"",
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
    <h1 align="center">医生信息管理</h1>
</div>
<table align="center" width="80%" border="2px">
    <thead align="center">
    <tr>
        <td>医生ID</td>
        <td>医生姓名</td>
        <td>医生性别</td>
        <td>医生年龄</td>
        <td>医生邮箱</td>
        <td>医生电话</td>
        <td>医生简介</td>
        <td>所属科室</td>
        <td>删除</td>
    </tr>
    </thead>
    <tbody id="info" align="center">

    </tbody>
</table>

</body>
</html>
