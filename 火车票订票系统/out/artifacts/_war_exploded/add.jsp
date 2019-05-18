<%@ page import="oyz_zbl.github.adminerDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";//当前的路径
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>add</title>
</head>
<body>
<%
    boolean flag=adminerDao.add(request.getParameter("1"),request.getParameter("2"),request.getParameter("3"),
             Integer.parseInt(request.getParameter("4")),request.getParameter("5"),request.getParameter("6"),
             Double.parseDouble(request.getParameter("7")));
%>
<%=flag%>
</body>
</html>
