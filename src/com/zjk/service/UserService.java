
package com.zjk.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.zjk.model.User;


public interface UserService {

/**
 * 方法功能说明：  
 * 创建：2017年5月26日 by dong   
 * @参数： @param username
 * @参数： @return      
 * @return List<User>
 */
	public List<User> findUserByName(String username);

	/**
	 * 
	 * 方法功能说明：  
	 * 创建：2017年5月26日 by dong   
	 * @参数： @param request
	 * @参数： @return      
	 * @return boolean
	 */
	public abstract boolean addlog(HttpServletRequest request);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年5月26日 by dong   
	 * @参数： @return      
	 * @return List<User>     
	 */  
	public List<User> findalluser();

	/**  
	 * 方法功能说明：  删除用户
	 * 创建：2017年6月9日 by dong   
	 * @参数： @param user1      
	 * @return void     
	 */  
	public void deleteuser(User user1);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月13日 by dong   
	 * @参数： @param user1      
	 * @return void     
	 */  
	public void edituser(User user1);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月14日 by dong   
	 * @参数： @param user1      
	 * @return void     
	 */  
	public void sign(User user1);

	/**  
	 * 方法功能说明：根据id产看用户信息  
	 * 创建：2017年6月14日 by dong   
	 * @参数： @param id
	 * @参数： @return      
	 * @return List<User>     
	 */  
	public List<User> finduserbyid(int id);

}
