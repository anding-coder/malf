package com.dao;

import java.util.List;

import com.pojo.Collection;
import com.pojo.User;
import com.util.DButil;

public class UserDAO {
	
	public List<User> findAll(){
		String sql="select username,password from user1";
		List<User> user=DButil.query(User.class, sql);
		return user;
		
	}
    //µÇÂ¼
	public User login(String username,String password){
		String sql="select username,password from user1 where username=? and password=?";
		List<User> lo=DButil.query(User.class, sql, username,password);
		if(lo.size()>0){
			return lo.get(0);
		}
		return null;
	}
	//×¢²á
	public int AddbyUsername(String username,String password){
		String sql="INSERT INTO user1 ( username, password) VALUES ( ?,?)";
		int n=DButil.zsg(sql,username,password);
		return n;
	}
	//ÕÒ»ØÃÜÂë
	public User pasback(String username){
		String sql="select username from user1 where username=?";
		List<User> list=DButil.query(User.class, sql, username);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}
	// ²é¿´ÊÕ²Ø
		public List<Collection> showCollection(String username) {
			String sql = "select username , goodsid from collection where username = ?";
			List<Collection> collections = DButil.query(Collection.class, sql,username);
			return collections;

		}
		
		

}
