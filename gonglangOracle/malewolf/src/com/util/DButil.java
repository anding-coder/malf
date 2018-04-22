package com.util;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;


public class DButil {

	// 实例化连接池
	public static Vector<Connection> connectionPool = new Vector<Connection>();

	// 初始化连接池
	static {
        /*
		try {
			Class.forName("com.mysql.jdbc.Driver");
			for (int i = 0; i < 10; i++) {
				Connection connection = DriverManager.getConnection(
						"jdbc:mysql://127.0.0.1:3306/gonglang", "root", "123456");
				connectionPool.add(connection);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		*/
//		/*
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver"); 
				for (int i = 0; i < 10; i++) {
					String url="jdbc:oracle:thin:@localhost:1521:s53"; //orcl为数据库的SID 
					String user="root"; 
					String password="123456"; 
					Connection connection= DriverManager.getConnection(url,user,password);
					connectionPool.add(connection);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} 
//		*/

	}

	// 取链接
	public static Connection getConnection() {
		Connection connection = connectionPool.get(0);
		connectionPool.remove(0);
		return connection;
	}

	// 释放连接
	public static void releaseConnection(Connection connection) {
		connectionPool.add(connection);
	}

	// 增删改
	public static int zsg(String sql, Object... p) {
		Connection connection = getConnection();

		int n = 0;
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			if (p != null) {
				for (int i = 0; i < p.length; i++) {
					ps.setObject(i + 1, p[i]);
				}
			}
			n = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			releaseConnection(connection);
		}
		return n;
	}

	// 查询
	public static List query(Class c, String sql, Object... p) {
		List list = new ArrayList();
		Connection connection = getConnection();
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			if (p != null) {
				for (int i = 0; i < p.length; i++) {
					ps.setObject(i + 1, p[i]);
				}
			}
			ResultSet rs = ps.executeQuery();
			ResultSetMetaData rsmd =rs.getMetaData();
			// 得到总列数
			int count = rsmd.getColumnCount();
			while (rs.next()) {
				Object object = c.newInstance();
				for (int i = 1; i <= count; i++) {
					String fieldname = rsmd.getColumnLabel(i).toLowerCase();
					Field field = c.getDeclaredField(fieldname);
					field.setAccessible(true);
					field.set(object, rs.getObject(i));
				}
				list.add(object);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			releaseConnection(connection);
		}

		return list;
	}

	// 聚合查询
	public static int uniqueQuery(String sql, Object... p) {
		Connection connection = getConnection();
		int n = 0;
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			for (int i = 0; i < p.length; i++) {
				ps.setObject(i + 1, p[i]);
			}
			ResultSet rs = ps.executeQuery();
			rs.next();
			n = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			releaseConnection(connection);
		}
		return n;

	}

}
