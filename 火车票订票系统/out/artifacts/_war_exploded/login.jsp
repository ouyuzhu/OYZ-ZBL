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
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <% LinkedList <tickets> list=new userDao().selectall();
        if(list==null)
        {
            list=new LinkedList<>();
        }
    session.setAttribute("user",request.getParameter("username"));//创建会话
    %>
</head>
<body>
<%
    boolean flag=userDao.check(request.getParameter("username"),request.getParameter("password"));
    if(flag)
    {%>
<%=session.getAttribute("user")%><%--登陆成功显示用户名--%>
<div class="header">
    <table border="1" style="text-align: center">
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
<p>亲爱的用户您好，欢迎来到购票系统，以上信息是数据库中现有的火车信息，您可以通过下面的精确搜索来查询您火车信息。</p>
<p>现在您可以购票了,请输入您的出发地和目的地</p>
<p>您也可以 <a href="goods.jsp">点击这里</a>来进行查看您的订单信息，进行退票处理</p>
<table>
    <tr>
        <th>出发站</th>
        <th>终点站</th>
    </tr>
    <tr>
        <form action="select.jsp">
           <td><input type="text" name="start"></td>
            <td><input type="text" name="stop"></td>
            <td><input type="submit" value="查询"></td>
        </form>
    </tr>
</table>
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
