package com.dao;

import java.util.List;

import com.pojo.Person;
import com.util.DButil;

public class PersonDAO {
	
	public Person  byusenamefindall(String username){
		String sql="select username,pername,persex,peraddress,perpassword,perphone from person where username = ?";
		List<Person> person=DButil.query(Person.class, sql, username) ;
		if(person.size()>0){
			person.get(0);
		}
		return null;
	}

}
