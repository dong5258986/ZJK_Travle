/**
*包名：com.zjk.service
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午8:35:20
 */
package com.zjk.service;

import java.util.List;

import com.zjk.model.Strategy;

/**
*包名：com.zjk.service
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午8:35:20
 */
public interface StrategyService {

	/**  
	 * 方法功能说明：查看全部 
	 * 创建：2017年5月19日 by dong   
	 * @参数： @return      
	 * @return List<Strategy>     
	 */  
	public List<Strategy> findallstr();

	/**  
	 * 方法功能说明：分页查看  
	 * 创建：2017年6月2日 by dong   
	 * @参数： @param pageSize
	 * @参数： @param pageNow   
	 * @return List<Strategy>     
	 */  
	public List<Strategy> findstr(Integer pageSize, Integer pageNow);

	/**  
	 * 方法功能说明：增加攻略  
	 * 创建：2017年6月8日 by dong   
	 * @参数： @param a      
	 * @return void     
	 */  
	public void addstra(Strategy a);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月8日 by dong   
	 * @参数： @param stra1      
	 * @return void     
	 */  
	public void deletestra(Strategy stra1);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月13日 by dong   
	 * @参数： @param a      
	 * @return void     
	 */  
	public void editstrate(Strategy a);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月15日 by dong   
	 * @参数： @param str_id
	 * @参数： @return      
	 * @return List<Strategy>     
	 */  
	public List<Strategy> findstrabyid(int str_id);

}
