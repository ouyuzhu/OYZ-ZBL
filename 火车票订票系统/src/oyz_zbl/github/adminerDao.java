package oyz_zbl.github;
import util.JDBCUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class adminerDao {
    /*管理员登录检查*/
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
    }//管理员登录检查
    /* 接下来是管理员对票的信息进行插入*/
    public static boolean add(String tickets_id,String start,String stop,int votes,String s_time,String a_time,double price){
        Connection conn=null;
        PreparedStatement  ps=null;
        ResultSet res=null;
        try{
            conn=JDBCUtil.getConn();
            String sql="INSERT into ticks_info VALUES(?,?,?,?,?,?,?)";
            ps=conn.prepareStatement(sql);
            ps=conn.prepareStatement(sql);
            ps.setString(1,tickets_id);
            ps.setString(2,start);
            ps.setString(3,stop);
            ps.setInt(4,votes);
            ps.setString(5,s_time);
            ps.setString(6,a_time);
            ps.setDouble(7,price);
            ps.executeUpdate();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        finally {
            JDBCUtil.close(conn,ps,null);
        }
    }
    /*管理员实时更新数据*/
    public static void update(){
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet res=null;
        try{
            JDBCUtil.getConn();
        }catch (Exception e){

        }
        finally {

        }
    }
    /*管理员删除车次信息*/
    public static boolean delete(String tickets_id){
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet res=null;
        try{
            conn=JDBCUtil.getConn();
            String sql="DELETE FROM ticks_info WHERE tickets_id =?";
            ps=conn.prepareStatement(sql);
            ps.setString(1,tickets_id);
            ps.executeUpdate();
            return true;
        }
        catch (Exception e){
            return false;
        }
        finally {
            JDBCUtil.close(conn,ps,null);
        }
    }
}
