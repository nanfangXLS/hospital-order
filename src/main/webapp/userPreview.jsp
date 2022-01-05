<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2021/2/18
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
            request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>预约页面</title>
    <base href="<%=basePath%>"/>
    <style type="text/css">
        .btn1{
            color: green;
            width: 200px;
            height: 80px;
        }
    </style>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url:"keshiAll.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    //增加新的数据
                    $.each(data,function (i,n) {
                        if(i%4==0){
                            $("#info").append("<tr>").append("<td>").append("<button class='btn1' id='"+n.keshiId+"'><h1>" + n.keshiName + "</h1></button>").append("</td>");
                        }else if(i%4==1){
                            $("#info").append("<td>").append("<button class='btn1' id='"+n.keshiId+"'><h1>" + n.keshiName + "</h1></button>").append("</td>");
                        }else if(i%4==2){
                            $("#info").append("<td>").append("<button class='btn1' id='"+n.keshiId+"'><h1>" + n.keshiName + "</h1></button>").append("</td>");
                        }else {
                            $("#info").append("<td>").append("<button class='btn1' id='"+n.keshiId+"'><h1>" + n.keshiName + "</h1></button>").append("</td>").append("</tr>");
                        }
                    })
                    //点击增加的按钮显示出该科室所有的医生
                    $(".btn1").click(function () {
                        $.ajax({
                            url:"doctorAll.do?keshiId="+$(this).attr("id")+"",
                            type:"get",
                            dataType: "json",
                            success:function (data) {
                                //去除旧的数据
                                $("#doctorDiv").html("");
                                $("#doctors").html("");
                                //增加新的数据
                                $("#doctorDiv").html("<h2 align='center' style='color: red'>医生表</h2>");
                                $("#doctors").append("<tr>").append("<td>医生姓名</td>").append("<td>医生性别</td>").append("<td>医生年龄</td>")
                                .append("<td>医生简介</td>").append("<td>剩余人数</td>").append("<td>预约</td>").append("</tr>");
                                $.each(data,function (i,n) {
                                    $("#doctors").append("<tr>").append("<td>" + n.doctorName + "</td>").append("<td>" + n.doctorSex + "</td>")
                                        .append("<td>" + n.doctorAge + "</td>").append("<td>" + n.doctorText + "</td>").append("<td>" + n.nums + "</td>")
                                        .append("<td><button class='btn2' id='"+n.doctorId+"'>" + "我要预约" + "</button></td>").append("</tr>");
                                })
                                //点击按钮进行预约
                                $(".btn2").click(function () {
                                    $.ajax({
                                        url:"yuyue.do?doctorId="+$(this).attr("id")+"",
                                        type:"get",
                                        dataType:"json",
                                        success:function (data) {
                                            if(data != 0){
                                                alert("预约成功");
                                                $(".btn2").attr("disabled",true);
                                            }else {
                                                alert("预约失败,请选择其他医生");
                                            }
                                        }
                                    })
                                })
                            }
                        })
                    })

                }
            })
        })
    </script>
</head>
<body>
    <h2 align="center">请选择您需要预约的科室及医生</h2>
    <table align="center" width="100%">
        <tbody id="info" align="center">

        </tbody>
    </table>

    <div id="doctorDiv"></div>

    <table align="center" width="80%" border="2px">
        <tbody id="doctors" align="center">

        </tbody>
    </table>
</body>
</html>
