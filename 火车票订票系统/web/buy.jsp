<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="oyz_zbl.github.userDao"%>
<%@ page import="java.util.*"%>
<html>
<head>
    <title>buy</title>
    <%
        String user=(String)session.getAttribute("user");
    Vector<String> a=(Vector<String>) session.getAttribute("res");
    %>
</head>
<body>
您要购买的票的信息是<%=a%>，请核对后下单。
<tr>
    <td><%=a.get(0)%></td>
    <td><%=a.get(1)%></td>
    <td><%=a.get(2)%></td>
    <td><%=a.get(3)%></td>
    <td><%=a.get(4)%></td>
    <td><%=a.get(5)%></td>
    <td><%=a.get(6)%></td>
</tr>
<%=userDao.buy(user,a)%>
</body>
</html>
