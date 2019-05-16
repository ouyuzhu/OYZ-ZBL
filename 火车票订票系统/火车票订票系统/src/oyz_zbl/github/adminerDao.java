package oyz_zbl.github;

import util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class adminerDao {
    public static boolean check(String username, String password) {
        boolean flag=false;
        Connection conn=null;
        PreparedStatement  ps=null;
        ResultSet res=null;
        try{
            conn=JDBCUtil.getConn();
            String sql="SELECT * FROM admin_info WHERE username=? and password=?";
            ps=conn.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,password);
            res=ps.executeQuery();
            if(res.next())flag=true;
        }
        catch (Exception e){
            flag=false;
        }
        finally {
            JDBCUtil.close(conn,ps,res);
        }
        return flag;
    }
    public void add(){
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet res=null;
        JDBCUtil.getConn();
    }
    public void update(){
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet res=null;
        JDBCUtil.getConn();
    }
    public void delete(){
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet res=null;
        JDBCUtil.getConn();
    }
}
