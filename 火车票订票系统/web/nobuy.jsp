<%@ page import="java.util.Vector" %>
<%@ page import="oyz_zbl.github.userDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%Vector<String> order=(Vector<String>)session.getAttribute("order");
    String user=(String)session.getAttribute("user");%>
</head>
<body>
<%=userDao.nobuy(user,order)%>
<%if(userDao.nobuy(user,order))response.sendRedirect("goods.jsp");%>
</body>
</html>
