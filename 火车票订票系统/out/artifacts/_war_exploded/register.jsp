<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="oyz_zbl.github.userDao" import="oyz_zbl.github.users"%>
<%
    request.setCharacterEncoding("utf-8");
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <title>register.jsp</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    boolean exist=userDao.check(request.getParameter("username"));
    if(exist){%>
        此用户名已经被占用请手动跳转<a href="register.html">重新注册</a><%}
else{%>
        用户名:<%=request.getParameter("username")%><br/>
         密码:<%=request.getParameter("password")%><br/>
       注册结果<%=userDao.register(request.getParameter("username"), request.getParameter("password"),request.getParameter("truename"),request.getParameter("id_card"),request.getParameter("phone"))%>
<%response.sendRedirect("index.jsp");%>
<%}
%>
</body>
</html>
