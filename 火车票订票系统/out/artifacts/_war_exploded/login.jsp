<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="oyz_zbl.github.userDao"%>
<%@ page import="oyz_zbl.github.tickets"%>
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
    <% LinkedList <tickets> list=new userDao().selectall();
        if(list==null)
        {
            list=new LinkedList<>();
        }
    session.setAttribute("user",request.getParameter("username"));
    %><%--创建会话--%>
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
            /*background:url("images/poster1.png") no-repeat 0px -666px;*/
            background-size:auto auto;
        }
        .content .min{
            width: 50%;
            height: 600px;
            float: left;
            box-sizing: border-box;
            border-right: 1px solid #CCC;
        }
        .content .min p{
            font-size: 20px;
            line-height: 38px;
        }
        .content .min .table{
            width: 70%;
            height: 400px;
            margin: 0% 0% 0% 19%;
        }
        .content .max{
            width: 50%;
            height: 600px;
            float: left;
        }
        .content .max span{
            font-size: 20px;
            line-height: 38px;
        }
        .content .max .table{
            margin-top: 30px;
            margin-left: 50%;
            margin-left: 220px;
            width: 456px;
            height: 100px;
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
<%
    boolean flag=userDao.check(request.getParameter("username"),request.getParameter("password"));
    if(flag)
    {%>
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
    <div class="min">
        <p>亲爱的用户您好，欢迎来到购票系统，以下信息是数据库中现有的火车信息。</p>
        <p>您也可以通过右边的精确搜索来查询您需要的火车信息。</p>
        <div class="table">
        <table border="1" style="text-align: left">
            <tr>
                <th>车次</th>
                <th>始发站</th>
                <th>终点站</th>
                <th>余票数</th>
                <th>发车时间</th>
                <th>到达时间</th>
                <th>价格</th>
            </tr>
            <%
                for(tickets i:list)
                {%>
            <tr>
                <td><%=i.getTickets_id()%></td>
                <td><%=i.getStart()%></td>
                <td><%=i.getStop()%></td>
                <td><%=i.getVotes()%></td>
                <td><%=i.getS_time()%></td>
                <td><%=i.getA_time()%></td>
                <td><%=i.getPrice()%></td>
            </tr>
            <%}
            %>
        </table>
        </div>
    </div>
    <div class="max">
        <span>现在您可以购票了,请输入您的出发地和目的地</span><br>
        <span>您也可以 <a href="goods.jsp">点击这里</a>来进行查看您的订单信息，进行退票处理</span>
        <div class="table">
        <table style="font-size: 18px"><tr>
                <th>出发站</th>
                <th>终点站</th>
            </tr>
            <tr>
                <form action="select.jsp">
                    <td><input type="text" name="start" style="width: 200px;height: 30px;"></td>
                    <td><input type="text" name="stop"style="width: 200px;height: 30px;"></td>
                    <td><input type="submit" value="查询" style="height: 28px;"></td>
                </form>
            </tr>
        </table>
        </div>
    </div>
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
    <%}
    else
        {%>
        用户名:<%=request.getParameter("username")%><br/>
        密码:<%=request.getParameter("password")%><br/>
        登陆结果<%=userDao.check(request.getParameter("username"), request.getParameter("password"))%>
        <%}
%>
</body>
</html>
