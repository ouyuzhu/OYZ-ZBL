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
<%boolean flag=userDao.nobuy(user,order);
if(flag)response.sendRedirect("goods.jsp");%>
</body>
</html>
