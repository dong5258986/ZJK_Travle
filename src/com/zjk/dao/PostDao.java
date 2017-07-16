/**
*包名：com.zjk.dao
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午6:44:58
 */
package com.zjk.dao;

import java.util.List;

import com.zjk.model.Commnent;
import com.zjk.model.Posts;

/**
*包名：com.zjk.dao
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午6:44:58
 */
public interface PostDao {

	/**  
	 * 方法功能说明：  
	 * 创建：2017年5月19日 by dong   
	 * @参数： @return      
	 * @return List<Posts>     
	 */  
	public List<Posts> findallpost();

	/**  
	 * 方法功能说明：  
	 * 创建：2017年5月26日 by dong   
	 * @参数： @return      
	 * @return List<Commnent>     
	 */  
	public List<Commnent> findallcom();

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月5日 by dong   
	 * @参数： @param pageSize
	 * @参数： @param pageNow
	 * @参数： @return      
	 * @return List<Posts>     
	 */  
	public List<Posts> viewpost(Integer pageSize, Integer pageNow);

}
