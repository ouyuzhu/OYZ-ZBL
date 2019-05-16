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
            background-size: 100% auto;
        }
        .footer{
            height: 100px;
            background-color: pink;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="div1">
        <ul>
            <li>中国铁路12306</li>
            <li>12306 CHINA RAILWAY</li>
        </ul>
    </div>
    <div class="div2">欢迎登陆12306</div>
</div>
<div class="content">
    <!--<a href="login.html">老用户登录购票</a><br>-->
    <!--<a href="register.html">新用户注册购票</a><br>-->
    <!--<a href="admin.html">我是管理员</a>-->
    <div class="form">
        <form action="login.jsp" method="post">
            <input type="text" name="username"><br>
            <input type="password" name="password"><br>
            <input type="submit" value="立即登录"><br>
            <p>
                <span><a href="register.html">注册12306账号</a></span>|<span><a href="#">忘记密码？</a></span>
            </p>
        </form>
    </div>
</div>
<div class="footer">
    <p>
        <span>版权所有&copy;2019-2019</span>
        <span>计算机科学与技术161班</span>
        <span>安徽科技学院</span>
    </p>
    <p>
        <span>徽ICP备15003716号-3</span>
        <span>|</span>
        <span>徽ICP备证150437号</span>
    </p>
</div>
</body>
</html>

