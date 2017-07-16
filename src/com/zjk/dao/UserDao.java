
package com.zjk.dao;

import java.util.List;

import com.zjk.model.User;

public interface UserDao {

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月5日 by dong   
	 * @参数： @param username
	 * @参数： @return      
	 * @return List<User>     
	 */  
	public List<User> login(String username);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月6日 by dong   
	 * @参数： @return      
	 * @return List<User>     
	 */  
	public List<User> findalluser();

	/**  
	 * 方法功能说明：  
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
	 * 方法功能说明：  
	 * 创建：2017年6月14日 by dong   
	 * @参数： @param id
	 * @参数： @return      
	 * @return List<User>     
	 */  
	public List<User> finduserbyid(int id);

}
