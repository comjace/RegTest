package javademo;

import java.sql.*;

public class Mycon{

private static Connection con = null;
 

public static Connection getcon() throws Exception
{ //
try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/runoob?useUnicode=true&characterEncoding=utf-8&useSSL=true","root","cj1234");
        
    } catch(Exception sqlex1) {
        sqlex1.printStackTrace();
    } return con;
}

public static void close()
{//
        if(con!=null){
            try{
            	con.close();
            	
            }catch(SQLException sqlex2){
                sqlex2.printStackTrace();
            }
        }
} 






    
}
