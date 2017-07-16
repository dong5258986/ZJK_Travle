package com.zjk.daoImpl;
import java.util.List;

import org.springframework.stereotype.Component;

import com.zjk.dao.BaseDao;
import com.zjk.dao.UserDao;
import com.zjk.model.User;




@Component("userDao")
public class UserDaoImpl extends BaseDao implements UserDao{

	//登录验证
	public List<User> login(String username) {
		@SuppressWarnings("unchecked")
		List<User> user=hibernateTemplate.find("from User where username='"+username+"'");
		return user;
	}

	//查看用户
	public List<User> findalluser() {
		@SuppressWarnings("unchecked")
		List<User> user=hibernateTemplate.find("from User");
		return user;
	}

	//删除用户
	public void deleteuser(User user1) {
		hibernateTemplate.delete(user1);
		
	}

	//编辑用户
	public void edituser(User user1) {
		// TODO Auto-generated method stub
		hibernateTemplate.update(user1);
	}

	//用户注册
	public void sign(User user1) {
		// TODO Auto-generated method stub
		hibernateTemplate.save(user1);
	}

	/* (non-Javadoc)
	 * @see com.zjk.dao.UserDao#finduserbyid(int)
	 */
	@Override
	public List<User> finduserbyid(int id) {
		@SuppressWarnings("unchecked")
		List<User> user=hibernateTemplate.find("from User where id='"+id+"'");
		return user;
	}

}