package code;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;
public class UserDao {
    private static final String DB_FILE = "D:\\A.txt";

    public static boolean check(String username){
        boolean flag=false;
        try {
            Scanner cin=new Scanner(new File(DB_FILE));
            while(cin.hasNextLine()){
                String [] toks=cin.nextLine().trim().split("\\s+");
                if(toks[0].equalsIgnoreCase(username)){
                    flag=true;
                    break;
                }
            }
            cin.close();
        } catch (FileNotFoundException e) {
            flag=false;
        }
        return flag;

    }
    public static boolean check(String username,String password){
        boolean flag=false;
        try {
            Scanner cin=new Scanner(new File(DB_FILE));
            while(cin.hasNextLine()){
                String [] toks=cin.nextLine().trim().split("\\s+");
                if(toks[0].equalsIgnoreCase(username)){
                    if(toks[1].equals(password)){
                        flag=true;
                    }else{
                        flag=false;
                    }
                    break;
                }
            }
            cin.close();
        } catch (FileNotFoundException e) {
            flag=false;
        }
        return flag;

    }
    public static void main(String[] args) {
//        System.out.println(check("tom","cat"));
//        System.out.println(check("admin","admin"));
//        System.out.println(check("tom"));
//        System.out.println(check("tom1"));
//        System.out.println(register("tom1","cat1"));
    }
    public static boolean register(String username, String password) {
        if(check(username))
            return false;
        try {
            PrintWriter fw = new PrintWriter(new FileWriter(DB_FILE, true));
            fw.println(String.format("%s %s",username,password));
            fw.close();
            return true;

        } catch (IOException e) {
            return false;
        }

    }
}
