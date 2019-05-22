<%@ page import="oyz_zbl.github.userDao" %>
<%@ page import="oyz_zbl.github.tickets" %>
<%@ page import="java.util.LinkedList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>update</title>
    <%
        LinkedList <tickets> list=new userDao().selectall();
            if(list==null)
            {
                list=new LinkedList<>();
            }
    %>
</head>
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
    }
    .content .infor{
        width: 40%;
        height: 600px;
        float: left;
        position: absolute;
        box-sizing: border-box;
        border-right: 1px solid #ccc;
        background-color: pink;
    }
    .content .infor p{
        font-size: 20px;
        line-height: 50px;
    }
    .content .infor .table{
        width: 560px;
        height: 600px;
        position: relative;
        left: 50%;
        margin-left: -280px;
    }
    .content .sub{
        width: 40%;
        position: absolute;
        height: 600px;
        font-size: 18px;
        margin-left: 50%;
        margin-top: 50px;
    }
    .content .sub .mz{
        margin-left: 50px;
        width: 75px;
        height: 250px;
        float: left;
        text-align: left;
    }<%--名字--%>
    .content .sub .mz p{
        line-height: 30px;
        height: 30px;
        margin-bottom: 3px;
    }
    .content .sub .sr{
        margin-left: 10px;
        width: 200px;
        height: 250px;
        float: left;
    }<%--输入--%>
    .content .sub .sr input{
        box-sizing: border-box;
        width: 200px;
        height: 30px;
        margin-bottom: 3px;
    }
    .content .sub .sr input:nth-of-type(8){
        box-sizing: border-box;
        width: 160px;
        height: 30px;
    }
    .content .sub .bottom{
        border-top: 1px solid #000;
        width: 100%;
        height: 60px;
        float: bottom;
        margin-top: 300px;
        padding-top: 10px;
    }
    .content .sub .bottom input:nth-of-type(1){
        width: 160px;
        height: 30px;
    }
    .content .sub .bottom input:nth-of-type(2){
        width: 100px;
        height: 28px;
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
    <div class="div3"><span>欢迎管理员</span><span style="color: crimson"><%=session.getAttribute("admin")%><%--登陆成功显示用户名--%></span>|<span> <a href="#">注销</a></span></div>
</div>
<div class="content">
    <div class="infor">
        <p>火车信息展示栏</p>
        <div class="table">
    <table border="1" align:="center" width="560">
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
            for(tickets i:list){
        %>
        <tr>
            <td><%=i.getTickets_id()%></td>
            <td><%=i.getStart()%></td>
            <td><%=i.getStop()%></td>
            <td><%=i.getVotes()%></td>
            <td><%=i.getS_time()%></td>
            <td><%=i.getA_time()%></td>
            <td><%=i.getPrice()%></td>
        </tr>
        <%
            }
        %>
    </table>
        </div>
    </div>
    <div class="sub">
        <div class="mz">
            <p>车次</p>
            <p>始发站</p>
            <p>终点站</p>
            <p>余票数</p>
            <p>发车时间</p>
            <p>到达时间</p>
            <p>价格</p>
        </div>
        <div class="sr">
            <form action="add.jsp" method="post">
                <input type="text"name="1"><br>
                <input type="text"name="2"><br>
                <input type="text"name="3"><br>
                <input type="text"name="4"><br>
                <input type="text"name="5"><br>
                <input type="text"name="6"><br>
                <input type="text"name="7"><br>
                <input type="submit" value="添加">
            </form>
        </div>
    <div class="bottom">
        <p>或者您可以通过指定火车的车次信息来删除信息。</p>
    <p>信息温馨提示:</p>
    <p>由于系统内部不够完善,暂不支持直接修改某一车次信息，</p>
    <p>所以需要修改时请先删除信息后再执行添加操作。</p>
        <p>请输入需要删除的车次信息</p>
    <form action="delect.jsp">
        <input type="text" name="del">
        <input type="submit"value="删除">
    </form>
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
</body>
</html>
