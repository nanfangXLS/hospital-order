<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2021/2/24
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
            request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>今天所有预约名单</title>
    <base href="<%=basePath%>"/>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url:"yuYueDoctorAll.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    $.each(data,function (i,n) {
                        //对比时间判断是不是今天
                        var s = n.shijian;
                        s=s.replace(/-/g,'/');
                        s=new Date(s);
                        if(s.toLocaleDateString() == new Date().toLocaleDateString()){
                            $("#info").append("<tr>").append("<td>" + n.xuhao + "</tr>").append("<td>" + n.userId + "</tr>")
                                .append("<td>" + n.userName + "</tr>").append("<td>" + n.keshiName + "</tr>")
                                .append("<td>" + n.doctorName + "</tr>")
                                .append("<td>" + "<a target='_blank' href='bingliDoctor.jsp?userId="+n.userId+"&userName="+n.userName+"&keshiName="+n.keshiName+"&doctorName="+n.doctorName+"'>填写病历</a>" + "</tr>")
                                .append("</tr>")
                        }
                    })
                }
            })
        })
    </script>
</head>
<body>
    <h2 align="center">今日所有预约病人</h2>
    <table align="center" border="2px" width="80%">
        <thead>
        <tr>
            <td>序号</td>
            <td>用户ID</td>
            <td>用户姓名</td>
            <td>科室名称</td>
            <td>医生姓名</td>
            <td>填写病历</td>
        </tr>
        </thead>
        <tbody id="info">

        </tbody>
    </table>
</body>
</html>
