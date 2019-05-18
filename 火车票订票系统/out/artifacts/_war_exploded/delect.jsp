<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="oyz_zbl.github.adminerDao"%>
<html>
<head>
    <title>delect</title>
</head>
<body>
<%
    boolean flag=adminerDao.delete(request.getParameter("del"));
%>
<%=flag%>
</body>
</html>
