<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>火车票订票系统</title>
    <meta charset="utf-8">
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        body{
            text-align: center;
        }
        .header{
            height: 100px;
        }
        .header .div1{
            height: 50px;
            width: 210px;
            float: left;
            margin-left: 10%;
            padding-top: 25px;
        }
        .header .div1 img{
            margin-top: -5px;
            float: left;
        }
        .header .div1 ul{
            list-style: none;
        }
        .header .div1 ul li:nth-of-type(1){
            font-size: 20px;
            line-height: 20px;
        }
        .header .div1 ul li:nth-of-type(2){
            padding-top: 5px;
            font-size: 12px;
            line-height: 10px;
        }
        .header .div2{
            height: 50px;
            width: 210px;
            float: left;
            font-size: 19px;
            padding-top: 25px;
            margin: 3px 0px 0px -35px;
        }
        .content{
            font-size:30px;
            height: 600px;
            background:url("images/poster.png") no-repeat;
            background-size: 100% 100%;
            position: relative;
        }
        .content .form{
            width: 350px;
            position: absolute;
            top: 20%;
            right: 10%;
            border: 1px solid #cdcdcd;
            background-color: #fff;
        }
        .content .form input{
            width: 300px;
            height: 35px;
        }
        .content .form input:nth-of-type(3){
            background-color: orange;
        }
        .content .form p:nth-of-type(2){
            margin-top: 10px;
            font-size: 15px;
            margin-bottom: 15px;
        }
        .footer{
            height: 100px;
            background-color: #67676d;
            position: relative;
            margin: 0 auto;
        }
        .footer .info{
            width: 500px;
            position: absolute;
            margin-left: -250px;
            top: 10px;
            left: 50%;
        }
        .footer .info p{
            font-size: 16px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="div1">
        <img src="images/logo.png">
        <ul>
            <li>中国铁路12306</li>
            <li>12306 CHINA RAILWAY</li>
        </ul>
    </div>
    <div class="div2">欢迎登陆12306</div>
</div>
<div class="content">
    <div class="form">
        <form action="login.jsp" method="post">
            <p>账号登录</p>
            <input type="text" name="username" placeholder="请输入用户名"><br>
            <input type="password" name="password"placeholder="请输入密码"><br>
            <input type="submit" value="立即登录"><br>
            <p>
                <span><a href="register.html">点击这里注册铁路账号</a></span>|<span><a href="#">忘记密码？</a></span><span>|</span><a href="admin.html">我是管理員</a>
            </p>
        </form>
    </div>
</div>
<div class="footer">
    <div class="info">
        <p>
            <span>版权所有&copy;2019-2019</span>
            <span>计算机科学与技术161班</span>
            <span>安徽科技学院</span>
        </p>
        <p>
            <span>徽ICP备19970604号-3</span>
            <span> | </span>
            <span>徽ICP备证970604号</span>
        </p>
    </div>
</div>
</body>
</html>

