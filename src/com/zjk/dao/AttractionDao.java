/**
*����com.zjk.dao
 *���ܣ�TODO 
*���ߣ���׳
*���ڣ�2017-5-10����2:18:07
 */
package com.zjk.dao;

import java.util.List;
import com.zjk.model.Attractions;


public interface AttractionDao  {

	/**  
	 * 
	 * 方法功能说明： 分页查看景点信息 
	 * 创建：2017年5月26日 by dong   
	 * @参数： @return      
	 * @param pageNow 
	 * @param pageSize 
	 * @return List<Attractions>
	 */
	public abstract List<Attractions> getAtts(Integer pageSize, Integer pageNow);

	/**  
	 * 
	 * 方法功能说明：查看景点数量  
	 * 创建：2017年5月26日 by dong   
	 * @参数： @return      
	 * @return List<Attractions>
	 */
	public abstract List<Attractions> findallatts();

	/**  
	 * 
	 * 方法功能说明：  
	 * 创建：2017年5月26日 by dong   
	 * @参数：       
	 * @param a 
	 * @return void
	 */
	public abstract void addatt(Attractions a);

	/**  
	 * 
	 * 方法功能说明： 删除景点 
	 * 创建：2017年5月26日 by dong   
	 * @参数： @param id      
	 * @return void
	 */
	public abstract void deleteatt(Attractions att);

	
	public abstract List<Attractions> findabyid(int id);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月13日 by dong   
	 * @参数： @param a      
	 * @return void     
	 */  
	public abstract void editatt(Attractions a);

}
