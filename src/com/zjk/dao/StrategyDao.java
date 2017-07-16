/**
*包名：com.zjk.dao
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午8:39:15
 */
package com.zjk.dao;

import java.util.List;

import com.zjk.model.Strategy;

/**
*包名：com.zjk.dao
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午8:39:15
 */
public interface StrategyDao {

	/**  
	 * 方法功能说明：查看全部  
	 * 创建：2017年5月19日 by dong   
	 * @参数： @return      
	 * @return List<Strategy>     
	 */  
	public abstract List<Strategy> findallstr();

	/**  
	 * 方法功能说明：  分页查看
	 * 创建：2017年6月4日 by dong   
	 * @参数： @param pageSize
	 * @参数： @param pageNow
	 * @参数： @return      
	 * @return List<Strategy>     
	 */  
	public abstract List<Strategy> findstr(Integer pageSize, Integer pageNow);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月8日 by dong   
	 * @参数： @param a      
	 * @return void     
	 */  
	public abstract void addstra(Strategy a);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月9日 by dong   
	 * @参数： @param stra1      
	 * @return void     
	 */  
	public  void deletastra(Strategy stra1);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月13日 by dong   
	 * @参数： @param a      
	 * @return void     
	 */  
	public abstract void deitstrate(Strategy a);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月15日 by dong   
	 * @参数： @param str_id
	 * @参数： @return      
	 * @return List<Strategy>     
	 */  
	public abstract List<Strategy> findstrabyid(int str_id);

}
