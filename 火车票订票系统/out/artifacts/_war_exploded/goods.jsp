<%@ page import="oyz_zbl.github.userDao" %>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>订单管理</title>
    <%
        Vector<Vector<String>> goods=new userDao().goods("李白");
    %>
</head>
<body>
我的订单
<table border="1">
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
        <td><a href="nobuy.jsp">退票</a></td>
</tr>
    <%}
    %>
</table>
</body>
</html>
