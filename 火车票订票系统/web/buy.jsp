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
您要购买的票的信息是<%=a%>，购买结果为
<%=userDao.buy(user,a)%>
<%if(userDao.buy(user,a))response.sendRedirect("goods.jsp");%>
</body>
</html>
