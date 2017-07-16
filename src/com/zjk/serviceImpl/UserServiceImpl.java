
package com.zjk.serviceImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

import com.zjk.model.User;
import com.zjk.service.BaseService;
import com.zjk.service.UserService;


@Component("userService")
public class UserServiceImpl extends BaseService implements UserService{

	
	public List<User> findUserByName(String username) {
		
		return this.userDao.login(username);
	}


	public boolean addlog(HttpServletRequest request) {
	
		return false;
	}
	
	public List<User> findalluser() {
	
		return this.userDao.findalluser();
	}


	public void deleteuser(User user1) {
			this.userDao.deleteuser(user1);
		
	}

	public void edituser(User user1) {
		// TODO Auto-generated method stub
		this.userDao.edituser(user1);
	}


	
	public void sign(User user1) {
		// TODO Auto-generated method stub
		this.userDao.sign(user1);
	}


	//根据id产看用户信息  
	public List<User> finduserbyid(int id) {
		// TODO Auto-generated method stub
		return this.userDao.finduserbyid(id);
	}



}
