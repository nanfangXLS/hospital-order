<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2021/2/16
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
            request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>用户注册页面</title>
    <base href="<%=basePath%>"/>
    <style type="text/css">
        span{
            color: red;
            font-size: 12px;
        }
    </style>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {

            //身份证号验证
            var $idObj = $("#userId");
            var $idErrorObj = $("#userIdError");
            $idObj.blur(function () {
                //获取id值
                var userId = $idObj.val();
                //去除前后空白
                userId = userId.trim();
                //编写身份证号的正则表达式
                var userIdRegExp = /^[1-9]\d{5}(18|19|20|(3\d))\d{2}((0[1-9])|(1[0-2]))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
                //内容非空
                if(userId){
                    if(userIdRegExp.test(userId)){
                        $.ajax({
                            url:"userIdCunZai.do",
                            type:"get",
                            data:{
                              "userId":userId
                            },
                            dataType:"json",
                            success:function (data) {
                                if(jQuery.isEmptyObject(data)){
                                    $idErrorObj.text("√ 身份证号合法");
                                    addSubmit();
                                }else {
                                    $idErrorObj.text("× 该身份证号已存在，请重新输入");
                                }
                            }
                        })
                    }else {
                        $idErrorObj.text("× 身份证号不合法，请重新输入");
                    }
                }else {
                    $idErrorObj.text("× 身份证号不能为空");
                }
            });
            $idObj.focus(function () {
                if($idErrorObj.text() != "√ 身份证号合法"){
                    $idObj.val("");
                    $idErrorObj.text("*请填写身份证号");
                }
            });

            //用户姓名验证
            var $nameObj = $("#userName");
            var $nameErrorObj = $("#userNameError");
            var nameRegExp =  /^([\u4e00-\u9fa5]{1,20})$/;
            $nameObj.blur(function () {
                var userName = $nameObj.val();
                userName = userName.trim();
                //判断用户名是否为空
                if(userName){
                    var ok = nameRegExp.test(userName);
                    if(ok){
                        //用户名合法
                        $nameErrorObj.text("√ 用户名合法");
                        addSubmit();
                    }else {
                        $nameErrorObj.text("× 用户名由中文汉字组成");
                    }
                }else{
                    $nameErrorObj.text("× 用户名不能为空");
                }
            });
            $nameObj.focus(function () {
                if($nameErrorObj.text()!= "√ 用户名合法"){
                    $nameObj.val("");
                    $nameErrorObj.text("*请填写用户名,由1到20位汉字组成");
                }
            });

            //密码验证
            var $userPassword = $("#userPassword");
            var $userPassword2 = $("#userPassword2");
            var $userPasswordError = $("#userPasswordError");
            $userPassword2.blur(function () {
                var userPwd = $userPassword.val();
                var userPwd2 = $userPassword2.val();
                if(userPwd){
                    if(userPwd != userPwd2){
                        //密码不一致
                        $userPasswordError.text("× 密码不一致");
                    }else {
                        $userPasswordError.text("√ 密码一致");
                        addSubmit();
                    }
                }else {
                    $userPasswordError.text("× 密码不能为空");
                }
            });
            $userPassword2.focus(function () {
                if($userPasswordError.text() != "√ 密码一致"){
                    $userPassword2.val("");
                    $userPasswordError.val("*两次密码填写要一致");
                }
            });

            //年龄验证
            var $ageObj = $("#userAge");
            var $ageErrorObj = $("#userAgeError");
            var ageRegExp = /^(?:[1-9][0-9]?|1[01][0-9]|120)$/;
            $ageObj.blur(function () {
                var userAge = $ageObj.val();
                if(userAge){
                    var ok = ageRegExp.test(userAge);
                    if(ok){
                        $ageErrorObj.text("√ 年龄合法");
                        addSubmit();
                    }else {
                        $ageErrorObj.text("× 年龄非法，请重新填写");
                    }
                }else {
                    $ageErrorObj.text("× 年龄不能为空");
                }
            });
            $ageObj.focus(function () {
                if($ageErrorObj.text() != "√ 年龄合法"){
                    $ageObj.val("");
                    $ageErrorObj.text("*请填写用户年龄(1-120岁有效)");
                }
            });

            //Email验证
            var $emailObj = $("#userEmail");
            var $emailErrorObj = $("#userEmailError");
            $emailObj.blur(function () {
                //获取id值
                var userEmail = $emailObj.val();
                //去除前后空白
                userEmail = userEmail.trim();
                //编写身份证号的正则表达式
                var userEmailRegExp = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
                //内容非空
                if(userEmail){
                    if(userEmailRegExp.test(userEmail)){
                        $.ajax({
                            url:"userEmailCunZai.do",
                            type:"get",
                            data:{
                                "userEmail":userEmail
                            },
                            dataType:"json",
                            success:function (data) {
                                if(jQuery.isEmptyObject(data)){
                                    $emailErrorObj.text("√ Email合法");
                                    addSubmit();
                                }else {
                                    $emailErrorObj.text("× 该Email已存在，请重新输入");
                                }
                            }
                        })
                    }else {
                        $emailErrorObj.text("× Email不合法，请重新输入");
                    }
                }else {
                    $emailErrorObj.text("× Email不能为空");
                }
            });
            $emailObj.focus(function () {
                if($emailErrorObj.text() != "√ Email合法"){
                    $emailObj.val("");
                    $emailErrorObj.text("*请填写用户邮箱");
                }
            });

            //电话验证
            var $phoneObj = $("#userPhone");
            var $phoneErrorObj = $("#userPhoneError");
            $phoneObj.blur(function () {
                //获取id值
                var userPhone = $phoneObj.val();
                //去除前后空白
                userPhone = userPhone.trim();
                //编写身份证号的正则表达式
                var userPhoneRegExp = /^(13[0-9]|14[5|7]|15[0|1|2|3|4|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
                //内容非空
                if(userPhone){
                    if(userPhoneRegExp.test(userPhone)){
                        $.ajax({
                            url:"userPhoneCunZai.do",
                            type:"get",
                            data:{
                                "userPhone":userPhone
                            },
                            dataType:"json",
                            success:function (data) {
                                if(jQuery.isEmptyObject(data)){
                                    $phoneErrorObj.text("√ 电话合法");
                                    addSubmit();
                                }else {
                                    $phoneErrorObj.text("× 该电话已存在，请重新输入");
                                }
                            }
                        })
                    }else {
                        $phoneErrorObj.text("× 电话不合法，请重新输入");
                    }
                }else {
                    $phoneErrorObj.text("× 电话不能为空");
                }
            });
            $phoneObj.focus(function () {
                if($phoneErrorObj.text() != "√ 电话合法"){
                    $phoneObj.val("");
                    $phoneErrorObj.text("*请填写用户电话");
                }
            });

            //性别验证
            var $sexObj1 = $("#radio1");
            var $sexObj2 = $("#radio2");
            var $sexErrorObj = $("#userSexError");
            $sexObj1.click(function () {
                $sexErrorObj.text("性别已选择");
                addSubmit();
            })
            $sexObj2.click(function () {
                $sexErrorObj.text("性别已选择");
                addSubmit();
            })

            function addSubmit() {
                if($phoneErrorObj.text() == "√ 电话合法" && $emailErrorObj.text() == "√ Email合法" && $ageErrorObj.text() == "√ 年龄合法" &&
                    $userPasswordError.text() == "√ 密码一致" && $nameErrorObj.text()== "√ 用户名合法" && $idErrorObj.text() == "√ 身份证号合法"
                    && $sexErrorObj.text("性别已选择")){
                    $("#userAddSub").attr("disabled",false);
                }
            }
        })
    </script>
</head>
<body>
    <h2 align="center">用户注册页面</h2>
    <form a id="userForm" action="userAdd.do" method="get">
       <table align="center">
           <tr>
               <td>用户ID</td>
               <td><input type="text" name="userId" id="userId"/></td>
               <td><span id="userIdError">*请填写身份证号</span></td>
           </tr>
           <tr>
               <td>用户姓名</td>
               <td><input type="text" name="userName" id="userName"/></td>
               <td><span id="userNameError">*请填写用户名,由1到20位汉字组成</span></td>
           </tr>
           <tr>
               <td>密码</td>
               <td><input type="text" name="userPassword" id="userPassword"/></td>
           </tr>
           <tr>
               <td>确认密码</td>
               <td><input type="text" name="userPassword2" id="userPassword2"/></td>
               <td><span id="userPasswordError">*两次密码填写要一致</span></td>
           </tr>
           <tr>
               <td>用户性别</td>
               <td>
                   <input type="radio" name="userSex" value="男" id="radio1"/>男
                   <input type="radio" name="userSex" value="女" id="radio2"/>女
               </td>
               <td><span id="userSexError">*请选择性别</span></td>
           </tr>
           <tr>
               <td>用户年龄</td>
               <td><input type="text" name="userAge" id="userAge"/></td>
               <td><span id="userAgeError">*请填写用户年龄(1-120岁有效)</span></td>
           </tr>
           <tr>
               <td>用户邮箱</td>
               <td><input type="text" name="userEmail" id="userEmail"/></td>
               <td><span id="userEmailError">*请填写用户邮箱</span></td>
           </tr>
           <tr>
               <td>用户电话</td>
               <td><input type="text" name="userPhone" id="userPhone"/></td>
               <td><span id="userPhoneError">*请填写用户电话</span></td>
           </tr>
           <tr>
               <td align="center"><input type="submit" id="userAddSub" value="注册" disabled="true"/></td>
               <td align="center"><input type="reset" value="清空"/></td>
           </tr>
       </table>
    </form>
</body>
</html>
