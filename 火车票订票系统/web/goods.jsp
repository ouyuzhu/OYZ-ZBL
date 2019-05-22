<%@ page import="oyz_zbl.github.userDao" %>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单管理</title>
    <%
        String user=(String)session.getAttribute("user");
        Vector<Vector<String>> goods=new userDao().goods(user);
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
            background-size:auto auto;
        }
        .content .ts{
            width: 500px;
            height: 146px;
            font-size: 16px;
            padding-top: 15px;
            box-sizing: border-box;
            margin-left: 510px;
        }
        .content .table{
            width: 620px;
            height: 100%;
            margin-left:450px;
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
   <div class="ts">
       <p>亲爱的【<%=session.getAttribute("user")%>】用户您好,感谢使用12306铁路订票系统</p>
       <p>您的车票信息如下表格中所示，请携带身份证到火车站取票。</p>
       <p>请您按时取票上车，以免误了车程需要换票</p>
       <p>假如您来不及到达火车站，您可以在下方退票，重新购买。</p>
       <p>祝您一路顺风，旅途愉快</p>
   </div>
    <div class="table">
        <table border="1"  align="left" width="600">
            <tr>
                <th>车次信息</th>
                <th>始发站</th>
                <th>终点站</th>
                <th>发车时间</th>
                <th>到达时间</th>
                <th>价格</th>
                <th>操作</th>
            </tr>
            <%
                for(Vector<String> i:goods){%>
            <tr>
                <td><%=i.get(0)%></td>
                <td><%=i.get(1)%></td>
                <td><%=i.get(2)%></td>
                <td><%=i.get(3)%></td>
                <td><%=i.get(4)%></td>
                <td><%=i.get(5)%></td>
                <%
                    session.setAttribute("order",i);
                %>
                <td><a href="nobuy.jsp">退票</a></td>
            </tr>
            <%}
            %>
        </table>
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
