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
</head>
<body>
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
            <th>操作</th>
        </tr>
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
                <%
                session.setAttribute("res",i);
                %>
                <td><button>购买</button></td>
            </tr>
        </form>
        <%}
        %>
    </table>
</div>


</body>
</html>
