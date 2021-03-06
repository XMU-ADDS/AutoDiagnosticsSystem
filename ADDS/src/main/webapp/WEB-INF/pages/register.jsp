<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%
  String path=request.getContextPath();
  String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=path%>/css/style.css" rel="stylesheet" media="screen">
  <script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
  <title>用户注册</title>
</head>
<body style="background-color:#8bd09f">
<div class="col-sm-12 " style="display:flex;justify-content:center;margin:40px 0 40px 0;">
	<img src="<%=path%>/images/logo.png " height="150" width="150" style="border-radius:75px;" alt="logo">
</div>
<div class="col-sm-12">
	<div class="col-sm-4"></div>
	<div class="col-sm-4" style="line-height:12px;padding:36px;border-radius:0px;box-shadow: 0px 0px 20px #655c5c;background-color:white">
    <form action="<%=basePath%>user/register" method="post" onsubmit="return check()">
        <div>
            <label for="name">用户名：</label><input id="name" class="login-username-input form-control" type="text" name="login_name" placeholder="用户名"><br>
        </div>
        <div>
            <label for="password">密码：</label><input id="password" class="login-psw-input form-control" type="password" name="password" placeholder="密码"><br>
        </div>
        <div>
            <label for="confirmPassword">确认密码：</label><input id="confirmPassword" class="login-psw-input form-control" type="password" name="confirmPassword" placeholder="确认密码"><br>
        </div>
        <div>
            <label for="identityID">身份证号：</label><input id="identityID" class="login-username-input form-control" type="text" name="identityID" placeholder="身份证号"><br>
        </div>
        <div>
            <span style="font-weight: bold">性别：</span>
            <label for="radio_m" style="margin-left: 10px"><input id="radio_m" type="radio" value="m" name="gender">男</label>
            <label for="radio_f" style="margin-left: 10px"><input id="radio_f" type="radio" value="f" name="gender">女</label>
        </div>
        <div style="margin-top: 30px">
            <input type="checkbox" id="doctorCheck" value="true" name="isDoctor"/>我是医生
            <input name="isDoctor" type="hidden" value="false"/>
            <input class="btn btn-default btn-block green-btn" style="width:30%;float:right" type="submit" value="注册">
        </div>
    </form>
	</div>
	<div class="col-sm-4"></div>
</div>
</body>
</html>

<script type="text/javascript">
    function check()
    {
        var username=document.getElementById("name").value;//获得用户名
        var password_1=document.getElementById("password").value;//取出第一个文本框里输如的值密码一
        var password_2=document.getElementById("confirmPassword").value;
        var identityID=document.getElementById("identityID").value;
        var isDoctor=document.getElementById("doctorCheck").checked;
        var radio_m=document.getElementById("radio_m").checked;
        var radio_f=document.getElementById("radio_f").checked;
        var idcardReg = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;

        if(isDoctor){
            document.getElementById("doctorCheck").value="true";
        }

        if(username.toString()===""){
            alert("用户名不能为空!请重新输入");//输出对话框提示
            document.getElementById("name").focus();//焦点定位
            return false;
        }
        if(password_1.toString()===""){
            alert("密码不能为空!请重新输入");//输出对话框提示
            document.getElementById("password").focus();//焦点定位
            return false;
        }
        if(password_1.toString()!==password_2.toString())
        {
            alert("两次密码输入不同，请重新确认");//输出对话框提示
            document.getElementById("password").focus();//焦点定位
            return false;
        }
        if(!idcardReg.test(identityID)) {
            alert("身份证号格式有误,请重新确认");//输出对话框提示
            document.getElementById("identityID").focus();//焦点定位
            return false;
        }
        if(radio_m.toString()==="false"&&radio_f.toString()==="false"){
            alert("请选择性别!");//输出对话框提示
            return false;
        }
        return true;
    }
</script>

<style>

</style>