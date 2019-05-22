<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="oyz_zbl.github.userDao"%>
<%@ page import="java.util.*"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";//当前的路径
    request.setCharacterEncoding("utf-8");
    String user=request.getParameter("username");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>My JSP 'login.jsp' starting page</title>
    <%
        Vector<Vector<String>> res=new userDao().select(request.getParameter("start"),request.getParameter("stop"));
    %>
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
            border-bottom: 1px solid #000;
            background-color: #544b4b0f;
        }
        .header .div1{
            height: 50px;
            width: 210px;
            float: left;
            margin: 25px 0px 0px 10%;
            line-height: 50px;
        }
        .header .div1 img{
            margin-top: 0px;
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
            line-height: 50px;
            font-size: 19px;
            margin: 19px 0px 0px -35px;
        }
        .header .div3{
            width: 210px;
            height: 50px;
            float: right;
            margin: 25px 10% 0px 0px;
            line-height: 50px;
        }
        .content{
            height: 600px;
            overflow: hidden;
            background-color: #48cbde70;
            margin: 0 auto;
            background: url("images/bluesky.png") no-repeat 0px -250px;
            background-size: cover;
        }
        .content .left{
            width: 400px;
            height: 600px;
            float: left;
        }
        .content img{
            width: 400px;
            height: 600px;
        }
        .content .right{
            width: 400px;
            height: 600px;
            margin-left: 50px;
            float: right;
        }
        .content .table{
            width: 478px;
            height: 600px;
            margin:50px 0px 0px 148px;
            float: left;
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
    <div class="div3"><span>欢迎用户</span><span style="color: crimson"><%=session.getAttribute("user")%><%--登陆成功显示用户名--%></span>|<span> <a href="#">注销</a></span></div>
</div>
<div class="content">
    <div class="left">
        <%--<img src="images/poster1.png">--%>
    </div>
    <div class="table">
    <table border="1" align:="center" width="500" bgcolor="white">
        <tr>
            <th>车次</th>
            <th>始发站</th>
            <th>终点站</th>
            <th>余票数</th>
            <th>发车时间</th>
            <th>到达时间</th>
            <th>价格</th>
            <th>操作</th>
        </tr>
        <%
            if(res.size()==0){%>
        <tr><td colspan="8"><%="抱歉，没有查询到您需要的路线信息"%></td></tr>
        <%}
        else{%>
        <%
            for(Vector<String> i:res)
            {%>
        <form action="buy.jsp"value="td" method="get">
            <tr>
                <td><%=i.get(0)%></td>
                <td><%=i.get(1)%></td>
                <td><%=i.get(2)%></td>
                <td><%=i.get(3)%></td>
                <td><%=i.get(4)%></td>
                <td><%=i.get(5)%></td>
                <td><%=i.get(6)%></td>
                <td><button onclick="<%session.setAttribute("res",i);%>">购买</button></td>
            </tr>
        </form>
        <%}%>
        <%}
        %>
    </table>
    </div>
    <div class="right">
        <%--<img src="images/bluesky.png">--%>
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
