<%@ page import="oyz_zbl.github.userDao" %>
<%@ page import="oyz_zbl.github.tickets" %>
<%@ page import="java.util.LinkedList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>update</title>
    <%
        LinkedList <tickets> list=new userDao().selectall();
            if(list==null)
            {
                list=new LinkedList<>();
            }
    %>
</head>
<style type="text/css">

</style>
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
        </tr>
        <%
            for(tickets i:list){
        %>
        <tr>
            <td><%=i.getTickets_id()%></td>
            <td><%=i.getStart()%></td>
            <td><%=i.getStop()%></td>
            <td><%=i.getVotes()%></td>
            <td><%=i.getS_time()%></td>
            <td><%=i.getA_time()%></td>
            <td><%=i.getPrice()%></td>
        </tr>
        <%
            }
        %>
    </table>
</div>
<div class="content">
    <form action="add.jsp" method="post">
        <table>
            <tr>
                <td>车次</td>
                <td>始发站</td>
                <td>终点站</td>
                <td>余票数</td>
                <td>发车时间</td>
                <td>到达时间</td>
                <td>价格</td>
            </tr>
            <tr>
                <td><input type="text"name="1"></td>
                <td><input type="text"name="2"></td>
                <td><input type="text"name="3"></td>
                <td><input type="text" name="4"></td>
                <td><input type="text"name="5"></td>
                <td><input type="text"name="6"></td>
                <td><input type="text"name="7"></td>
            </tr>
        </table>
        <input type="submit" value="添加">
    </form>
</div>
</body>
</html>
