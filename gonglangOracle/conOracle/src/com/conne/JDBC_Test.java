package com.conne;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBC_Test {  
    //orclΪoracle���ݿ��е����ݿ�����localhost��ʾ���ӱ�����oracle���ݿ�  
   //1521Ϊ���ӵĶ˿ں�  
    private static String url="jdbc:oracle:thin:@localhost:1521:s53";  
    //systemΪ��½oracle���ݿ���û���  
    private static String user="root";  
    //managerΪ�û���system������  
    private static String password="123456";  
    public static Connection conn;  
    public static PreparedStatement ps;  
    public static ResultSet rs;  
    public static Statement st ;  
    //�������ݿ�ķ���  
    public static Connection getConnection(){  
    	Connection con = null;  //���������������ݿ��Connection����     
        try {  
            //��ʼ��������  
            Class.forName("oracle.jdbc.driver.OracleDriver");  
            //�������ݿ������ַ������ƣ������conn��ֵ  
            conn=DriverManager.getConnection(url, user, password);  
             System.out.println("���ݿ����ӳɹ�");
        } catch (Exception e) {  
        	 System.out.println("���ݿ�����ʧ��" + e.getMessage());    
        }  
        return conn; //���������������ݿ�����
    }  
    /* ��ѯ���ݿ⣬�������Ҫ��ļ�¼�����*/    
    public static void query() {    
            
        conn = getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
        try {    
            String sql = "select goodsid , goodsname , goodsprice , goodspic , goodsdesc , goodscount from goods ";     // ��ѯ���ݵ�sql���     
            st = (Statement) conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����     
                
            ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����     
            System.out.println("���Ĳ�ѯ���Ϊ��");    
            while (rs.next()) { // �ж��Ƿ�����һ������     
                    
                // �����ֶ�����ȡ��Ӧ��ֵ     
                int goodsid = rs.getInt("goodsid");
                String goodsname = rs.getString("goodsname");    
                float goodsprice = rs.getFloat("goodsprice");    
                String goodspic = rs.getString("goodspic");    
                String goodsdesc= rs.getString("goodsdesc");    
                String goodscount = rs.getString("goodscount");    
                    
                //����鵽�ļ�¼�ĸ����ֶε�ֵ     
                System.out.println(goodsid + " " + goodsname + " " + goodsprice + " " + goodspic    
                        + " " +goodsdesc+ " " +goodscount );    
                
            }    
            conn.close();   //�ر����ݿ�����     
                
        } catch (SQLException e) {    
            System.out.println("��ѯ����ʧ��");    
        }    
    }    
     //�����ܷ���oracle���ݿ����ӳɹ�  
     public static void main(String[] args) {  
    	 query();    //��ѯ��¼����ʾ     
     }  
}  
