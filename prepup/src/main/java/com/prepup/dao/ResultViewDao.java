package com.prepup.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.prepup.model.User;
import com.prepup.vo.ResultViewVO;
import com.prepup.vo.UserDetailsVO;

@Repository
public class ResultViewDao{
	
	 @Autowired
	    private JdbcTemplate jdbcTemplate;
	 @Autowired
	 private DataSource dataSource;

	    
	    public int count() {
	        return jdbcTemplate
	                .queryForObject("select count(*) from resultview", Integer.class);
	    }
	    public int isValidUser(UserDetailsVO user) {
	    	String sql="select count(*) from userdetails where emailid=? and password=?";
	        return jdbcTemplate
	                .queryForObject(sql,new Object[] {user.getEmailid(),user.getPassword()},Integer.class
	                		);
	    }
	    
	    public UserDetailsVO findUser(UserDetailsVO user) {
	    	String sql="select * from resultview where emailid=? and password=?";
	        return jdbcTemplate
	                .queryForObject(sql,new Object[] {user.getStudentid(),user.getclassid(),user.getexamcode()},
	                		(rs,rowNum)->new ResultViewVO(
	                				rs.getString("studentid"),
	                				rs.getString("classid"),
	                				rs.getString("examcode"),
	                				rs.getString("mark"))
	                				
	                				);
	                		);
	    }
	    
public int createUser(ResultViewVO user) {

	    	
	    	String sql="INSERT INTO userdetails (studentid, classid, examcode, mark) VALUES (?, ?, ?, ?, ?, )";
	    	
	    	jdbcTemplate = new JdbcTemplate(dataSource);
	    	System.out.println(user);
	    	Connection con = null;
	    	PreparedStatement st = null;
	    	try {
				con = dataSource.getConnection();
				st = con.prepareStatement(sql);
				st.setString(1,user.getstudentid());
				st.setString(2,user.classid());
				st.setString(3,user.getexamcode());
				st.setString(4,user.getMark());
				return st.executeUpdate();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
	    	return 0;

	    }
public int updateUser(ResultViewVO user) {
	String sql="UPDATE userdetails SET Studentid = ?, Classid = ?, Examcode=?,Mark=?";

	jdbcTemplate = new JdbcTemplate(dataSource);
	System.out.println(user);
	Connection con = null;
	PreparedStatement st = null;
	
	try {
		con = dataSource.getConnection();
		st = con.prepareStatement(sql);
		st.setString(1,user.getstudentid());
		st.setString(2,user.classid());
		st.setString(3,user.getexamcode());
		st.setString(4,user.getMark());
		
		
		return st.executeUpdate();
	} catch (SQLException e) {
		// TODO: handle exception
		e.printStackTrace();
	}finally {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	return 0;
}
}


	    