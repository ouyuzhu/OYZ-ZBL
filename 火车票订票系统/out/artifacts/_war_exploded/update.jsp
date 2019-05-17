<%@ page import="oyz_zbl.github.userDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>update</title>
</head>
<style type="text/css">

</style>
<body>
<div class="header">
    <div class="box1">当前车次信息</div>
    <div class="box2"><%userDao.selectall();%></div>
</div>
<div class="content">
    <form action="#" method="post">
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
                <td><input type="text" name="tickets_id"></td>
                <td><input type="text"name="start"></td>
                <td><input type="text"name="stop"></td>
                <td><input type="text"name="votes"></td>
                <td><input type="text"name="s_time"></td>
                <td><input type="text"name="a_time"></td>
                <td><input type="text"name="price"></td>
            </tr>
        </table>
        <input type="submit" value="添加">
    </form>
</div>
</body>
</html>
