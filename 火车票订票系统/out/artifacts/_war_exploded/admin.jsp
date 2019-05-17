<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="oyz_zbl.github.adminerDao" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";//当前的路径
%>
<html>
<head>
    <title>欢迎管理员</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    boolean exist=adminerDao.check(request.getParameter("username"), request.getParameter("password"));
    if(exist){%>
欢迎管理员的到来接下来您可以对火车票售票系统进行更新操作<a href="update.jsp">更新操作</a><%}
else{%>
用户名:<%=request.getParameter("username")%><br />
密码:<%=request.getParameter("password")%><br />
登陆结果<%=adminerDao.check(request.getParameter("username"), request.getParameter("password"))%>
<%}
%>

</body>
</html>
