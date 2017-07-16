/**
*包名：com.zjk.service
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午6:39:12
 */
package com.zjk.service;

import java.util.List;

import com.zjk.model.Commnent;
import com.zjk.model.Posts;

/**
*包名：com.zjk.service
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午6:39:12
 */
public interface PostService {

	/**  
	 * 方法功能说明：  
	 * 创建：2017年5月19日 by dong   
	 * @参数： @return      
	 * @return List<Posts>     
	 */  
	public List<Posts> findallpost();

	/**  
	 * 方法功能说明：  
	 * 创建：2017年5月25日 by dong   
	 * @参数： @param p_id
	 * @参数： @return      
	 * @return List<Posts>     
	 */  
	public List<Posts> findpByid(int p_id);

	/**  
	 * 方法功能说明： 查看全部游记 
	 * 创建：2017年5月25日 by dong   
	 * @参数： @param parseInt
	 * @参数： @return      
	 * @return List<Commnent>     
	 *//*  
	public List<Commnent> findcomByid(int p_id);
*/
	/**  
	 * 方法功能说明：查看全部评论  
	 * 创建：2017年5月26日 by dong   
	 * @参数： @return      
	 * @return List<Commnent>     
	 */  
	public List<Commnent> findallcom();

	/**  
	 * 方法功能说明：分页查看  
	 * 创建：2017年6月5日 by dong   
	 * @参数： @param pageSize
	 * @参数： @param pageNow
	 * @参数： @return      
	 * @return List<Posts>     
	 */  
	public List<Posts> viewpost(Integer pageSize, Integer pageNow);

}
