package com.conne;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBC_Test {  
    //orcl为oracle数据库中的数据库名，localhost表示连接本机的oracle数据库  
   //1521为连接的端口号  
    private static String url="jdbc:oracle:thin:@localhost:1521:s53";  
    //system为登陆oracle数据库的用户名  
    private static String user="root";  
    //manager为用户名system的密码  
    private static String password="123456";  
    public static Connection conn;  
    public static PreparedStatement ps;  
    public static ResultSet rs;  
    public static Statement st ;  
    //连接数据库的方法  
    public static Connection getConnection(){  
    	Connection con = null;  //创建用于连接数据库的Connection对象     
        try {  
            //初始化驱动包  
            Class.forName("oracle.jdbc.driver.OracleDriver");  
            //根据数据库连接字符，名称，密码给conn赋值  
            conn=DriverManager.getConnection(url, user, password);  
             System.out.println("数据库连接成功");
        } catch (Exception e) {  
        	 System.out.println("数据库连接失败" + e.getMessage());    
        }  
        return conn; //返回所建立的数据库连接
    }  
    /* 查询数据库，输出符合要求的记录的情况*/    
    public static void query() {    
            
        conn = getConnection(); //同样先要获取连接，即连接到数据库     
        try {    
            String sql = "select goodsid , goodsname , goodsprice , goodspic , goodsdesc , goodscount from goods ";     // 查询数据的sql语句     
            st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量     
                
            ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集     
            System.out.println("最后的查询结果为：");    
            while (rs.next()) { // 判断是否还有下一个数据     
                    
                // 根据字段名获取相应的值     
                int goodsid = rs.getInt("goodsid");
                String goodsname = rs.getString("goodsname");    
                float goodsprice = rs.getFloat("goodsprice");    
                String goodspic = rs.getString("goodspic");    
                String goodsdesc= rs.getString("goodsdesc");    
                String goodscount = rs.getString("goodscount");    
                    
                //输出查到的记录的各个字段的值     
                System.out.println(goodsid + " " + goodsname + " " + goodsprice + " " + goodspic    
                        + " " +goodsdesc+ " " +goodscount );    
                
            }    
            conn.close();   //关闭数据库连接     
                
        } catch (SQLException e) {    
            System.out.println("查询数据失败");    
        }    
    }    
     //测试能否与oracle数据库连接成功  
     public static void main(String[] args) {  
    	 query();    //查询记录并显示     
     }  
}  
