package util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtil {
    public static String url="jdbc:mysql://localhost:3306/tickets?useUnicode=true&characterEncoding=UTF-8&&useSSL=false";//可以是http上的远程数据库
    public static String user="root";
    public static String pwd="root";
    public static String driverName="com.mysql.jdbc.Driver";
    static {
        try {
            Class.forName(JDBCUtil.driverName);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }//放到静态代码块里的只会执行一次
    public static Connection getConn(){//每一次都要加载驱动
        try {
            return DriverManager.getConnection(JDBCUtil.url,JDBCUtil.user,JDBCUtil.pwd);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }//获得connection连接
    public static void close(Connection conn,Statement st,ResultSet res){
        //释放资源
        if(res!=null)
            try {
                res.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        if(st!=null)
            try {
                st.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        if(conn!=null)
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
    }//关闭资源
}