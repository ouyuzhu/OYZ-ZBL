package oyz_zbl.github;

import com.mysql.jdbc.JDBC4PreparedStatement;
import util.JDBCUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class userDao {
        public static boolean check(String username) {
            boolean flag=false;
            Connection conn=null;
            PreparedStatement  ps=null;
            ResultSet res=null;
            try{
                conn=JDBCUtil.getConn();
                String sql="select * from user_info where username=?";
                ps=conn.prepareStatement(sql);
                ps.setString(1,username);
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
        public static boolean check(String username, String password) {
            boolean flag=false;
            Connection conn=null;
            PreparedStatement  ps=null;
            ResultSet res=null;
            try{
                conn=JDBCUtil.getConn();
                String sql="SELECT * FROM user_info WHERE username=? and password=?";
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
        public static boolean register(String username, String password,String truename,String id_card,String phone) {
            Connection conn=null;
            PreparedStatement  ps=null;
            try {
                conn=JDBCUtil.getConn();
                String sql="INSERT into user_info (username,password,truename,id_card,phone) VALUES(?,?,?,?,?)";
                ps=conn.prepareStatement(sql);
                ps.setString(1, username);
                ps.setString(2,password);
                ps.setString(3,truename);
                ps.setString(4,id_card);
                ps.setString(5,phone);
                System.out.println(((JDBC4PreparedStatement)ps).asSql());
                int row=ps.executeUpdate();
                System.out.println(row);
                return true;
            } catch (Exception e) {
                return false;
            }finally {
                JDBCUtil.close(conn, ps, null);
            }
//            if (check(username)) {
//                return false;
//            } else {
//                try {
//                    PrintWriter fw = new PrintWriter(new FileWriter("D:\\A.txt", true));
//                    fw.println(String.format("%s %s", username, password));
//                    fw.close();
//                    return true;
//                } catch (IOException var3) {
//                    return false;
//                }
        }
        public static boolean buy(){
            return true;
        }
        public static boolean nobuy(){
            return true;
        }
}
