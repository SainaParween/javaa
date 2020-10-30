package com.prepup.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prepup.dao.UserDetailsDao;
import com.prepup.model.User;
import com.prepup.model.UserDetails;
import com.prepup.vo.UserDetailsVO;

@Service
public class ResultViewService {
	@Autowired
	UserDetailsDao resultviewdao;
	
	public Boolean isValidUser(User user) {
		UserDetailsVO userDetailsVO= new ResultViewVO();
		userDetailsVO.setEmailid(user.getEmail());
		userDetailsVO.setPassword(user.getPassword());
		
		Boolean isSuccess=Boolean.FALSE;
		 if(resultviewdao.isValidUser(userDetailsVO)>0) {
	        isSuccess=Boolean.TRUE;
	        }        
	        else {
	        	System.out.println("login failed");
	        }
		 return isSuccess;
	}
	public UserDetailsVO findUser(User user) {
		ResultViewVO resultviewVO= new UserDetailsVO();
		resultviewVO.setEmailid(user.getEmail());
		resultviewVO.setPassword(user.getPassword());
		
		return resultviewdao.findUser(resultviewVO);
	}

	
	public Boolean createUser(ResultView resultview) {
		
		ResultViewVO resultViewVO= new resultViewVO();
	    ResultViewVO.setFname(resultview.getstudentid());
		ResultViewVO.setMname(resultview.getclassid());
		ResultViewVO.setLname(resultview.getexamcode());
		ResultViewVO.setPhnumber(resultview.getmark());
		
		//resultViewVO.setUserid(2);
		


		
		Boolean isSuccess=Boolean.FALSE;
		 if(resultviewdao.createUser(resultviewVO)>0) {
	        isSuccess=Boolean.TRUE;
	        }        
	        else {
	        	System.out.println("Result Not Found");
	        }
		 return isSuccess;

		
	}
	public Boolean updateUser(ResultView resultview) {
		
		ResultviewVO resultviewVO= new ResultViewVO();
		ResultViewVO.setstudentid(resultview.getFname());
		ResultViewVO.setclassid(resultview.getMname());
		ResultViewVO.setLname(resultview.getLname());
		resultviewVO.setPhnumber(resultview.getPhone());
		resultviewVO.setEmailid(resultview.getEmail());
		//resultviewVO.setPassword(userdetails.getPassword());
		ResultviewVO.setInstname(resultview.getmarks());
		//userDetailsVO.setUserid(2);
		//userDetailsVO.setRole(userdetails.getRole());


		
		Boolean isSuccess=Boolean.FALSE;
		 if(resultviewdao.updateUser(resultviewVO)>0) {
	        isSuccess=Boolean.TRUE;
	        }        
	        else {
	        	System.out.println("Update failed");
	        }
		 return isSuccess;

		
	}
}

